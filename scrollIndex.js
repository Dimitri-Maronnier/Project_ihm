$(document).ready(function(){
	$("#test").animate({
            left: '250px',
            height: '+=150px',
            width: '+=150px'
        }).delay( 800 ).animate({
            left: '250px',
            height: '-=150px',
            width: '-=150px'
        });
});

function articleClick(){
	 window.location.href = "http://www.google.com";
}