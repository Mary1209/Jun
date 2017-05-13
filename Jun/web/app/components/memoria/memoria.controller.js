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
            mi.flip10 = false;
            mi.flip11 = false;
            mi.flip12 = false;
            mi.flip13 = false;
            mi.flip14 = false;
            mi.flip15 = false;
            mi.flip16 = false;
            mi.flip17 = false;
            mi.flip18 = false;
            mi.flip19 = false;
            mi.flip20 = false;
            
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
            mi.cartas[10] = "assets/img/10.png";
            mi.cartas[11] = "assets/img/11.png";
            mi.cartas[12] = "assets/img/12.png";
            mi.cartas[13] = "assets/img/13.png";
            mi.cartas[14] = "assets/img/14.png";
            mi.cartas[15] = "assets/img/15.png";
            mi.cartas[16] = "assets/img/16.png";
            mi.cartas[17] = "assets/img/17.png";
            mi.cartas[18] = "assets/img/18.png";
            mi.cartas[19] = "assets/img/19.png";
            mi.cartas[20] = "assets/img/20.png";
            
            
            
            
          
            
            
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
                    case 10:
                        mi.flip10=!mi.flip10;
                        break; 
                     case 11:
                        mi.flip11=!mi.flip11;
                        break;   
                    case 12:
                        mi.flip12=!mi.flip12;
                        break;
                    case 13:
                        mi.flip13=!mi.flip13;
                        break; 
                    case 14:
                        mi.flip14=!mi.flip14;
                        break;     
                    case 15:
                        mi.flip15=!mi.flip15;
                        break;  
                    case 16:
                        mi.flip16=!mi.flip16;
                        break; 
                    case 17:
                        mi.flip17=!mi.flip17;
                        break;  
                     case 18:
                        mi.flip18=!mi.flip18;
                        break;  
                      case 19:
                        mi.flip19=!mi.flip19;
                        break;  
                     case 20:
                        mi.flip20=!mi.flip20;
                        break;  
                }
                
                
                
            }
			
			
} ]);


