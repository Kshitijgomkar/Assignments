
   $(document).ready(function(){
    $.ajax({
        url: "https://jsonplaceholder.typicode.com/photos",
        method: "GET",
        success:(suc)=>{
            suc.forEach(element => {
                $('#row').append("<div class='contentImg'><img src='"+element.thumbnailUrl+"'/><hr><div class='ele title'>"+element.title.substring(0,20)+"</div><span class='ele'>"+element.id+"</span><hr><span class='ele'><button >Add to Cart</button></span>")                
            });
        }
    })
})