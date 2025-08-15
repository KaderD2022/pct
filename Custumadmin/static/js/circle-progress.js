(function($) {
  'use strict';
  if ($(".circle-progress-1").length) {
    $('.circle-progress-1').circleProgress({}).on('circle-animation-progress', function(event, progress, stepValue) {
      $(this).find('.value').html(Math.round(100 * stepValue.toFixed(2).substr(1)) + '<i>%</i>');
    });
  }
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