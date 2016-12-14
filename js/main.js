$(document).ready(function(){
    /* Pour que nos menus se déroulent lorsque la souris passe dessus */
    if (window.innerWidth > 767){
        $('.dropdown').hover(function(){
            $('.dropdown-toggle', this).trigger('click');
        });
    }


	$("#test").animate({

            height: '+=150px',
            width: '+=150px'
        }).delay( 800 ).animate({

            height: '-=150px',
            width: '-=150px'
        });
});

function articleClick(){
	 window.location.href = "http://www.google.com";
}