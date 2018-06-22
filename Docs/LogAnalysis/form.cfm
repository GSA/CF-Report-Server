<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>
 

<cfform height="680" width="600" format="flash" skin="haloblue">

<cfformgroup type="panel" label="Business Card Wizard - created by Brad Fetter" style="color:##000000; fontSize:12; text-align: left;">

        <cfformgroup type="Horizontal" label="Name">
            <cfinput type="Text" name="firstName" width="100" required>
            <cfinput type="Text" name="lastName" width="100" required>
        </cfformgroup>

            <cfinput type="Text" name="Title" label="Title:" width="210" required>
            <cfinput type="Text" name="companyname" label="Company Name:" width="210" value="ColdFusion Consulting, Inc." required>
            <cfinput type="Text" name="Locationname" label="Name of Location:" width="210" required>
            <cfinput type="Text" name="StreetAddress" Label="Street Address:" width="210" required>
            <cfinput type="text" name="StateCityZip" Label="City, State and Zip:" required>
            <cfinput type="text" name="officenumber" label="Office Number:" validate="noblanks,telephone" required="no" mask="(999)999-9999">
            <cfinput type="text" name="Mobile" label="Mobile:" validate="telephone" required="No" mask="(999)999-9999">




    <cfformgroup type="panel" label="Preview Card" style="headerColors:##D6EFFE, ##D6EFFE;" >
        <cfformgroup type="horizontal" height="65">
            <cfformitem type="html" width="200" height="60" style="color:##006090; fontSize:12; text-align: left;"><img src="cflogo.jpg" name="FLIR Logo" width="58" height="64" border="0" align="left"></img></cfformitem>
            <cfformitem type="text" name="companyname" style="font-family : 'Arial';
         font-size : 16pt;
         font-style : bolder;
         line-height : 12pt;
         font-weight : bold;
         font-variant : normal;
         text-transform : capitalize;
         color : 000000;
         text-decoration : none;
         text-align : right; border-style: solid;"
                    bind="{companyname.text}" ></cfformitem>
        </cfformgroup>
        <cfformgroup type="vertical">
            <cfformitem type="text" name="Name" bind="{firstName.text} {lastName.text}" style="    font-family : 'Arial';
         font-size : 18pt;
         font-style : bolder;
         line-height : 10pt;
         font-weight : bold;
         font-variant : normal;
                    color : 000000;
         text-decoration : none;
         text-align : center;"></cfformitem>
            <cfformitem type="text" name="title" bind="{Title.text}" style="     font-family : 'Arial';
         font-size : 12pt;
         font-style : normal;
         line-height : 10pt;
         font-weight : normal;
         font-variant : normal;
         text-transform : capitalize;
         color : 000000;
         text-decoration : none;
         text-align : center;"></cfformitem>
        </cfformgroup>
        <cfformgroup type="horizontal">
            <cfformgroup type="vertical" leading="0" style="margin-top: 0;
                padding: 0;
                border-top-width: 0;
                padding-top: 0;
                margin-bottom: 0;
                border-bottom-width: 0;
                padding-bottom: 0;">
                <cfformitem type="text" name="locations" bind="{Locationname.text}" style="indicatorGap:0;    font-family : 'Arial';text-align : left;"></cfformitem><cfformitem type="text" name="locations" bind="{StreetAddress.text}" style="font-family : 'Arial';"></cfformitem>
                <cfformitem type="text" name="zip" bind="{StateCityZip.text}" style="font-family : 'Arial';"></cfformitem>
                <textformat>

                </textformat>
            </cfformgroup>
            <cfformgroup type="vertical">
                <cfformitem type="text" name="Office" bind="Office: {officenumber.text}" style="font-family : 'Arial'; text-align : right;" label="Office:" ></cfformitem>
                <cfformitem type="text" name="Mobile" bind="Mobile: {Mobile.text}" style="font-family : 'Arial';text-align : right;" ></cfformitem>
                <cfformitem type="text" name="email" bind="Email: {firstName.text}.{lastName.text}@mycompany.com" style="font-family : 'Arial';text-align : right;" ></cfformitem>
            </cfformgroup>
        </cfformgroup>
    </cfformgroup>


    <cfinput type="Submit" name="submitBtn" value="Submit Order">

</cfformgroup>

</cfform> 

</body>
</html>
