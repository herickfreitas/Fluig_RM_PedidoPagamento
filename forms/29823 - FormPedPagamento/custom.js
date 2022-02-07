function filtrazoom() {
	var gestorCentroCusto = document.getElementById("gestorcc").value; 
	console.log("gestorCentroCusto: "+ gestorCentroCusto);

	var filterValues = "CODUSUARIO_CHEFE," + gestorCentroCusto;
	console.log("filterValues: "+ filterValues);

	reloadZoomFilterValues('pontoFocal', filterValues);
}