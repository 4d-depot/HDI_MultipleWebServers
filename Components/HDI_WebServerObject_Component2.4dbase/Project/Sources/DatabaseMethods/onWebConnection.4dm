C_TEXT:C284($1;$2;$3;$4;$5;$6)

Case of 
	: ($1="/OWC")
		  //WEB SEND TEXT("<h1 align='center'>Host database web server: \"On web connection\" test passed!</h1>")
		WEB SEND FILE:C619("OWC.html")
End case 
