LS_HOME=/opt/logstash
export LS_HOME
clear
echo $0 started as $$
echo "Wait for startup and type your favorite drop"
echo "VENCO IT !!!"
echo ""
$LS_HOME/bin/logstash -f ./example8 
