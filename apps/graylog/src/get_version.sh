sudo echo "graylog version:" $(docker image inspect graylog/graylog:latest | jq .[].Config.Labels | grep "org.label-schema.version" | cut -d ":" -f 2 | sed 's/\"//g')  1>> /data/logs/install_version.txt
