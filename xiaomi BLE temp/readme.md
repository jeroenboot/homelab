Small set of scripts to read Mijia temperature and humidity sensores and export data to MQTT

Each message is sent to a MQTT topic.
There the data is transformed and send to Domoticz and InfluxDB, based on a flow created in node-red