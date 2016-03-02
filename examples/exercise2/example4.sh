LS_HOME=/opt/logstash
export LS_HOME
clear
echo $0 started as $$
echo "Wait for startup and type your favorite apache line"
echo "Copy Paste the line below"
echo ""
echo "127.0.0.1 - - [11/Dec/2013:00:01:45 -0800] \"GET /xampp/status.php HTTP/1.1\" 200 3891 \"http://cadenza/xampp/navi.php\" \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9; rv:25.0) Gecko/20100101 Firefox/25.0\""
echo ""
$LS_HOME/bin/logstash -f ./example4 
