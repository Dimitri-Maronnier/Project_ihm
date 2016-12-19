$(function(){
    $("#includeHeader").load("header.php");
});


$(document).ready(function(){ 
    $("#myTab a").click(function(e){
    	e.preventDefault();
    	$(this).tab('show');
    });
});
