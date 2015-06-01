var alu3a = angular.module('alu3a', []);
	
alu3a.controller('ongletsController',['$scope',function($scope){
	$scope.ong = 1;
	
	$scope.estChoisi = function(chOng) {
		if ($scope.ong === chOng)
			return true;
		else 
			return false;
	};
}]);

alu3a.directive('quelquesRealisations',function(){
	return{
		restrict: 'AEC',
		templateUrl: './quelques-realisations.php'
	}
});

alu3a.directive('presentation',function(){
	return{
		restrict: 'AEC',
		templateUrl: './presentation.html'
	}
});

alu3a.directive('fournisseurs',function(){
	return{
		restrict: 'AEC',
		templateUrl: './fournisseurs.php'
	}
});

alu3a.directive('inscription',function(){
	return{
		restrict: 'AEC',
		templateUrl: './sinscrire.html'
	}
});

alu3a.directive('produit',function(){
	return{
		restrict: 'AEC',
		templateUrl: './produits.php'
	}
});

alu3a.directive('contact',function(){
	return{
		restrict: 'AEC',
		templateUrl: './contact.php'
	}
});