cd /opt/logstash
clear
echo $0 started as $$
echo "Wait for startup and type your favorite line"
echo "What is the difference with sample 1 ?"
bin/logstash -e 'input { stdin { } } filter { mutate { uppercase => [ "message" ] } }output { stdout { codec => rubydebug } }'
