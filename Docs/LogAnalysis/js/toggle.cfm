<script>
function toggle(toggleId, e)
{
	if (!e) {
		e = window.event;
	}
	if (!document.getElementById) {
		return false;
	}
	var body = document.getElementById(toggleId);
	if (!body) {
		return false;
	}	
	var im = toggleId + "_toggle";
	if (body.style.display == 'none') {
		body.style.display = 'block';
		if (document.images[im]) {
			document.images[im].src = "close.png";
		}
	} else {
		body.style.display = 'none';
		if (document.images[im]) {
			document.images[im].src = "open.png";
		}
	}
	if (e) {
		// Stop the event from propagating, which
		// would cause the regular HREF link to
		// be followed, ruining our hard work.
		e.cancelBubble = true;
		if (e.stopPropagation) {
			e.stopPropagation();
		}
	}
}

</script>