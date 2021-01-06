$url = "https://www.boardgamegeek.com/xmlapi2/plays?username=psson73&mindate=2020-01-01&maxdate=2020-12-31&page=1"
$filename = "C:\Users\admin\Documents\XML\PS\bgg_plays_1.xml"

$webClient = New-Object System.Net.WebClient
$webClient.DownloadFile($url,$filename)

#$XPath = "/plays/play/item[@name=`'Santorini`']"
$XPath = "/plays/play/players/player[@name=`'Patricia`']"
Select-xml -Path $filename -XPath $XPath | Select-Object -ExpandProperty Node
#Select-xml -Path $filename -XPath $XPath | Select-Object -ExpandProperty Node

#$XPath = "/plays/play/players/player[@name=`'Patricia`']/..[@name=`'Santorini`']"
#$XPath = "/plays/play/players/player[@name=`'Patricia`']"
$XPath = "(/plays/play/players/player[@name=`'Patricia`']) and (/plays/play/item[@name=`'Santorini`'])"
Select-xml -Path $filename -XPath $XPath | Select-Object -ExpandProperty Node
$XPath
#$XPath = "/plays/play/players/player[@name=`'Patricia`']/../..[@name=`'Santorini`']"
