cd /opt/logstash
clear
echo $0 started as $$
echo "Wait for startup and type your favorite line"
bin/logstash -e 'input { stdin { } } output { stdout {} }'
