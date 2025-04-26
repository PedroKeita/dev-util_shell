#!/bin/bash


menu_git_interface(){
	echo "=========MENU GIT========="
	echo "1. Operações Básicas de Git"
	echo "2. Operações de Branch e Merge"
	echo "3. Operações de Repositorio remoto"
	echo "4. Operações Avançadas de Git"
	echo "5. Sair do Menu"
	echo "Escolha uma opção: "
}


while true; do
	menu_git_interface
	read escolha_opcao

	case $escolha_opcao in
	1)
		bash git_basic_operations.sh
		;;
	2) 
		bash git_branch_merge.sh
		;;
	3)
		bash git_repository_remote.sh
		;;
	4)
		bash git_advanced_operations.sh
		;;	
	5)
		echo "Saindo"
		exit 0
		;;
	*)
		echo "Opção invalida"
		;;
	esac
	echo ""
done		






