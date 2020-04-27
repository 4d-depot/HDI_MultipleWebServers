//%attributes = {}
Form:C1466.currentWS:=JSON Parse:C1218(JSON Stringify:C1217(Form:C1466.currentWebServer))
extractWebServerSettings 
If (Form:C1466.currentWS=Null:C1517)
	OBJECT SET VISIBLE:C603(*;"olbl_currentWS_Running";False:C215)
	OBJECT SET VISIBLE:C603(*;"olbl_currentWS_Stopped";True:C214)
	OBJECT SET VISIBLE:C603(*;"olbl_PFSon";False:C215)
	OBJECT SET VISIBLE:C603(*;"olbl_PFSoff";True:C214)
Else 
	OBJECT SET VISIBLE:C603(*;"olbl_currentWS_Running";Form:C1466.currentWS.isRunning)
	OBJECT SET VISIBLE:C603(*;"olbl_currentWS_Stopped";Not:C34(Form:C1466.currentWS.isRunning))
	OBJECT SET VISIBLE:C603(*;"olbl_PFSon";Form:C1466.currentWS.perfectForwardSecrecy)
	OBJECT SET VISIBLE:C603(*;"olbl_PFSoff";Not:C34(Form:C1466.currentWS.perfectForwardSecrecy))
End if 
If (Form:C1466.hostSettings=Null:C1517)
	OBJECT SET VISIBLE:C603(*;"olbl_host_Running";False:C215)
	OBJECT SET VISIBLE:C603(*;"olbl_host_Stopped";True:C214)
Else 
	OBJECT SET VISIBLE:C603(*;"olbl_host_Running";Form:C1466.hostWebServer.isRunning)
	OBJECT SET VISIBLE:C603(*;"olbl_host_Stopped";Not:C34(Form:C1466.hostWebServer.isRunning))
End if 
If (Form:C1466.componentSettings=Null:C1517)
	OBJECT SET VISIBLE:C603(*;"olbl_component_Running";False:C215)
	OBJECT SET VISIBLE:C603(*;"olbl_component_Stopped";True:C214)
Else 
	OBJECT SET VISIBLE:C603(*;"olbl_component_Running";Form:C1466.component1WebServer.isRunning)
	OBJECT SET VISIBLE:C603(*;"olbl_component_Stopped";Not:C34(Form:C1466.component1WebServer.isRunning))
End if 

If (Form:C1466.viewPro)
	OBJECT SET VISIBLE:C603(*;"vp_@";False:C215)
	OBJECT SET VISIBLE:C603(*;"olbx_currentSettings";True:C214)
	
	ARRAY TEXT:C222(_currentSettingsAttributes;0)
	ARRAY LONGINT:C221($_types;0)
	ARRAY OBJECT:C1221(_currentSettingsValues;0)
	C_LONGINT:C283($i)
	C_OBJECT:C1216($value)
	If (Form:C1466.currentSettings#Null:C1517)
		OB GET PROPERTY NAMES:C1232(Form:C1466.currentSettings;_currentSettingsAttributes;$_types)
		For ($i;1;Size of array:C274(_currentSettingsAttributes))
			$value:=New object:C1471("value";Form:C1466.currentSettings[_currentSettingsAttributes{$i}])
			$value.valueType:="text"
			Case of 
				: ($_types{$i}=Is real:K8:4)
					$value.valueType:="real"
				: ($_types{$i}=Is integer:K8:5)
					$value.valueType:="integer"
				: ($_types{$i}=Is boolean:K8:9)
					$value.valueType:="boolean"
			End case 
			APPEND TO ARRAY:C911(_currentSettingsValues;OB Copy:C1225($value))
		End for 
	End if 
Else 
	OBJECT SET VISIBLE:C603(*;"vp_@";True:C214)
	OBJECT SET VISIBLE:C603(*;"olbx_currentSettings";False:C215)
End if 
