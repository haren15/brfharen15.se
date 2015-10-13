// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require fancybox
//= require angular
//= require_tree .

$(document).ready(function() {
  $('a.fancybox').fancybox({
    beforeShow: function() {
      $('form.blob').ajaxForm(function() {
        $.fancybox.close();

        window.location.reload();
      });
    }
  });
});

var Haren = angular.module('Haren', []);

var FooterController = function($scope) {
  $scope.year = new Date().getFullYear();
};

var FaqController = function($scope) {
  var hash = window.location.hash;
  $scope.selectedFaqId = null;
  if (hash) {
    $scope.selectedFaqId = parseInt(hash.slice(1));
  }
  $scope.selectFaq = function(faqId) {
    $scope.selectedFaqId = faqId;
  };
  $scope.faqClass = function(faqId) {
    if (faqId == $scope.selectedFaqId) {
      return 'highlight';
    }
  };
};

Haren
  .controller('FooterController', ['$scope', FooterController])
  .controller('FaqController', ['$scope', FaqController]);
