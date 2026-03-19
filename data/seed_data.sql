INSERT INTO Supplier VALUES 
(1, 'Global Foods Distribution', 'Michael Turner', '3145551001', 'm.turner@globalfoods.com'),
(3, 'Midwest Dairy Supply', 'James Carter', '5735551003', 'j.carter@midwestdairy.com'),
(4, 'Heartland Beverage Co.', 'Samantha Reed', '8165551004', 's.reed@heartlandbev.com'),
(5, 'Prairie Grain Mills', 'Daniel Brooks', '4175551005', 'd.brooks@prairiegrain.com'),
(6, 'River Valley Meats', 'Anthony Collins', '6605551006', 'a.collins@rivervalleymeats.com'),
(7, 'Ozark Organic Farms', 'Emily Watson', '3145551007', 'e.watson@ozarkorganic.com'),
(8, 'Summit Frozen Foods', 'Robert Hayes', '5735551008', 'r.hayes@summitfrozen.com'),
(9, 'Gateway Packaging Inc.', 'Olivia Bennett', '8165551009', 'o.bennett@gatewaypack.com'),
(10, 'Central Wholesale Supply', 'David Ramirez', '4175551010', 'd.ramirez@centralwholesale.com');

-- Locations
INSERT INTO Location VALUES
(1, 'Main Warehouse', '1450 Industrial Drive, St. Louis, MO', 'Missouri'),
(2, 'Downtown Retail Store', '220 Market Street, St. Louis, MO', 'Missouri'),
(3, 'West County Branch', '1020 Clarkson Rd, Chesterfield, MO', 'Missouri'),
(4, 'South City Outlet', '4500 Chippewa St, St. Louis, MO', 'Missouri'),
(5, 'North Distribution Center', '8900 Dunn Rd, Hazelwood, MO', 'Missouri'),
(6, 'Columbia Store', '310 Broadway, Columbia, MO', 'Missouri'),
(7, 'Springfield Store', '1555 Sunshine St, Springfield, MO', 'Missouri'),
(8, 'Kansas City Depot', '2400 Main St, Kansas City, MO', 'Missouri'),
(9, 'Jefferson City Outlet', '700 Missouri Blvd, Jefferson City, MO', 'Missouri'),
(10, 'St. Charles Branch', '1800 First Capitol Dr, St. Charles, MO', 'Missouri');

-- Product
INSERT INTO Product (ProductID, SKU, ProductName, UnitPrice, ExpirationDate, Category)
VALUES 
(1, 'MILK-1L-001', 'Whole Milk 1L', 2.99, '2026-04-01', 'Dairy');

INSERT INTO Product VALUES
(2, 'BREAD-WHT-001', 'Whole Wheat Bread', 3.49, '2026-03-15', 'Bakery', CURRENT_TIMESTAMP),
(3, 'APPLE-RED-001', 'Red Apples (1 lb)', 1.99, '2026-03-20', 'Produce', CURRENT_TIMESTAMP),
(4, 'EGGS-12-001', 'Free Range Eggs (12ct)', 4.25, '2026-04-10', 'Dairy', CURRENT_TIMESTAMP),
(5, 'CHICK-BRST-001', 'Chicken Breast (1 lb)', 5.99, '2026-03-28', 'Meat', CURRENT_TIMESTAMP),
(6, 'RICE-5LB-001', 'Long Grain Rice 5lb', 6.49, '2027-01-01', 'Grains', CURRENT_TIMESTAMP),
(7, 'JUICE-ORG-001', 'Orange Juice 1L', 3.79, '2026-04-05', 'Beverages', CURRENT_TIMESTAMP),
(8, 'YOG-STR-001', 'Strawberry Yogurt 6oz', 1.29, '2026-03-18', 'Dairy', CURRENT_TIMESTAMP),
(9, 'FROZ-PIZ-001', 'Frozen Pepperoni Pizza', 7.99, '2026-08-01', 'Frozen', CURRENT_TIMESTAMP),
(10, 'FLOUR-2KG-001', 'All Purpose Flour 2kg', 4.89, '2027-06-01', 'Baking', CURRENT_TIMESTAMP);
