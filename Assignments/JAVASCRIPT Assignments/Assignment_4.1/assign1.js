var i = 0;
var array = Array();


function addList(){
  array[i] = document.getElementById("list1").value;
    i++;  
}

function displayList(){
  var str = "<br/>";
  for(var x = 0;x<array.length;x++){
    str = str + array[x]  + "<br/>";
  }
    document.getElementById("output").innerHTML = str;
}

