function beforeTaskSave(colleagueId,nextSequenceId,userList){
	
    var atividade  = getValue("WKNumState");
    var comentario = getValue("WKUserComment"); 

    if (atividade == 36) {
        if (comentario == "") {
            throw "Obrigatório informar um Complemento."
        }
    }
	
}