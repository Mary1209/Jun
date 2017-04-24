var app = angular.module('memoriaController', []);

app.controller('memoriaController',['$scope','$http','$interval','i18nService','Utilidades','$routeParams','$window','$location','$route','uiGridConstants','$mdDialog',
    function($scope, $http, $interval,i18nService,$utilidades,$routeParams,$window,$location,$route,uiGridConstants,$mdDialog) {
            var mi=this;

            $window.document.title = 'Jun - Memoria';
            i18nService.setCurrentLang('es');
            
            mi.punteo = 10;
            mi.flip = false;
			
			
} ]);


