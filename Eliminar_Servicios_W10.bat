:: Este script hace que detenga los servicios que la mayoria 
:: no utilizamos, con esto hacemos que aumente ligeramente el rendimiento.
@echo off
title Eliminar Servicios
echo Solicitando privilegios...

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)
echo Privilegios Concedidos
echo.
echo Deshabilitando:
echo Administrador de pagos y NFC/SE
sc config "SEMgrSvc" start= disabled 

echo.
echo Administrador de mapas descargados
sc config "MapsBroker" start= disabled 

echo.
echo Bluetooth
sc config "BluetoothUserService" start= disabled 

echo.
echo Fax
sc config "Fax" start= disabled

echo.
echo Cola de impresión
sc config "Spooler" start= disabled

echo.
echo Windows Insider
sc config "wisvc" start= disabled

echo.
echo Tarjeta inteligente
sc config "SCardSvr" start= disabled

echo.
echo WalletService
sc config "WalletService" start= disabled

echo.
echo Telefonia
sc config "TapiSrv" start= disabled

echo.
echo Datos de contacto
sc config "PimIndexMaintenanceSvc" start= disabled

echo.
echo Servicio de enrutamiento de mensajes de insercion WAP
sc config "dmwappushservice" start= disabled

echo.
echo Servicio de geolocalizacion
sc config "lfsvc" start= disabled

echo.
echo Registro remoto
sc config "RemoteRegistry" start= disabled

echo.
echo Servicio de Panel de escritura 
sc config "TabletInputService" start= disabled

echo.
echo Todos los servicios se han deshabilitado
echo Presionar un teclado o cerrar la pantalla para finalizar...

pause > nul