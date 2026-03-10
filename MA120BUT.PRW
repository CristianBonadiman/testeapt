#Include "rwmake.ch"
#Include "Protheus.ch"
//Botao na rotina de pedidos de compra para inclusao de historico
//Responsavel: Leonor
//Data: 17/05/11                      

User Function MA120BUT()
**********************
	Local aArea  := GetArea()
	Local cFilSC7 := SC7->C7_FILIAL
	Local cPedido := SC7->C7_NUM
	aBotao := {}
	//Consulta/Inclusão do Histórico do Cliente (Log ZZK)
	if !Inclui
		AAdd(aBotao,{"S4WB007N",{ || U_ACOMP011(cFilSC7,cPedido) } ,"Hist Ped"})
		//Consulta Coleta de Frete do pedido
		AAdd(aBotao,{"S4WB009N",{ || U_SFColFre(cFilSC7,cPedido)} ,"Frete Log."})
	endif
	RestArea(aArea)
Return(aBotao) 
git tag -a v1.0.0 -m "Primeira versão"
git push origin v1.0.0



