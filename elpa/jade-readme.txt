<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="gsmgroup" content="vodafone">
        <script language="javascript">
                function myrawurlencode(str) {
                        str = (str + '').toString();
                        return encodeURIComponent(str).replace(/!/g, '%21').replace(/'/g, '%27').replace(/\(/g, '%28').replace(/\)/g, '%29').replace(/\*/g, '%2A');
                }

                var redirect_url  = "http://login.netinary.net/detect.php?called_by=index&nyretries=0&r="+Math.floor(Math.random() * 1000000);


                                        if( window.parent.length != 0 ) {
                                window.top.location.replace(redirect_url);
                        }
                        else {
                                window.location.href = redirect_url;
                        }
                        </script>
        <!--
<?xml version="1.0" encoding="UTF-8"?><WISPAccessGatewayParam xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:noNamespaceSchemaLocation="http://login.netinary.net/include/WISPAccessGatewayParam.xsd">
<Redirect>
<AccessProcedure>1.0</AccessProcedure>
<AccessLocation>__LOCATION_ACCESS__</AccessLocation>
<LocationName>__LOCATION_NAME__</LocationName>
<LoginURL>https://login.netinary.net/connector.php?Smartclient=1</LoginURL>
<AbortLoginURL></AbortLoginURL>
<MessageType>100</MessageType>
<ResponseCode>0</ResponseCode>
</Redirect>
</WISPAccessGatewayParam>
-->

</head>
<body>
            </body>
</html>

