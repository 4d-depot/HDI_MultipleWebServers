//%attributes = {}
Form:C1466.currentSettings:=JSON Parse:C1218(JSON Stringify:C1217(Form:C1466.currentWebServer))
If (Form:C1466.currentSettings#Null:C1517)
	OB REMOVE:C1226(Form:C1466.currentSettings;"name")
	OB REMOVE:C1226(Form:C1466.currentSettings;"isRunning")
	OB REMOVE:C1226(Form:C1466.currentSettings;"openSSLVersion")
	OB REMOVE:C1226(Form:C1466.currentSettings;"perfectForwardSecrecy")
End if 

Form:C1466.hostSettings:=JSON Parse:C1218(JSON Stringify:C1217(Form:C1466.hostWebServer))
If (Form:C1466.hostSettings#Null:C1517)
	OB REMOVE:C1226(Form:C1466.hostSettings;"name")
	OB REMOVE:C1226(Form:C1466.hostSettings;"isRunning")
	OB REMOVE:C1226(Form:C1466.hostSettings;"openSSLVersion")
	OB REMOVE:C1226(Form:C1466.hostSettings;"perfectForwardSecrecy")
End if 

Form:C1466.componentSettings:=JSON Parse:C1218(JSON Stringify:C1217(Form:C1466.component1WebServer))
If (Form:C1466.componentSettings#Null:C1517)
	OB REMOVE:C1226(Form:C1466.componentSettings;"name")
	OB REMOVE:C1226(Form:C1466.componentSettings;"isRunning")
	OB REMOVE:C1226(Form:C1466.componentSettings;"openSSLVersion")
	OB REMOVE:C1226(Form:C1466.componentSettings;"perfectForwardSecrecy")
End if 

