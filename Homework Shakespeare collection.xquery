declare namespace tei = "http://www.tei-c.org/ns/1.0";
<html>
    <head>
            <title>My Shakespeare collection</title>
    </head>
    <body>
        <plays>{
            for $play in collection("shakespeare")
                let $playname := $play//tei:fileDesc/tei:titleStmt/tei:title/text()
                let $speakingparts := distinct-values($play//tei:speaker/text()) 
            return  <play><title>{$playname}</title>
                    <speaker>{$speakingparts}
                    </speaker> 
            
            </play>
        }</plays>
    </body>
</html>