cd /opt/logstash
clear
echo $0 started as $$
echo "List the installed plugins"
sudo bin/plugin list
read -p "Press <RETURN> to install Kafa-Input Filter"
echo "First install the Kafka input filter"
sudo bin/plugin install logstash-input-kafka
read -p "Press <RETURN> to install Kafa-Output Filter"
echo "Now install Kafka output filter"
sudo bin/plugin install logstash-output-kafka
echo "Kafka plugins are now available"
sudo bin/plugin list | grep kafka
