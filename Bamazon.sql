DROP DATABASE IF EXISTS `Bamazon`;
	
CREATE DATABASE Bamazon;
USE Bamazon;

CREATE TABLE `Products` (
  `ItemID` int(12) AUTO_INCREMENT NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `DepartmentName` varchar(40) NOT NULL,
  `Price` decimal(5,2) NOT NULL,
  `StockQuantity` int(5) NOT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('1', 'Multivitamins', 'Supplements', '14.99', '50');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('2', 'B-Vitamins', 'Supplements', '12.99', '50');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('3', 'Basketball', 'Sports', '14.99', '15');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('4', 'Computer Stand', 'Office Supplies', '199.99', '12');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('5', 'Stapler', 'Office Supplies', '4.99', '10');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('6', 'Blueberry Muffins', 'Bakery', '3.99', '20');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('7', 'Apple Pie', 'Bakery', '11.99', '7');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('8', 'Pillow', 'Linen', '11.99', '15');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('9', 'Bed Sheets', 'Linen', '21.99', '13');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('10', 'Wireless Mouse', 'Computers', '17.99', '23');

SELECT * from Products;
