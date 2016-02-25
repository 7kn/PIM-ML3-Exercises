# PIM-ML3-Exercises
Exercises for LogStash, Graphite, Collectd &amp; Dashboarding with Kibana and Grafana
Installation instructions follows (KISS,but only for sandbox & experimenting)
- Elasticsearch (default) with additional installation of the Head plugin
- Logstash (default) with course configuration you need two running instances (shipper and indexer)
- Redis (default) with gcc build/test and uses default setup script.
- Kibana 4 (default) with initial index configuration. Don't forget to refresh your index pattern when new fields are created.
- Graphite (default) with addtional Carbon configuration.
- CollectD (default) with additional plugin Graphite configuration.
- Grafana (default)
- Firewall must open TCP ports 22/tcp-ssh, 80/tcp-graphiteweb, 3000/tcp-grafana, 9200/tcp-elasticsearch, 6379/tcp-redis, 2003/udp/tcp-carbon-relay, 5601/tcp-kibana4
- For CentOS/RHEL set selinux to permissive because of Django WSGI failures. For Production environments use default paths or explicitly use sebool & semanage 
