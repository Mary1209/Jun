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
			width: 50px;
			height: 50px;
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

<script>
    
</script>
	
	<div ng-controller="memoriaController as memoriac" class="maincontainer all_page" id="title">
		 
			
		
		<h3>Juego de Memoira</h3><br/>
		<div class="row" align="center" >
                   
                    <div class="flip-container" ng-click="memoriac.flip = !memoriac.flip" ng-class="{'clicked': memoriac.flip}">
                        <div class="flipper">
                          <div class="front" style="background: lightblue;">
                            front
                          </div>
                          <div class="back" style="background: lightgreen;">
                            back
                          </div>
                        </div>
                    </div>
                    
                    
    		
		</div>
	</div>