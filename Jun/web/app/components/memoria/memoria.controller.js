var app = angular.module('memoriaController', []);

app.controller('memoriaController', ['$scope', '$http', '$interval', 'i18nService', 'Utilidades', '$routeParams', '$window', '$location', '$route', 'uiGridConstants', '$mdDialog',
    function ($scope, $http, $interval, i18nService, $utilidades, $routeParams, $window, $location, $route, uiGridConstants, $mdDialog) {
        var mi = this;

        $window.document.title = 'Jun - Memoria';
        i18nService.setCurrentLang('es');
        
        mi.cartas = {};
        mi.ocultar = true;
        
        mi.max = 12;
        mi.cartasVolteadas = 0;
        mi.posCartaVolteada1=-1;
        mi.posCartaVolteada2=-1;
        mi.punteo=0;
        mi.intentos=0;
        mi.ganar = false;
        
        mi.voltearCarta = function (pos) {
            if (!mi.cartas[pos].encontrado || mi.cartas[pos].flip === false){
                if (mi.cartasVolteadas!==2){
                    mi.cartasVolteadas ++;
                    mi.cartas[pos].flip = !mi.cartas[pos].flip;
                    if (mi.cartasVolteadas===1)
                        mi.posCartaVolteada1 = pos;
                    else{
                        mi.posCartaVolteada2 = pos;
                        mi.intentos++;
                        if(mi.cartas[mi.posCartaVolteada1].idCarta === mi.cartas[mi.posCartaVolteada2].idCarta){
                            mi.cartas[mi.posCartaVolteada1].encontrado = true;
                            mi.cartas[mi.posCartaVolteada2].encontrado = true;
                            mi.cartasVolteadas=0;
                            mi.punteo++;
                            if (mi.punteo===6 && mi.max === 12){
                                mi.ganar= true;
                            }
                             if (mi.punteo===10 && mi.max === 20){
                                mi.ganar= true;
                            }
                        }
                    }
                    
                }else{
                    mi.cartas[ mi.posCartaVolteada1].flip = false;
                    mi.cartas[ mi.posCartaVolteada2].flip = false;
                    mi.cartasVolteadas=0;
                    
                }
            }
        };
        
         
        
        mi.juegoNuevo = function(){
            if (mi.max === 12){
                mi.cartasDisponibles = ['1','1','2','2','3','3','4','4','5','5',
                                '6','6','7','7'];
            } else if (mi.max === 20){
            mi.cartasDisponibles = ['1','1','2','2','3','3','4','4','5','5',
                                '6','6','7','7','8','8','9','9','10','10'];
             }
            for (i = 0; i < mi.max; i++) { 
                var pos  = 0;
                if (i !== mi.max -1 ) 
                    var pos = Math.floor(Math.random() * (mi.max-i - 0) + 0);
                mi.cartas[i]={};
                mi.cartas[i].imagen = "assets/img/" + mi.cartasDisponibles[pos] + ".png";
                mi.cartas[i].flip = false;
                mi.cartas[i].idCarta = mi.cartasDisponibles[pos];
                mi.cartas[i].encontrado = false;
                mi.cartasDisponibles.splice(pos,1);
            }
            mi.ocultar = false;
            mi.punteo=0;
            mi.intentos=0;
            mi.ganar = false;
        };
        
        mi.juegoNuevo();
        
        mi.niveles = function (nivel){
            mi.max = nivel;
            mi.juegoNuevo();
        }

    }
]);


