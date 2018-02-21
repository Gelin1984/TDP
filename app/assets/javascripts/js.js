$( document ).ready(function() {
    console.log('屁股');
   return false;
  var navbarHeight = $('.navbar').height(); 

    $(window).scroll(function() {
    console.log('scrolled');
    return false;
    var navbarColor = "62,195,246";//color attr for rgba
    var smallLogoHeight = $('.small-logo').height();
    var bigLogoHeight = $('.big-logo').height();
  
  
    var smallLogoEndPos = 0;
    var smallSpeed = (smallLogoHeight / bigLogoHeight);
    console.log('speed');
    return false;
  
    var ySmall = ($(window).scrollTop() * smallSpeed); 
    console.log('ysmall');
    return false;
  
    var smallPadding = navbarHeight - ySmall;
    if (smallPadding > navbarHeight) { smallPadding = navbarHeight; }
    if (smallPadding < smallLogoEndPos) { smallPadding = smallLogoEndPos; }
    if (smallPadding < 0) { smallPadding = 0; }
  
    $('.small-logo-container ').css({ "padding-top": smallPadding});
    console.log('logo');
   return false;
  
   var navOpacity = ySmall / smallLogoHeight; 
   if  (navOpacity > 1) { navOpacity = 1; }
   if (navOpacity < 0 ) { navOpacity = 0; }
   var navBackColor = 'rgba(' + navbarColor + ',' + navOpacity + ')';
   $('.navbar').css({"background-color": navBackColor});
  
   var shadowOpacity = navOpacity * 0.4;
   console.log('shadow');
   return false;
    if ( ySmall > 1) {
      $('.navbar').css({"box-shadow": "0 2px 3px rgba(0,0,0," + shadowOpacity + ")"});
    } else {
      $('.navbar').css({"box-shadow": "none"});
    }
  });
  console.log('狗屁');
    return false;
  });