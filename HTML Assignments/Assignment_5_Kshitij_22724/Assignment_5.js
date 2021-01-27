window.onload = function(){
    var canvas = document.getElementById('myCanvas');
    if(canvas.getContext){
        var cxt = canvas.getContext('2d');
        cxt.fillStyle = "#FFFF00";
        cxt.fill();
        cxt.stroke();

        cxt.beginPath();
        cxt.arc(90,90,95,0,Math.PI*2,true);
        cxt.closePath();
        
        //face smiley
        cxt.beginPath();
        cxt.arc(90,90,90,0,Math.PI*2,true);
   
        cxt.closePath();
        cxt.fill();

        //smile
        cxt.moveTo(110,75);
        cxt.beginPath();
        cxt.arc(90,120,30,0.15*Math.PI,0.85*Math.PI,false);
      
        cxt.stroke();

        cxt.moveTo(50,65);
        cxt.beginPath();
        cxt.arc(40,65,15,0,Math.PI*2,true);
        cxt.closePath();
        cxt.fillStyle ="#2a2a34";
        cxt.fill();

        cxt.moveTo(95,65);
        cxt.beginPath();
        cxt.arc(145,65,15,0,Math.PI*2,true);
        cxt.closePath();
        cxt.fillStyle ="#2a2a34";
        cxt.fill();
    }
}