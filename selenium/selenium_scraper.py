# selenium_scrape_wiki.py
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
import pandas as pd
import time
import os

def scrape_wikipedia_population_table(output_path="output/scraped_table.csv"):
    url = "https://en.wikipedia.org/wiki/List_of_countries_and_dependencies_by_population"

    # Create output folder
    os.makedirs(os.path.dirname(output_path), exist_ok=True)

    # Setup Chrome options (headless optional)
    options = webdriver.ChromeOptions()
    # Uncomment the next two lines to run headless (no browser window)
    # options.add_argument("--headless=new")
    # options.add_argument("--disable-gpu")

    # Optional: set a user-agent (helps when websites check headers)
    options.add_argument("user-agent=Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
                         "AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36")

    driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=options)

    try:
        driver.get(url)
        wait = WebDriverWait(driver, 15)

        # Wait for the first table with class 'wikitable' to appear
        table = wait.until(EC.presence_of_element_located((By.CSS_SELECTOR, "table.wikitable")))

        # Extract headers
        header_elems = table.find_elements(By.CSS_SELECTOR, "thead tr th")
        if not header_elems:
            # Sometimes header is in the first row of tbody
            header_elems = table.find_elements(By.CSS_SELECTOR, "tr th")
        headers = [h.text.strip() for h in header_elems if h.text.strip()]

        # Extract rows
        rows = []
        for tr in table.find_elements(By.CSS_SELECTOR, "tbody > tr"):
            cells = tr.find_elements(By.CSS_SELECTOR, "td")
            if not cells:
                # skip header or empty rows
                continue
            row = [c.text.strip() for c in cells]
            rows.append(row)

        # Create DataFrame. If table rows have more cells than headers, generate generic column names
        if headers and len(headers) == len(rows[0]):
            df = pd.DataFrame(rows, columns=headers)
        else:
            # Use generic names if mismatch
            max_cols = max(len(r) for r in rows) if rows else 0
            cols = [f"col_{i}" for i in range(max_cols)]
            df = pd.DataFrame(rows, columns=cols)

        # Save to CSV
        df.to_csv(output_path, index=False)
        print(f"Saved scraped table to: {output_path}")
    finally:
        driver.quit()

if __name__ == "__main__":
    scrape_wikipedia_population_table("output/scraped_wikipedia_population.csv")
