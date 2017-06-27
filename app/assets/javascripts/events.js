$(document).ready(function() {
  loadWeather('',''); //@params location, woeid
    var j = jQuery.noConflict();  
    var clock = $('.clock').FlipClock({         
      clockFace: 'TwelveHourClock'    
     });
});


function loadWeather(location, woeid) {
  $.simpleWeather({
    location: location,
    woeid: 1154781,
    unit: 'c',
    success: function(weather) {
      html = '<h2><i class="icon-'+weather.code+'"></i> '+weather.temp+'&deg;'+weather.units.temp+'</h2>';
      // html += '<ul><li>'+weather.city+', '+weather.country+'</li>';
      // html += '<li class="currently">'+weather.currently+'</li>';


      $("#weather").html(html);
    },
    error: function(error) {
      $("#weather").html('<p>'+error+'</p>');
    }
  });
}

setInterval(function(){

    //time to scroll to bottom
    $("html, body").animate({ scrollTop: $(document).height() }, 100000);

    //scroll to top
    setTimeout(function() {
       $('html, body').animate({scrollTop:0}, 80000);
    },200);//call every 2000 miliseconds

},2000);//call every 2000 miliseconds
