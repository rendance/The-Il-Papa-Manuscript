function HighlightSelectedAnchor() {
	var hash = window.location.hash.substring(1);
	if (hash.length > 0) {
	    var id = document.getElementById(hash);
	    if (id) {
	        id.className += " highlight";
	    }
	}
}
window.onload = HighlightSelectedAnchor
