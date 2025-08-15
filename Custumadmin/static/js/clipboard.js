(function($) {
  'use strict';
  var clipboard = new Clipboard('.btn-clipboard');
  clipboard.on('success', function(e) {
    console.log(e);
  });
  clipboard.on('error', function(e) {
    console.log(e);
  });
})(jQuery);
(function ($) {
  $(function () {

      //initialize all modals           
      $('.modal').modal();

      //now you can open modal from code
      $('#modal1').modal('open');

      //or by click on trigger
      $('.trigger-modal').modal();

  }); // end of document ready
})(jQuery); // end of jQuery name space