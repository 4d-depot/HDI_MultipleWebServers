Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(_TabTitles;0)
		ARRAY TEXT:C222(_Descriptions;0)
		
		READ ONLY:C145([INFO:1])
		ALL RECORDS:C47([INFO:1])
		ORDER BY:C49([INFO:1];[INFO:1]PageNumber:4;>)
		
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3;_TabTitles;[INFO:1]Description:2;_Descriptions)
		
		Form:C1466.trace:=False:C215
		Form:C1466.viewPro:=Is license available:C714(4D View license:K44:4)
		
		Form:C1466.hostWebServer:=WEB Server:C1674(Web database server:K73:30)
		Form:C1466.component1WebServer:=wsoc1_getObject   // Initialize the web server for Component 1
		Form:C1466.component2WebServer:=wsoc2_getObject   // Initialize the web server for Component 2
		Form:C1466.activeWebServers:=WEB Server list:C1716
		loadWebServerInformation 
		
End case 
