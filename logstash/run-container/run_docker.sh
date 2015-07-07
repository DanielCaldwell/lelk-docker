docker run -d --name "ac_logstash" --volumes-from "ac_logstash_data" --publish "514:514" --publish "5043:5043" --publish "9292:9292" ac_logstash logstash agent -f "/opt/conf/logstash.conf" --debug -l "/opt/logs/logstash.log"

