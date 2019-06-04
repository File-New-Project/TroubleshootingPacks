makecat -v packaging/solution.cdf
signtool sign /a /fd SHA256 /tr http://rfc3161timestamp.globalsign.com/advanced /td SHA256 output\DiagPackage.cat

makecab /f packaging/solution.ddf
signtool sign /a /fd SHA256 /tr http://rfc3161timestamp.globalsign.com/advanced /td SHA256 output\cab\FixBlockedFonts.diagcab