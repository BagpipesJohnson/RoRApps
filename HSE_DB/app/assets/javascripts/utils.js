//<script> loadRegions("regions") </script>
function loadRegions(divId){
	var regionsAPI = "/regions.json";
  $.getJSON( regionsAPI, {
  })
    .done(function( data ) {
console.log(data)
      $.each( data, function(i, value) {
       $("#" + divId).append( "<p>".concat(value.description).concat("<\p>"));
      });
    });
}