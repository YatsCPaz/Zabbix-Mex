# Available Integration with Zabbix Media Type

### -  Netcool

With this integration we use the postzmsg to send the events to Netcool enviroment. The follwoing file are use to do this integration:

- postzmsg (binary)
- eif.conf (configuration file)
- libraries needed to execute postzmsg (example libfreebl3.so)
- local.cache
- send2netcool.sh (scrip to complie with GSMA rules)

### -  Slack

With this integration we use the Slack Media type as a base to be able to send, update and close all slack messages.

- Slack Bot (you get it from API Slack)
- Bot Token (To authenticate from Zabbix to Slack)
- Slack Custom (Zabbix in Kubernetes-docker environment)
- Notification Channel (created in Slack)
