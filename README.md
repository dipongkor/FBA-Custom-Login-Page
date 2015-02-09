# FBA-Custom-Login-Page
Custom login page for form based authentication in SharePoint 2013

After building this solution follow the below instructions to deploy it in production 

#Open sharepoint 2013 management shell and run following commands

Add-SPSolution -LiteralPath "Path with file wsp name" 	(Example "c:\Sp.Login.Custom.wsp" )
Install-SPSolution -Identity Sp.Login.Custom.wsp -GACDeployment

#Then go to the central administration 
--> Central Administration 
--> Application Management 
--> Manage web application
--> Select Web application
--> click on authentication providers in the ribbon bar
--> Click on the zone where you want to apply custom login page
--> Scroll down to the Sign In Page URL
--> Click Custom Sign In Page and paste "~/_layouts/Sp.Login.Custom/Login.aspx" in the text box
--> Click save
#Now check it in the browser


