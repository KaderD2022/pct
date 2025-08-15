(function($) {
  'use strict';
  var editor = ace.edit("aceExample");
  editor.setTheme("ace/theme/chaos");
  editor.getSession().setMode("ace/mode/javascript");
  document.getElementById('aceExample').style.fontSize = '1rem';
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