<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <nav ng-class="{'showbar' : !hidebar, 'hidebar': hidebar}" class="navbar navbar-inverse navbar-fixed-top">
		<script type="text/javascript">
		</script>
	    <div class="container">
	    
	        <input type="checkbox" id="navbar-toggle-cbox" />	       
	        <div class="navbar-header">
				<script type="text/javascript">
				</script>
	            <label for="navbar-toggle-cbox" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	            </label>
	            <a class="navbar-brand" href="/main.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span> Inicio</a>
		    </div>		    
		    <div class="collapse navbar-collapse" id="navBar">
	           
                    <li uib-dropdown>
                         <a href="#" uib-dropdown-toggle><span class="glyphicon" aria-hidden="true"></span> Juegos <b class="caret"></b></a>
                         <ul uib-dropdown-menu role="menu" aria-labelledby="split-button">
                             <li role="menuitem"><a href="#!/memoria" id="memoriac.revolver" > Memoria </a>
                                
                    </li> 
	        </div>
	  </div>
	</nav>