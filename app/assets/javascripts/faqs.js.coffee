# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

FaqController = ($scope) ->
  $scope.selectedFaqId = parseInt(window.location.hash?.slice(1))
  $scope.selectFaq = (faqId) ->
     $scope.selectedFaqId = faqId
  $scope.faqClass = (faqId) ->
    'highlight' if faqId == $scope.selectedFaqId

angular.module('Haren', [])
  .controller 'FaqController', ['$scope', FaqController]
