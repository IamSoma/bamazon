var mysql = require('mysql');
var inquirer = require('inquirer');

var db = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'root',
  database : 'bamazon'
});

var products = []

db.connect(function(err) {
  if (err) throw err;
  db.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
		for(i = 0; i < res.length; i++) {
			console.log('ID: ' + res[i].item_id + ' | $' + res[i].price + ' ' + res[i].product_name);
			products.push(res[i]);
		};
	questions();
  });
});


function questions(){
	inquirer.prompt([
	{
		name: 'productID',
		message: 'What is the ID of the product you want?'
	},
	{
		name: 'units',
		message: 'How many units would you like?'	
	}

]).then(function(answer) {
			var newID = parseInt(answer.id);
			var idIndex = newID - 1;
			var chosenUnits = parseInt(answer.units);
			if(chosenUnits < products[idIndex].stock_quantity){
				connection.query('UPDATE products SET stock_quantity=stock_quantity-' + chosenUnits + ' WHERE item_id=' + chosenId + ';')
				connection.query('UPDATE products SET product_sales=' + products[idIndex].price * chosenUnits + ' WHERE item_id=' + chosenId + ';')
				console.log('Total price: $' + products[idIndex].price * chosenUnits);
			} else {
				console.log('Sorry, we ran out :(');
			}
		});


}
