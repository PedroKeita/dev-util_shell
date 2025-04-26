#!/bin/bash


git_clone(){
	echo "=====Clonar um repositorio git apartir da URL====="
	echo "Insira a URL para clonar: "
	read url
	git clone "$url"
}

git_push(){
	echo "=====Enviar commit branch local do Git para repositorio remoto====="
	echo "Insira a origem: "
	read origem
	echo "Insira o destino: "
	read destino
	git push "$origem" "$destino"
}

git_pull(){
	echo "=====Extrair repositorio remoto para branch local====="
	echo "Insira a origem: "
	read origem
	echo "Insira o destino: "
	read destino
	git pull "$origem" "$destino"
}

git_fetch() {
	echo "=====Recuperar novos commits de repositorio remoto sem mesclá-los na branch atual===="
	echo "Insira a origem: "
	read origem
	git fetch "$origem"
}

git_remote(){
	echo "=====Verificar repositorio remoto associado ao seu repositorio local====="
	git remote
}


menu_git_repository_remote(){
	echo "==============MENU GIT REPOSITORY REMOTE=============="
	echo "1. Clonar um repositorio git apartir da URL"
	echo "2. Enviar commit branch local do Git para repositorio remoto"
	echo "3. Extrair repositorio remoto para branch local"
	echo "4. Recuperar novos commits de repositorio remoto sem mesclá-los na branch atual"
	echo "5. Verificar repositorio remoto associado ao seu repositorio local"
	echo "6. Sair do Menu"
	echo "Insira a opção: "
}


while true; do
	menu_git_repository_remote
	read escolha_opcao

	case $escolha_opcao in
	1)
		git_clone
		;;
	2) 
		git_push
		;;
	3)
		git_pull
		;;
	4)
		git_fetch
		;;
	5) 
		git_remote
		;;	
	6)
		visualizar_permissao_arquivos
		;;
	*) 
		echo "Opção invalida"
		;;
	esac
	echo ""
done		
