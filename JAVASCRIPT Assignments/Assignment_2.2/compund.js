function Calculate(principal,roi,time) {

    var principal = document.getElementById("principalVal").value;
    var roi = document.getElementById("roiVal").value;
    var time = document.getElementById("timeVal").value;

     var calc = (principal * (1+(roi/100)^time))-principal;
   document.write(calc);
  

}