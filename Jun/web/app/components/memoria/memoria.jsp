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
</style>

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
</style>

<script>
    
</script>
	
	<div ng-controller="memoriaController as memoriac" class="maincontainer all_page" id="title">
		 
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
</style>

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
</style>

<script>
    
</script>
	
	<div ng-controller="memoriaController as memoriac" class="maincontainer all_page" id="title">
		 
				
		
            <h3>Juego de Memoria</h3><br/> 
            <table align="center" WIDTH="45%" border="3" bordercolor="lime" cellspacing="0">
                    <tr >
                    <td >
                      
                    <div class="flip-container" ng-click="memoriac.voltearCarta(1)" ng-class="{'clicked': memoriac.flip1}">
                    <div class="flipper">
                        
                           
                    <div class="front" style="background: lightblue;">
                        <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 118px ;">
                    </div>
                    <div class="back" style="background: lightgreen;">
                        <img src="{{ memoriac.cartas[1] }}" style=" width: 100px ; height: 118px ;">
                    </div>
                    </div>
                    </div>
                    
                    </td>
                      
                        <td>
                         
                        <div class="flip-container" ng-click="memoriac.voltearCarta(2)" ng-class="{'clicked': memoriac.flip2}">
                        <div class="flipper">
                           
                        <div class="front" style="background: lightblue;">
                        <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                        </div>
                        <div class="back" style="background: lightgreen;">
                            <img src="{{ memoriac.cartas[2] }}" style=" width: 100px ; height: 110px ;">

                        </div>
                        </div>
                        </div>  
                         
                        </td>
                            <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(3)" ng-class="{'clicked': memoriac.flip3}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[3] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>  
                  
                     
                            
                            
                    
                    <td>    
                          
                    <div class="flip-container" ng-click="memoriac.voltearCarta(4)" ng-class="{'clicked': memoriac.flip4}">
                    <div class="flipper">
                           
                    <div class="front" style="background: lightblue;">
                    <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                    </div>
                    <div class="back" style="background: lightgreen;">
                        <img src="{{ memoriac.cartas[4] }}" style=" width: 100px ; height: 110px ;">

                    </div>   
                    </div>   
                    </div> 
                         
                    </td>
                  
                        <td>
                            
                         <div class="flip-container" ng-click="memoriac.voltearCarta(5)" ng-class="{'clicked': memoriac.flip5}">
                        <div class="flipper">
                           
                        <div class="front" style="background: lightblue;">
                        <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                         </div>
                        <div class="back" style="background: lightgreen;">
                            <img src="{{ memoriac.cartas[5] }}" style=" width: 100px ; height: 110px ;">

                        </div>   
                        </div>   
                        </div> 
                           
                        </td>  
                        </tr>
                        <tr>
                            <td>
                              
                            <div class="flip-container" ng-click="memoriac.voltearCarta(6)" ng-class="{'clicked': memoriac.flip6}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                            <div class="back" style="background: lightgreen;">
                               <img src="{{ memoriac.cartas[6] }}" style=" width: 100px ; height: 110px ;"> 
                            </div>   
                            </div>   
                            </div> 
                                 
                            </td>  
                            
                     
                    
                       
       
                    
                    <td>
                       
                    <div class="flip-container" ng-click="memoriac.voltearCarta(7)" ng-class="{'clicked': memoriac.flip7}">
                    <div class="flipper">
                           
                    <div class="front" style="background: lightblue;">
                    <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                    </div>
                    <div class="back" style="background: lightgreen;">
                        <img src="{{ memoriac.cartas[7] }}" style=" width: 100px ; height: 110px ;">
                    </div>   
                    </div>      
                    </div>  
                        
                    </td>
                         <td>
                              
                        <div class="flip-container" ng-click="memoriac.voltearCarta(8)" ng-class="{'clicked': memoriac.flip8}">
                        <div class="flipper">
                           
                        <div class="front" style="background: lightblue;">
                        <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                        </div>
                        <div class="back" style="background: lightgreen;">
                            <img src="{{ memoriac.cartas[8] }}" style=" width: 100px ; height: 110px ;">

                        </div>   
                        </div>      
                        </div>  
                           
                        </td>
                        
                        
                            <td>
                               
                            <div class="flip-container" ng-click="memoriac.voltearCarta(9)" ng-class="{'clicked': memoriac.flip9}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                             </div>
                            <div class="back" style="background: lightgreen;">
                            <img src="{{ memoriac.cartas[9] }}" style=" width: 100px ; height: 110px ;">
                            </div>   
                            </div>      
                            </div>  
                           
                         </td>
                   
                    
                    
                    <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(10)" ng-class="{'clicked': memoriac.flip10}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[10] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>  
                            </tr>
                            <tr>
                    
                  
                    <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(11)" ng-class="{'clicked': memoriac.flip11}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[11] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td> 
     
                        <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(12)" ng-class="{'clicked': memoriac.flip12}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[12] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>  
                            
                        
                        
                            <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(13)" ng-class="{'clicked': memoriac.flip13}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[13] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>
                                <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(14)" ng-class="{'clicked': memoriac.flip14}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[14] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>  
                             <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(15)" ng-class="{'clicked': memoriac.flip15}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[15] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>  
                            </tr>
                            <tr>
                                 <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(16)" ng-class="{'clicked': memoriac.flip16}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[16] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>   
                       
                                <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(17)" ng-class="{'clicked': memoriac.flip17}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[17] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>  
                            <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(18)" ng-class="{'clicked': memoriac.flip18}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[18] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>  
                            <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(19)" ng-class="{'clicked': memoriac.flip19}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[19] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>  
                            <td>
                                 
                            <div class="flip-container" ng-click="memoriac.voltearCarta(20)" ng-class="{'clicked': memoriac.flip20}">
                            <div class="flipper">
                           
                            <div class="front" style="background: lightblue;">
                            <img src="assets/img/Maya.jpg" style=" width: 100px ; height: 110px ;">
                            </div>
                             <div class="back" style="background: lightgreen;">
                                 <img src="{{ memoriac.cartas[20] }}" style=" width: 100px ; height: 110px ;">

                            </div>
                            </div>
                            </div>  
                                
                            </td>  
                                </tr>
                    
                    
                    
                </table>
                              
                       
                    
                    
    		
	