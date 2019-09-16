var mysql = require("mysql");
var inquirer = require("inquirer");

var connection = mysql.createConnection({
    host:"localhost",
    port:5000,
    user: "root",
    password:"Cashmoney55",
    database:"bamazon_db"
})

connection.connect(function(err){
    if(err) throw err;
    console.log("connection succesful");
    table();
})

var table = function(){
    connection.query("SELECT * FROM swag", function(err,res){
        for(var i = 0; i<res.length; i++){
            console.log(res[i].itemid+" || "+res[i].productname+" || "+
                res[i].departmentname+" || "+res[i].price+" || "+res[i].
                    stockquantity+"\n");
        }
    })
}