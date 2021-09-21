

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
$(document).ready(function(){

	
}); 



document.onkeydown = function() {
	switch (event.keyCode) {
	case 116: //F5 button
		event.returnValue = false;
		event.keyCode = 0;
		return false;
	case 82: //R button
		if (event.ctrlKey) {
			event.returnValue = false;
			event.keyCode = 0;
			return false;
		}
	}
}

function my_onkeydown_handler(event) {
	switch (event.keyCode) {
	case 116: // 'F5'
		event.preventDefault();
		event.keyCode = 0;
		window.status = "F5 disabled";
		break;
	}
}
document.addEventListener("keydown", my_onkeydown_handler);
</script>
<script type="text/javascript">
	
	$(document).ready(function(){
		window.addEventListener("contextmenu", e => e.preventDefault());
		
	}); 

		
</script>

<script>
	document.oncontextmenu = document.body.oncontextmenu = function() {
		return false;
	}
</script>

<script>
    function preventBack() {
        window.history.forward();
    }

    setTimeout("preventBack()", 0);
    window.onunload = function() {
        null
    };
</script>
<script defer src="https://use.fontawesome.com/releases/v5.0.6/js/all.js"></script>