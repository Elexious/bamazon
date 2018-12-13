var mysql = require("mysql");
var inquirer = require("inquierer");

var connection = mysql.createConnection({
    host: "localhost",
    port: 2020,
    user: "root",
    password: "root",
    database: "bamazon"
});

connection.connect(function(err) {
    if (err) throw err;
    selectProduct();

});

function selectProduct() {
    inquierer
    .prompt({
        name: "buy",
        type: "rawlist",
        message: "What product would you like to buy?"
        choices: function() {
            var items = []
            for (var i = 0; i < SpeechRecognitionResultList.length; i++) {
                items.push(choice)
                console.table("id: " + items[i].id + " | " + items.name + "Price: $" + items[i].price)
            }
            console.log("-----------")
            return items
        },
    })
    .then(function(answer) {
        var chosen
        for (var x = 0; x < SpeechRecognitionResultList.length; x+++){
            if (results[x].name === answer.choice) {
                chosen = results[x];
            }
        }
        if(answer.amount > chosen.stock_quantity){
            console.log("Insufficient stock")

        }
        else {
            var subStock = (chosen.stock_quantity - answer.amount)
        }
    })
}