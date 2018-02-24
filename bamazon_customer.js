var inquirer = require("inquirer");
var mysql = require("mysql");
var console_table = require("console.table");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "",
  database: "Bamazon"
})

console.log(" ");
connection.connect(function(err) {
  if (err) throw err;
  console.log("\nConnected to Bamazon on Port 3306\n");
// Display a table with the store's available items
  console.log("\nOur products available for purchase are: \n");
  var query = 'SELECT ItemID, ProductName, Price FROM Bamazon.Products';
  connection.query(query, function(err, result) {
      console.table(result);
    });
//  runInquirer();
});

// Begin process for customer's item request and purchase
// Set up variables for call to Inquirer and processing the order
var userInputs = [
  {
    name: 'item',
    type: 'input',
    message: 'Please enter your product ID to purchase:'
  },
  {
    name: 'quantity',
    type: 'input',
    message: 'Please enter your desired quantity to purchase:'
  }
  ];

// Call Inquirer for customer's purchase of the ItemID and purchase quantity.
var runInquirer = function() {

    inquirer.prompt(userInputs).then(function(answer) {
    var query = "SELECT ItemID, ProductName, Price, StockQuantity FROM Bamazon.Products WHERE ?";
    connection.query(query, {ItemID:answer.item}, function(err, result) {

//    console.log("\nconnection.query returns the following 'result' object: ");
//    console.log(result);

      if ((answer.item === 0) || (answer.quantity === 0) || (result.length === 0)) {
        console.log("\nInvalid entry, please try again.");
      }

// Display results of the order to the console
      if (result[0].StockQuantity >= answer.quantity) {
        var updatedQuantity = result[0].StockQuantity - answer.quantity;
        console.log("\nYour quantity is:  " + answer.quantity);
        console.log("Your unit price is: $" + result[0].Price);
        console.log("Your total cost of buying " + answer.quantity + " units of " + 
          result[0].ProductName + " is: $" + (answer.quantity * result[0].Price).toFixed(2) +"\n");
//      console.log("Remaining inventory of " + result[0].ProductName + " is: " + updatedQuantity);

// Update the Bamazon database / Product table with the revised quantity of the item ordered
        connection.query("UPDATE Bamazon.Products SET ? WHERE ?", 
          [{
            StockQuantity: updatedQuantity
          },
          {
            ItemID: answer.item
          }], function(err, result) {
//        console.log("Inventory is updated.");
            });
         } 

// If the StockQuantity is less than the customer's desired order quantity, return an error
      else {
        console.log("\nSorry, we do not have that many in stock now.\n");
        }

// Key function call to Inquirer here, to ask customer to order an item
      console.log(" ");
      runInquirer();
    })
  })
}

runInquirer();

