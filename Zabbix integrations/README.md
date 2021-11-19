# Available Integration with Zabbix Media Type

### <img src="https://www.orb-data.com/wp-content/uploads/2019/01/netcool.png" alt="alt text" width="50" height="50">  Netcool

With this integration we use the postzmsg to send the events to Netcool enviroment. The following files has been use to do this integration:

- postzmsg (binary)
- eif.conf (configuration file)
- libraries needed to execute postzmsg (example libfreebl3.so)
- local.cache (Cache file)
- send2netcool.sh (scrip to complie with GSMA rules)

**Note:** All the files are in the Netcool folder.

### <img src="https://user-images.githubusercontent.com/4998725/51313627-50fc6400-1a4e-11e9-8cbe-7c40cc0bfe67.jpg" alt="alt text" width="20" height="20">  Slack

With this integration we use the Slack Media type as a base to be able to send, update and close all slack messages.

- Slack Bot (you get it from API Slack)
- Bot Token (To authenticate from Zabbix to Slack)
- Slack Custom (Zabbix in Kubernetes-docker environment)
- Notification Channel (created in Slack)
