$(function () {
	$('.change-layout').click(function() {
		var url = "";
		
		$( "#menu, #content" ).toggleClass( "container" );
		
		if ($( "#menu, #content" ).hasClass( "container" )) {
			url = '?sessionLayout=container';
		} else {
			url = '?sessionLayout=other';
		}

		$.ajax({
			url : url,
			data : {},
			success : function(responseText) {
				console.log(url);
			}
		});
	});
});