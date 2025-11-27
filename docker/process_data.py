import pandas as pd
from pathlib import Path

def main():
    print("🔹 Loading Excel file...")

    INPUT = "/data/input.xlsx"
    OUTPUT = "/output/cleaned_shipments.csv"

    # Read Excel
    df = pd.read_excel(INPUT, sheet_name="Sheet1", engine="openpyxl")

    print("🔹 Cleaning data...")
    # Sample cleaning (modify based on your logic)
    df = df.drop_duplicates()
    df.columns = [c.strip().replace(" ", "_") for c in df.columns]

    print("🔹 Saving cleaned CSV...")
    Path("/output").mkdir(parents=True, exist_ok=True)
    df.to_csv(OUTPUT, index=False)

    print(f"✅ Saved cleaned file to: {OUTPUT}")

if __name__ == "__main__":
    main()
