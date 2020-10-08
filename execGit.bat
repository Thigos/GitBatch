@echo off
:menu
cls
color 2
echo.
echo.

echo.               
echo  ===========================================================
echo  * 1. Clone Repository				        * 
echo  * 2. Upload Repository             			* 
echo  * 3. Att Conta		             			* 
echo  ===========================================================
set /p opcao= Escolha uma opcao: 
echo ------------------------------
if %opcao% equ 1 goto opcao1
if %opcao% equ 2 goto opcao2
if %opcao% equ 3 goto opcao3

:opcao1
set /p dirDownload= Local De Salvamento? 
set /p cam= HTTPS:  
cd %dirDownload%
git clone %cam%
echo Foi :)
goto menu

:opcao2
set /p dir= Diretorio do Projeto:  
set /p comm= Comentario:
cd %dir%
git add .
git commit -m %comm%
git pull
git push
echo Foi :)
goto menu

:opcao3
set /p email= Email: 
set /p nome= Nome:
git config --global user.email "%email%"
git config --global user.name "%nome%"
echo Foi :)
goto menu
