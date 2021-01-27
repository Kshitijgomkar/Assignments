window.onload = function(){ var rainbow = document.getElementById("rainbow");
var draw = rainbow.getContext("2d");

draw.moveTo(100,250);
draw.lineTo(200,250);
draw.moveTo(400,250)
draw.lineTo(500,250)

draw.beginPath();
draw.arc(300,250,250,0,Math.PI,true);
draw.fillStyle="red";
draw.fill();
draw.closePath();

draw.beginPath();
draw.arc(300,250,220,0,Math.PI,true);
draw.fillStyle="orange";
draw.fill();
draw.closePath();

draw.beginPath();
draw.arc(300,250,190,0,Math.PI,true);
draw.fillStyle="yellow";
draw.fill();
draw.closePath();

draw.beginPath();
draw.arc(300,250,160,0,Math.PI,true);
draw.fillStyle="green";
draw.fill();
draw.closePath();

draw.beginPath();
draw.arc(300,250,130,0,Math.PI,true);
draw.fillStyle="blue";
draw.fill();
draw.closePath();

draw.beginPath();
draw.arc(300,250,100,0,Math.PI,true);
draw.fillStyle="indigo";
draw.fill();
draw.closePath();

draw.beginPath();
draw.arc(300,250,70,0,Math.PI,true);
draw.fillStyle="violet";
draw.fill();
draw.closePath();

draw.beginPath();
draw.arc(300,250,40,0,Math.PI,true);
draw.fillStyle="white";
draw.fill();
draw.closePath();



  var images = document.getElementById("images");
  var draw = images.getContext("2d");

  var img = new Image();   
  img.src = "random_img_1.jpg";
  draw.moveTo(200,250);
  draw.beginPath();
  draw.drawImage(img, 100, 100);
  draw.fill();
  draw.closePath();
  


  var img2 = new Image();   
  img2.src = "random_img_2.jpg";
  draw.drawImage(img2, 200, 100);

  var img3 = new Image();   
  img3.src = "random_img_3.jpg";
  draw.drawImage(img3, 300, 100);

}
