docker run --name "ac_kibana" -d --volumes-from "ac_kibana_data" --publish "5601:5601" ac_kibana kibana --config /opt/kibana/config/kibana.yml


