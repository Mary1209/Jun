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
            
            mi.cartas[1] = "assets/img/1.png";
            mi.cartas[2] = "assets/img/2.png";
            mi.cartas[3] = "assets/img/3.png";
            mi.cartas[4] = "assets/img/4.png";
            mi.cartas[5] = "assets/img/5.pgn";
            mi.cartas[6] = "assets/img/6.png";
            mi.cartas[7] = "assets/img/7.png";
            mi.cartas[8] = "assets/img/8.png";
            mi.cartas[9] = "assets/img/9.png";
            
          
            
            
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


