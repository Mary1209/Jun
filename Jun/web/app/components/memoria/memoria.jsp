<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<style>
    .flip-container {
        -webkit-perspective: 1000;
        -moz-perspective: 1000;
        -ms-perspective: 1000;
        perspective: 1000;

        -ms-transform: perspective(1000px);
        -moz-transform: perspective(1000px);
        -moz-transform-style: preserve-3d; 
        -ms-transform-style: preserve-3d; 

        border: 1px solid #ccc;
    }

    .flip-container.clicked .back {
        -webkit-transform: rotateY(0deg);
        -moz-transform: rotateY(0deg);
        -o-transform: rotateY(0deg);
        -ms-transform: rotateY(0deg);
        transform: rotateY(0deg);
    }

    .flip-container.clicked .front {
        -webkit-transform: rotateY(180deg);
        -moz-transform: rotateY(180deg);
        -o-transform: rotateY(180deg);
        -ms-transform: rotateY(180deg);
        transform: rotateY(180deg);
    }

    .flip-container, .front, .back {
        width: 100px;
        height: 110px;
    }

    .flipper {
        -webkit-transition: 0.6s;
        -webkit-transform-style: preserve-3d;
        -ms-transition: 0.6s;

        -moz-transition: 0.6s;
        -moz-transform: perspective(1000px);
        -moz-transform-style: preserve-3d;
        -ms-transform-style: preserve-3d;

        transition: 0.6s;
        transform-style: preserve-3d;

        position: relative;
    }

    .front, .back {
        -webkit-backface-visibility: hidden;
        -moz-backface-visibility: hidden;
        -ms-backface-visibility: hidden;
        backface-visibility: hidden;

        -webkit-transition: 0.6s;
        -webkit-transform-style: preserve-3d;

        -moz-transition: 0.6s;
        -moz-transform-style: preserve-3d;

        -o-transition: 0.6s;
        -o-transform-style: preserve-3d;

        -ms-transition: 0.6s;
        -ms-transform-style: preserve-3d;

        transition: 0.6s;
        transform-style: preserve-3d;

        position: absolute;
        top: 0;
        left: 0;
    }

    .front {
        -webkit-transform: rotateY(0deg);
        -ms-transform: rotateY(0deg);
        background: lightgreen;
        z-index: 2;
    }

    .back {
        background: lightblue;
        -webkit-transform: rotateY(-180deg);
        -moz-transform: rotateY(-180deg);
        -o-transform: rotateY(-180deg);
        -ms-transform: rotateY(-180deg);
        transform: rotateY(-180deg);
    }







    .hit-the-floor {
        color: #4cae4c;
        font-size: 3em;
        font-weight: bold;
        font-family: Helvetica;
        text-shadow: 0 1px 0 #ccc, 0 2px 0 #c9c9c9, 0 3px 0 #bbb, 0 4px 0 #b9b9b9, 0 5px 0 #aaa, 0 6px 1px rgba(0,0,0,.1), 0 0 5px rgba(0,0,0,.1), 0 1px 3px rgba(0,0,0,.3), 0 3px 5px rgba(0,0,0,.2), 0 5px 10px rgba(0,0,0,.25), 0 10px 10px rgba(0,0,0,.2), 0 20px 20px rgba(0,0,0,.15);
    }

    .hit-the-floor {
        text-align: center;
    }

    body {
        background-color: #f1f1f1;
    }







</style>

<div ng-controller="memoriaController as memoriac" class="maincontainer all_page" id="title">



    <div ng-controller="memoriaController as memoriac" class="maincontainer all_page" id="title">

        <h3>Juego de Memoria</h3><br/> 
        <div class="col-sm-12" align="center">
            <div row>

                <div class="col-sm-2" >
                    <label class="btn btn-success"  title="Nuevo" uib-tooltip="Nuevo" style="width: 100%"
                           ng-click="memoriac.juegoNuevo()">
                        <span class="glyphicon glyphicon-star-empty"></span> Nuevo</label>
                   <div class="btn-group" uib-dropdown is-open="status.isopen">
                    <button id="single-button" type="button" class="btn btn-success" uib-dropdown-toggle
                            style="width: 100%" >
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Nivel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class=" caret" ></span>
                       </button>
                       <ul class="dropdown-menu" uib-dropdown-menu role="menu" aria-labelledby="single-button">
                           <li role="menuitem" ng-click="memoriac.niveles(12)">&nbsp;Nivel 1</li>
                           <li role="menuitem"  ng-click="memoriac.niveles(20)" >&nbsp;Nivel 2</li>
                         
                       </ul>
    </div>
                    <br/> <br/> <br/>

                    <div class="form-group">
                        <label  class="label-form" >Puntuación</label>
                        <p>{{ memoriac.punteo}}</p>
                    </div>
                    <div class="form-group">
                        <label  class="label-form" >Intento</label>
                        <p>{{ memoriac.intentos}}</p>
                    </div>

                    <div ng-if="memoriac.ganar" class="hit-the-floor">Ganaste</div>

                </div>
                <div class="col-sm-10" >

                    <table align="center" WIDTH="45%" border="3" bordercolor="lime" cellspacing="0" 
                           ng-hide="memoriac.max == 12">
                        <tr >
                            <td > 
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(0)" ng-class="{'clicked': memoriac.cartas[0].flip}">
                                    <div class="flipper">    
                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 118px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[0].imagen}}" style=" width: 100px ; height: 118px ;">
                                        </div>
                                    </div>
                                </div>

                            </td>  
                            <td> 
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(1)" ng-class="{'clicked': memoriac.cartas[1].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[1].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>  

                            </td>
                            <td>

                                <div class="flip-container"  ng-click="memoriac.voltearCarta(2)" ng-class="{'clicked': memoriac.cartas[2].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[2].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>  

                            </td>        

                            <td>      
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(3)" ng-class="{'clicked': memoriac.cartas[3].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[3].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>   
                                    </div>   
                                </div> 

                            </td>
                            <td>    
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(4)" ng-class="{'clicked': memoriac.cartas[4].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[4].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>   
                                    </div>   
                                </div> 

                            </td>  
                        </tr>
                        <tr>
                            <td>

                                <div class="flip-container"  ng-click="memoriac.voltearCarta(5)" ng-class="{'clicked': memoriac.cartas[5].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[5].imagen}}" style=" width: 100px ; height: 110px ;"> 
                                        </div>   
                                    </div>   
                                </div>    
                            </td>  
                            <td>   
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(6)" ng-class="{'clicked': memoriac.cartas[6].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[6].imagen}}" style=" width: 100px ; height: 110px ;">
                                        </div>   
                                    </div>      
                                </div>  

                            </td>
                            <td>      
                                <div class="flip-container" ng-click="memoriac.voltearCarta(7)" ng-class="{'clicked': memoriac.cartas[7].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[7].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>   
                                    </div>      
                                </div>  

                            </td>
                            <td>  
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(8)" ng-class="{'clicked': memoriac.cartas[8].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[8].imagen}}" style=" width: 100px ; height: 110px ;">
                                        </div>   
                                    </div>      
                                </div>  

                            </td>
                            <td>    
                                <div class="flip-container" ng-click="memoriac.voltearCarta(9)" ng-class="{'clicked': memoriac.cartas[9].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[9].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>  

                            </td>  
                        </tr>        
                        <tr>
                            <td>   
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(10)" ng-class="{'clicked': memoriac.cartas[10].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[10].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>    
                            </td> 
                            <td>    
                                <div class="flip-container" ng-click="memoriac.voltearCarta(11)" ng-class="{'clicked': memoriac.cartas[11].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[11].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>         
                            </td>  
                            <td>      
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(12)" ng-class="{'clicked': memoriac.cartas[12].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[12].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>   
                            </td>
                            <td>    
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(13)" ng-class="{'clicked': memoriac.cartas[13].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[13].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>    
                            </td>  
                            <td> 
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(14)" ng-class="{'clicked': memoriac.cartas[14].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[14].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>  
                            </td>  
                        </tr>
                        <tr>
                            <td>   
                                <div class="flip-container"   ng-click="memoriac.voltearCarta(15)" ng-class="{'clicked': memoriac.cartas[15].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[15].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>  

                            </td>   
                            <td>  
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(16)" ng-class="{'clicked': memoriac.cartas[16].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[16].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>  

                            </td>  
                            <td>    
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(17)" ng-class="{'clicked': memoriac.cartas[17].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[17].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>         
                            </td>  
                            <td>      
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(18)" ng-class="{'clicked': memoriac.cartas[18].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[18].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>  

                            </td>  
                            <td>    
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(19)" ng-class="{'clicked': memoriac.cartas[19].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[19].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>  

                            </td>  
                        </tr>

                </div>

                </table>
                    
               
                    
                    
                <table align="center" WIDTH="45%" border="3" bordercolor="lime" cellspacing="0" 
                           ng-hide="memoriac.max == 20">
                        <tr >
                            <td > 
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(0)" ng-class="{'clicked': memoriac.cartas[0].flip}">
                                    <div class="flipper">    
                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 118px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[0].imagen}}" style=" width: 100px ; height: 118px ;">
                                        </div>
                                    </div>
                                </div>

                            </td>  
                            <td> 
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(1)" ng-class="{'clicked': memoriac.cartas[1].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[1].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>  

                            </td>
                            <td>

                                <div class="flip-container"  ng-click="memoriac.voltearCarta(2)" ng-class="{'clicked': memoriac.cartas[2].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[2].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>  

                            </td>        

                            <td>      
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(3)" ng-class="{'clicked': memoriac.cartas[3].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[3].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>   
                                    </div>   
                                </div> 

                            </td>
                            
                        </tr>
                        <tr>
                            <td>

                                <div class="flip-container"  ng-click="memoriac.voltearCarta(4)" ng-class="{'clicked': memoriac.cartas[4].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[4].imagen}}" style=" width: 100px ; height: 110px ;"> 
                                        </div>   
                                    </div>   
                                </div>    
                            </td>  
                            <td>   
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(5)" ng-class="{'clicked': memoriac.cartas[5].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[5].imagen}}" style=" width: 100px ; height: 110px ;">
                                        </div>   
                                    </div>      
                                </div>  

                            </td>
                            <td>      
                                <div class="flip-container" ng-click="memoriac.voltearCarta(6)" ng-class="{'clicked': memoriac.cartas[6].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[6].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>   
                                    </div>      
                                </div>  

                            </td>
                            <td>  
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(7)" ng-class="{'clicked': memoriac.cartas[7].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[7].imagen}}" style=" width: 100px ; height: 110px ;">
                                        </div>   
                                    </div>      
                                </div>  

                            </td>
                            
                        </tr>        
                        <tr>
                            <td>   
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(8)" ng-class="{'clicked': memoriac.cartas[8].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[8].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>    
                            </td> 
                            <td>    
                                <div class="flip-container" ng-click="memoriac.voltearCarta(9)" ng-class="{'clicked': memoriac.cartas[9].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[9].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>         
                            </td>  
                            <td>      
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(10)" ng-class="{'clicked': memoriac.cartas[10].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[10].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>   
                            </td>
                            <td>    
                                <div class="flip-container"  ng-click="memoriac.voltearCarta(11)" ng-class="{'clicked': memoriac.cartas[11].flip}">
                                    <div class="flipper">

                                        <div class="front" style="background: lightblue;">
                                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                                        </div>
                                        <div class="back" style="background: lightgreen;">
                                            <img src="{{ memoriac.cartas[11].imagen}}" style=" width: 100px ; height: 110px ;">

                                        </div>
                                    </div>
                                </div>    
                            </td>  
                            
                        </tr>
                       

                </div>

                </table>
            </div>
        </div>
    </div>

</div>





