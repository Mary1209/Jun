var app = angular.module('sipro',['ngRoute','ui.bootstrap','chart.js', 'loadOnDemand','ngAnimate',
                                       'ui.grid', 'ui.grid.treeView', 'ui.grid.selection','ui.grid.moveColumns', 'ui.grid.resizeColumns', 'ui.grid.saveState','ui.grid.pinning',
                                       'uiGmapgoogle-maps','ng.deviceDetector','ui.grid.grouping','ui.grid.autoResize','ngFlash','ngUtilidades','ngAria','ngMaterial','ngMessages']);

app.config(['$routeProvider', '$locationProvider','FlashProvider',function ($routeProvider, $locationProvider,FlashProvider) {
	   $locationProvider.hashPrefix('!');
	   //$locationProvider.html5Mode(true);
	   
	   $routeProvider
	   		
		    .when('/memoria',{
            	template: '<div load-on-demand="\'memoriaController\'" class="all_page"></div>'
            })
            
           
            ;
	   FlashProvider.setTimeout(5000);
	   FlashProvider.setShowClose(true);
}]);

app.config(['$loadOnDemandProvider', function ($loadOnDemandProvider) {
	   var modules = [
	       
	       {
	    	   name: 'memoriaController',
	    	   script: 'app/components/memoria/memoria.controller.js',
	    	   template: 'app/components/memoria/memoria.jsp'
	       }

	   ];
	   $loadOnDemandProvider.config(modules);
}]);

app.config(['uiGmapGoogleMapApiProvider',function(uiGmapGoogleMapApiProvider) {
    uiGmapGoogleMapApiProvider.configure({
        key: 'AIzaSyBPq-t4dJ1GV1kdtXoVZfG7PtfEAHrhr00',
        v: '3.', //defaults to latest 3.X anyhow
        libraries: 'weather,geometry,visualization'
    });
}]);

app.controller('MainController',['$scope','$document','deviceDetector','$rootScope','$location','$window','Utilidades', "$routeParams",
   function($scope,$document,deviceDetector,$rootScope,$location,$window,$utilidades, $routeParams){
	$scope.lastscroll = 0;
	$scope.hidebar = false;

	numeral.language('es', numeral_language);
	$window.document.title =  'JUN';
	
	$document.bind('scroll', function(){
		if($document[0].body.scrollTop > 15){
			if ($scope.lastscroll>$document[0].body.scrollTop) { //Scroll to Top
		        $scope.hidebar = false;
		    } else if($document[0].body.scrollTop>15) { //Scroll to Bottom
		        $scope.hidebar = true;
		    }
			$scope.$apply();
		}
		$scope.lastscroll = $document[0].body.scrollTop;
	});

	$scope.hideBarFromMenu=function(){
		$scope.hidebar = true;
		document.getElementById("title").scrollIntoView()
	}

	$scope.device = deviceDetector;

	$rootScope.$on('$routeChangeSuccess', function (event, current, previous) {
		if($routeParams.redireccion=="forbidden"){
			$utilidades.mensaje('danger','No tiene permiso de acceder a esta área');	
		}
		if (location.hostname !== "localhost" || location.hostname !== "127.0.0.1"){
			$window.ga('create', 'UA-74443600-2', 'auto');
			$window.ga('send', 'pageview', $location.path());
		}
    });
}]);