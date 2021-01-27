function display(){
    var index = 1;
    for(index = 1;index<=100;index++){
        document.write(index+" ");
        if(index%10 == 0){
            document.write("<br>");
        }

    }
    document.write("<br>End value of index is "+index);
}