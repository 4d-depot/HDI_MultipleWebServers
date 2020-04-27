C_TEXT:C284($1;$2;$3;$4;$5;$6)

Case of 
	: ($1="/OWA")
		  //WEB SEND TEXT("<h1>Host database web server: \"On web authentication\" test passed!</h1>")
		WEB SEND FILE:C619("OWA.html")
	Else 
		WEB SEND FILE:C619("Error.html")
End case 
