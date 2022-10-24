var flag = 0;
var sum = 0;
function add(){
    input_name = document.getElementById("name").value;
    input_price = document.getElementById("price").value;
    form = document.getElementById("add");
    form.reset();
    if(input_name ===""){
        alert("Название товара не введено");
    }
    else if(input_price <= 0){
        alert("Цена товара некорректна");
    }
    else{
        var table = document.getElementById("main_table");
        var row = table.insertRow(-1);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        cell2.id ="prices";
        cell1.innerHTML = input_name;
        cell2.innerHTML = input_price;
        row.onclick = function(){
            var order_table = document.getElementById("order_table");
            var order_row = order_table.insertRow(-1);
            var cell1 = order_row.insertCell(0);
            var cell2 = order_row.insertCell(1);
            cell1.innerHTML = row.cells[0].textContent;
            cell2.innerHTML = row.cells[1].textContent;
            sum += parseFloat(row.cells[1].textContent);
            var text = document.getElementById("result_sum");
            text.innerHTML = "";
            alert("Был добавлен товар: " + row.cells[0].textContent);
        }
    }
}
function Sum(){
    console.log(sum);
    var text = document.getElementById("result_sum");
    text.innerHTML = "Стоимость заказа " + sum + ".";
}