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

INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('1', 'Fish Oil', 'Supplements', '9.99', '50');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('2', 'Vitamin D3', 'Supplements', '12.99', '50');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('3', 'Soccer Ball', 'Sports', '14.99', '15');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('4', 'Office Chair', 'Office Supplies', '199.99', '12');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('5', 'Scissors', 'Office Supplies', '4.99', '10');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('6', 'Blueberry Muffin', 'Bakery', '3.99', '20');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('7', 'Cheesecake', 'Bakery', '11.99', '7');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('8', 'Pillow', 'Linen', '8.99', '15');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('9', 'Bed Sheets', 'Linen', '19.99', '13');
INSERT INTO `Bamazon`.`Products` (`ItemID`, `ProductName`, `DepartmentName`, `Price`, `StockQuantity`) VALUES ('10', 'Wireless Mouse', 'Computers', '9.99', '23');

SELECT * from Products;
