#Include "rwmake.ch"
#Include "Protheus.ch"
//Botao na rotina de pedidos de compra para inclusao de historico
//Responsavel: Leonor
//Data: 17/05/11                      

//ALTERA«√O TESTE COMMIT

User Function MA120BUT()
**********************
	Local aArea  := GetArea()
	Local cFilSC7 := SC7->C7_FILIAL
	Local cPedido := SC7->C7_NUM
	aBotao := {}
	//Consulta/Inclus√£o do Hist√≥rico do Cliente (Log ZZK)
	if !Inclui
		AAdd(aBotao,{"S4WB007N",{ || U_ACOMP011(cFilSC7,cPedido) } ,"Hist Ped"})
		//Consulta Coleta de Frete do pedido
		AAdd(aBotao,{"S4WB009N",{ || U_SFColFre(cFilSC7,cPedido)} ,"Frete Log."})
	endif
	RestArea(aArea)
Return(aBotao) 




