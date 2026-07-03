import os
import sys
import pandas as pd


if len(sys.argv) != 2:
    print("Please provide the input csv name as an argument.")
    sys.exit(1)

input_path = sys.argv[1]
output_dir = "OUTPUT"
os.makedirs(output_dir, exist_ok=True)

lot = pd.read_csv(input_path)
lot = lot.ffill()
output_path = os.path.join(output_dir, "lot.csv")
lot.to_csv(output_path, index=False)
print(f"Saved output to {output_path}")




