LS_HOME=/opt/logstash
export LS_HOME
clear
echo $0 started as $$
echo "Wait for startup and type your favorite date"
echo "Copy Paste the line below"
echo ""
echo "format = 2016-03-02;12:00:00.000"
echo ""
$LS_HOME/bin/logstash -f ./example6 
