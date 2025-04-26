#!/bin/bash

git_criar_brach(){
	echo "========Criação da branch========"
	echo "Insira nome da branch: "
	read nome_branch
	git branch "$nome_branch"
}

git_renomear_brach(){
	echo "=====Renomear branch====="
	echo "Insira o nome da branch desejavel para renomear: "
	read nome_branch_nomear
	echo "Insira o novo nome da branch: "
	read novo_nome_branch
	git branch "$nome_branch_nomear" "$novo_nome_branch"
}

git_checkout(){
	echo "=====Mudar para branch existente====="
	echo "Insira o nome da branch existente para se mudar: "
	read branch_mudar
	git checkout "$branch_mudar"
}

git_checkout_reverter() {
	echo "=====descartar alteração arquivo especifico e reverter para ultimo commit====="
	echo "Insira o nome do arquivo: "
	read checkout_reversao
	git checkout -- "$checkout_reversao"
}

git_merge() {
	echo "=====Mesclar branch para a principal do git====="
	echo "Insira nome da branch: "
	read nome_branch
	git merge "$nome_branch"
}

git_cherry-pick(){
	echo "=====Aplicar commit especifico de uma branch para outra sem mesclar branch====="
	echo "Insira o commit: "
	read commit_mesclar_branch
	git cherry-pick "$commit_mesclar_branch"
}

git_rebase(){
	echo "=====Fazer alterações de um branch do Git em outro, combinando ou movendo commits====="
	git rebase main
}

git_tag(){
	echo "=====Marcar pontos especificos no historico do git, tipo post-it====="
	echo "versao: "
	read versao
	git tag "$versao"
}

menu_git_branch_merge(){
	echo "=========MENU GIT BRANCH E MERGE========="
	echo "1. Criação da branch"
	echo "2. Renomear branch"
	echo "3. Mudar para branch existente"
	echo "4. Descartar alteração arquivo especifico e reverter para ultimo commit"
	echo "5. Mesclar branch para a principal do git"
	echo "6.Aplicar commit especifico de uma branch para outra sem mesclar branch"
	echo "7. Fazer alterações de um branch do Git em outro, combinando ou movendo commits"
	echo "8. Marcar pontos especificos no historico do git, tipo post-it"
	echo "9. Sair do Menu "
	echo "Escolha sua opção: "
}

while true; do
	menu_git_branch_merge
	read escolha_opcao

	case $escolha_opcao in
	1)
		git_criar_brach
		;;
	2) 
		git_renomear_brach
		;;
	3)
		git_checkout
		;;
	4)
		git_checkout_reverter
		;;
	5) 
		git_merge
		;;	
	6)
		git_cherry-pick
		;;
	7)
		git_rebase
		;;	
	8)
	 	git_tag
	 	;;
	9)
		echo "Saindo"
		exit 0
		;;
	*)
		echo "Opção invalida"
		;;
	esac
	echo ""
done		
