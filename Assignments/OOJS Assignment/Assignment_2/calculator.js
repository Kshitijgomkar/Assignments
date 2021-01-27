function dis(val){
    document.getElementById("result").value+=val;
}
//function for evaluation
function solve(){
    let x = document.getElementById("result").value
    let y = eval(x)
    document.getElementById("result").value = y
}

//function for clearing the display
function clr(){
    document.getElementById("result").value = ""
}

//function to clear single value at a time
function bckspc(){
    var value = document.getElementById("result").value;
    document.getElementById("result").value = value.substr(0, value.length - 1);
}
// function to do square root
function mySqrt(){
    var x = document.getElementById("result").value;
    document.getElementById("result").value = Math.sqrt(x);
}
// function to do square 
function mySqaure(){
    var x = document.getElementById("result").value;
    document.getElementById("result").value = x*x;
}

// function to do square Cube
function myCube(){
    var x = document.getElementById("result").value;
    document.getElementById("result").value = x*x*x;
}

// function to toggle between scientific and normal calculator
function myScientific() {

    var l = document.getElementById("myDiv");
    
    if (l.style.display === "none") {
      l.style.display = "inline-block";
    } else {
      l.style.display = "none";
    }
  }

