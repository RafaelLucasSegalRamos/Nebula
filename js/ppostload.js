setInterval(myMethod, 500);

function myMethod( )
{
    $(function(){
            $.ajax({
                url: "../php/ppostload.php",
                success: function(result){
                    $(".corpo").html(result);
                },
                error: function(){
                    $(".corpo").html("Error");
                }
        });
    }); 
}