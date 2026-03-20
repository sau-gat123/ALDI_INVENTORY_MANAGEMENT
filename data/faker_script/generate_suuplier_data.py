import csv
from faker import Faker

# Initialize Faker
fake = Faker()

# Number of suppliers to generate
NUM_SUPPLIERS = 1600  


output_file = "/Users/saugatmainali/aldi/data/Supplier.csv"
# Create and write CSV
with open(output_file, mode="w", newline="") as f:
    writer = csv.writer(f)
    
    # Write header
    writer.writerow(["SupplierID", "SupplierName", "ContactName", "Phone", "Email"])
    
    # Write fake supplier data
    for i in range(1, NUM_SUPPLIERS + 1):
        writer.writerow([
            i,
            fake.company(),
            fake.name(),
            fake.phone_number(), 
            fake.unique.email() 
        ])

print(f"✅ Generated {NUM_SUPPLIERS} suppliers in {output_file}")
