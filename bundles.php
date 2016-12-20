<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans|Roboto" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/bundles_style.css">
    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />

    <title> Gamiato </title>
</head>
<body>
    <?php
    include_once 'header.php';
    ?>
<div id="container">
	<aside id="filters-sidebar">
		<div class="border-div">
		    <div id="checkboxSites">
		        <h3>Sites</h3>
		        <div class="checkbox">
		            <label><input type="checkbox" onchange="updateSitesFilter(this);" value="humbleBundle">Humble bundle</label>
		        </div>
		        <div class="checkbox">
		            <label><input type="checkbox" onchange="updateSitesFilter(this);" value="bundleStars">Bundle Star</label>
		        </div>
		        <div class="checkbox">
		            <label><input type="checkbox" onchange="updateSitesFilter(this);" value="stackSocial">Stacksocial</label>
		        </div>
		    </div>
		    <div id="checkboxContent">
		        <h3>Categories</h3>
		        <div class="checkbox">
		            <label><input type="checkbox" onchange="updateTypeFilter(this);" value="games">Jeux</label>
		        </div>
		        <div class="checkbox">
		            <label><input type="checkbox" onchange="updateTypeFilter(this);" value="books">Livres</label>
		        </div>
		        <div class="checkbox">
		            <label><input type="checkbox" onchange="updateTypeFilter(this);" value="courses">Cours</label>
		        </div>
		        <div class="checkbox">
		            <label><input type="checkbox" onchange="updateTypeFilter(this);" value="others">Autres</label>
		        </div>
		    </div>
		</div>
	</aside>
	<div id="wrapper" class="bundles-wrapper">
		<script id="bundleTemplate" type="text/x-jsrender">
		    <div class="bundle {{:type}}">
		        <div class="corner-ribbon top-right {{if type == "games"}}blue{{/if}}
		                                            {{if type == "books"}}green{{/if}}
		                                            {{if type == "courses"}}orange{{/if}}
		                                            {{if type == "others"}}red{{/if}}"
		        >
		            {{if type == "games"}}Jeux{{/if}}
		            {{if type == "books"}}Livres{{/if}}
		            {{if type == "courses"}}Cours{{/if}}
		            {{if type == "others"}}Autres{{/if}}
		        </div>
		        <img src="{{:imgPath}}">
		        <div class="bundle-content">
		            <h2>{{:title}}</h2>
		            <ul>
		                {{for content}}
		                <li>{{:cTitle}}</li>
		                {{/for}}
		            </ul>
		        </div>
		        <div class="bundle-footer">
		            <p>Temps restant : {{:timeLeft}}</p>
		        </div>
		        <a href="{{:link}}">
		            <span class="link-spanner"></span>
		        </a>
		    </div>
		</script>
	</div>
</div>
<footer class="footer">
    <div class="container">
        <p class="text-muted">Place sticky footer content here.</p>
    </div>
</footer>

<!-- Chargement des scripts -->
<script type="text/javascript" src="js/vendor/jquery-3.1.1.min.js"></script>
<script type="text/javascript" src="bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/vendor/jsrender.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/bundles.js"></script>
</body>
</html>
