  <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
	  <div id="menu" class="${layout}">
	    <a class="navbar-brand" href="#"><fmt:message key="label.application.nom" /></a>
	    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	
	    <div class="collapse navbar-collapse">
	      <ul class="navbar-nav mr-auto">
	        <li class="nav-item active">
	          <a class="nav-link" href="#"><span class="octicon octicon-home"></span></a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#"><fmt:message key="label.demander" /></a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#"><fmt:message key="label.suivre" /></a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#"><fmt:message key="label.s_informer" /></a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#"><fmt:message key="label.connexion" /></a>
	        </li>
	        <li class="nav-item dropdown">
		        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		          <fmt:message key="label.langue" />
		        </a>
		        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
		          <a class="dropdown-item" href="?sessionLocale=fr"><fmt:message key="label.fr" /></a>
		          <a class="dropdown-item" href="?sessionLocale=en"><fmt:message key="label.en" /></a>
		          <a class="dropdown-item" href="?sessionLocale=es"><fmt:message key="label.es" /></a>
		        </div>
		      </li>
		      
            <li class="nav-item active">
              <a class="nav-link change-layout" href="#"><span class="octicon octicon-browser"></span></a>
            </li>
	      </ul>
	      <form class="form-inline my-2 my-lg-0">
	        <input class="form-control mr-sm-2" type="text" placeholder="<fmt:message key="label.rechercher" />" aria-label="Search">
	        <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><fmt:message key="label.rechercher" /></button>
	      </form>
	    </div>
    </div>
  </nav>