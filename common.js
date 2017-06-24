/**
 * Highlight the given element
 * @param eltId The id of the element to highlight
 */
function highlightElement (eltId) {
	var id = document.getElementById(eltId);
	if (id) {
	    id.className += " highlight";
	}
}

/**
 * Get the named parameters from a url (from after the ?)
 * @param name The name of the parameter to find
 * @param url The URL to search (or, if the current URL is desired, leave this off)
 */
function getNamedParameters (name, url) {
	if (!url) url = window.location.href
	name = name.replace(/[\[\]]/g, "\\$&");
	var regex = new RegExp("[?&]"+name+"(=([^&#]*)|&|#|$)");
	var results = regex.exec(url);
	if (!results) return null;
	if (!results[2]) return '';
	return decodeURIComponent(results[2].replace(/\+/g, " "));
}

/**
 * Highlight the item with the anchor to which our current loaded page was 
 * specifically directed (via the # in the URL)
 */
function highlightAnchorElement() {
	var fullHash = window.location.hash.substring(1);
	if (fullHash) {
		var hash = fullHash.split("?")[0]
		if (!hash) hash = fullHash
		if (hash.length > 0) {
			highlightElement(hash)
		}
	}
}

/**
 * Highlight all items listed in the 'hilite' parameter in the current url
 * @param tag The tag under which elements are listed
 */
function highlightListedElements (tag) {
	var eltList = getNamedParameters(tag);
	if (eltList) {
		var elts = eltList.split(",");
		for (elt of elts) {
			if (elt) {
				highlightElement(elt)
			}
		}
	}
}

function AllLoadFunctions () {
	highlightAnchorElement();
	highlightListedElements("hilite");
}

window.onload = AllLoadFunctions
