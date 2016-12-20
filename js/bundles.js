/**
 * Created by khorgoht on 08/12/16.
 */
var defaultImgPath = "img/defaultBundle.png";
var bundles;
var bundlesFiltres = [];
var bundleTemplate = $.templates("#bundleTemplate");

var timeFiltres; // TODO : filtre temps
var sitesFiltres = new Filter(function (item) {
    return this.filterValue(item.site); //ce filtre va filter le site
});
var typeFiltres = new Filter(function (item) {
    return this.filterValue(item.type); //ce filtre va filter le type
});

$(window).on('load', function() {
    $.getJSON('bundle_data.json', function (data) {
        bundles = data;
        for(var i=0; i < bundles.length; ++i) {
            if(bundles[i].imgPath == undefined) {
                bundles[i].imgPath = defaultImgPath; // add default img
            }
        }
        update();
    });
});

function update() {
    $("#wrapper").empty(); //reset l'affichage des bundles
    bundlesFiltres = bundles.filter(sitesFiltres.filterFunction.bind(sitesFiltres));// applique les filtres de site
    bundlesFiltres = bundlesFiltres.filter(typeFiltres.filterFunction.bind(typeFiltres)/* on met bind pour que le this dans filterType marche */);// applique les filtres de type
    var html = bundleTemplate.render(bundlesFiltres); //genere l'html des bundles
    $("#wrapper").html(html); //affiche les bundles
}

function updateSitesFilter(filtre) {
    if(filtre.checked) {
        sitesFiltres.addFilter(filtre.value);
    } else{
        sitesFiltres.removeFilter(filtre.value);
    }
    update();
}

function updateTypeFilter(filtre) {
    if(filtre.checked) {
        typeFiltres.addFilter(filtre.value);
    } else{
        typeFiltres.removeFilter(filtre.value);
    }
    update();
}

/*** Object Filtre ***/
function Filter(filterFunction) {
    this.filterFunction = filterFunction;
    this.filters = [];
}
/**
 * Ajoute un filtre a la liste des filtres de ce Filter
 * @param filter
 */
Filter.prototype.addFilter = function (filter) {
    this.filters.push(filter);
}

/**
 * Enlever le filtre si il est present
 * @param filter
 */
Filter.prototype.removeFilter = function (filter) {
    var index = this.filters.indexOf(filter);
    if(index > -1) {
        this.filters.splice(index, 1);
    }
}

/**
 * Filtre la valeur passée en parametre
 * @param filterableValue
 * @returns {boolean}
 */
Filter.prototype.filterValue = function (filterableValue) {
    var result = false;
    if(this.filters != undefined && this.filters.length > 0) {
        this.filters.forEach(function(typeF) {
            if(filterableValue === typeF) result = true;
        });
    } else {
        result = true; //return tous les elements puisque il n'y a pas de filtres appliqués
    }
    return result;
}