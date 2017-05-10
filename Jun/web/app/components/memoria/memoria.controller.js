var app = angular.module('memoriaController', []);

app.controller('memoriaController',['$scope','$http','$interval','i18nService','Utilidades','$routeParams','$window','$location','$route','uiGridConstants','$mdDialog',
    function($scope, $http, $interval,i18nService,$utilidades,$routeParams,$window,$location,$route,uiGridConstants,$mdDialog) {
            var mi=this;

            $window.document.title = 'Jun - Memoria';
            i18nService.setCurrentLang('es');
            
            mi.punteo = 10;
            mi.flip1 = false;
            mi.flip2 = false;
            mi.flip3 = false;
            mi.flip4 = false;
            mi.flip5 = false;
            mi.flip6 = false;
            mi.flip7 = false;
            mi.flip8 = false;
            mi.flip9 = false;
            
            mi.cartas = [];
            mi.cartas[1] = {};          
            
            mi.cartas[1].img = "assets/img/1.png"
            
            
            mi.voltearCarta=function(pos){
                switch(pos){
                    case 1:
                        mi.flip1=!mi.flip1;
                        break;
                    case 2:
                        mi.flip2=!mi.flip2;
                        break;
                     case 3:
                        mi.flip3=!mi.flip3;
                        break;   
                     case 4:
                        mi.flip4=!mi.flip4;
                        break; 
                     case 5:
                        mi.flip5=!mi.flip5;
                        break;  
                     case 6:
                        mi.flip6=!mi.flip6;
                        break;   
                     case 7:
                        mi.flip7=!mi.flip7;
                        break;   
                     case 8:
                        mi.flip8=!mi.flip8;
                        break;   
                     case 9:
                        mi.flip9=!mi.flip9;
                        break;   
                }
                
                
                
            }
			
			
} ]);


