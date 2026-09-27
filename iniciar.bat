@echo off
title Facturador ARCA Ganadero
echo =======================================================
echo    INICIANDO FACTURADOR ARCA - HACIENDA BOVINA
echo =======================================================
echo.
echo Abriendo servidor local en http://localhost:3000 ...
start http://localhost:3000
node server.js
pause
