#!/bin/bash
if ! git config --global user.name > /dev/null; then
    echo "Configurando usuário Git..."
    git config --global user.name "PedroKeita"
    git config --global user.email "pedrolucas300805@gmail.com"
fi

git_init(){
	echo "=====Iniciar um novo repositório Git em um diretório======"
	echo "Digite o nome do repositório a ser criado: "
	read nome_repositorio
	mkdir "$nome_repositorio"
	cd "$nome_repositorio"
	git init
}

git_add(){
	echo "=====Preparar o arquivo para próximo commit====="
	echo "Digite o nome do arquivo a ser preparado para commit: "
	read nome_arquivo
	if [ "$nome_arquivo" = "tudo" ]; then
 	 git add .
	else
  	git add "$nome_arquivo"
	fi

	
}

git_commit_normal(){
	echo "=====Criar mensagem de commit====="
	echo "Insira a mensagem para commit: "
	read mensagem_commit
	git commit -m "$mensagem_commit"
}

git_commit_direto(){
	echo "=====Commitar direto com todos os arquivos alterados====="
	echo "Insira a mensagem para commit: "
	read mensagem_commit_direto
	git commit -am "$mensagem_commit_direto"
}

git_corrigir_commit(){
	echo "=====Corrigir o último commit====="
	echo "Insira a mensagem corrigida de commit:"
	read mensagem_commit_corrigida
	git commit --amend -m "$mensagem_commit_corrigida"

}

git_status(){
	echo "=====Verificar status de preparação dos arquivos====="
	git status
}

git_visulog(){
	echo "=====Visualizar uma lista cronologica do histórico de commits====="
	git log
}

git_difference_arquivo(){
	echo "=====Comparar alterações do diretório de trabalho para commit mais recente====="
	echo "Insira o nome do arquivo especifico para comparação: "
	read arquivo_comparar
	git diff "$arquivo_comparar"
}

git_difference_commit(){
	echo "=====Comparar alterações dois commits diferentes====="
	echo "Insira o nome do commit1: "
	read commit1
	echo "Insira o nome do commit2: "
	read commit2
	git diff "$commit1" "$commit2"
}

git_remove(){
	echo "=====Escolha o arquivo que queira remover para proximo commit===="
	echo "Insira o nome do arquivo para ser removido: "
	read arquivo_rm
	git rm "$arquivo_rm"
}

git_renomear_arquivo(){
	echo "=====Renomear o arquivo====="
	echo "Nome do arquivo a ser renomeado: "
	read arquivo_renomeado
	echo "Novo nome do arquivo: "
	read arquivo_novo_nome
	git mv "$arquivo_renomeado" "$arquivo_novo_nome"
}

git_mover_arquivo(){
	echo "=====Mover um arquivo para diretorio diferente====="
	echo "Nome do arquivo vai ser movido: "
	read arquivo_mover
	echo "Nome do diretorio que vai colocar o arquivo: "
	read diretorio
	git mv "$arquivo_mover" "$diretorio"
	
}

menu_git_basic(){
	echo "==========MENU GIT BASIC=========="
	echo "1. Iniciar um novo repositório Git em um diretório"
	echo "2. Preparar o arquivo para próximo commit"
	echo "3. Criar mensagem de commit"
	echo "4. Commitar direto com todos os arquivos alterados"
	echo "5. Corrigir o último commit"
	echo "6. Verificar status de preparação dos arquivos"
	echo "7. Visualizar uma lista cronologica do histórico de commits"
	echo "8. Comparar alterações do diretório de trabalho para commit mais recente"
	echo "9. Comparar alterações dois commits diferentes"
	echo "10. Escolha o arquivo que queira remover para proximo commit"
	echo "11. Renomear o arquivo"
	echo "12. Mover um arquivo para diretorio diferente"
	echo "13. Sair"
	echo "Escolha a opção: "
}

while true; do
	menu_git_basic
	read escolha_opcao

	case $escolha_opcao in
	1)
		git_init
		;;
	2) 
		git_add
		;;
	3)
		git_commit_normal
		;;
	4)
		git_commit_direto
		;;
	5) 
		git_corrigir_commit
		;;	
	6)
		git_status
		;;
	7)
		git_visulog
		;;	
	8)	
		git_difference_arquivo
		;;
	9)
		git_difference_commit
		;;
	10) 
		git_remove
		;;	
	11)
		git_renomear_arquivo
		;;
	12)
		git_mover_arquivo
		;;	
	13)
		echo "Saindo"
		exit 0
		;;
	*)
		echo "Opção invalida"
		;;
	esac
	echo ""
done		
