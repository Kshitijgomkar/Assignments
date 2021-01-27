function stringObject(charac){

    var charac = document.getElementById("charac").value;
    var companyName = 'Cybage Software Pvt Ltd '; 

    var n = companyName.search(charac);

    if (n == -1){
        document.write("Character Not found<br>");
    }else{document.write("Character "+ charac +" found at position "+ (n+1));
    }

    var newStr  = 'Cybage Software Pvt Ltd is popularly known as Cybage Software'
    document.write("<br>"+newStr+"<br>");
    var res = newStr.slice(0,23)
    document.write("<br>"+res+"<br>");
    document.write("<br>"+res.toUpperCase()+"<br>");
    
}