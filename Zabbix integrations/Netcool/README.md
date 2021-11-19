#  How to setup Netcool integration
####1. Add EIF probe data in eif.conf file on / directory
    ServerLocation=<eif probe IP Address>
    ServerPort=<eif probe port >
    EventMaxSize=4096
    BufferEvents=YES
    BufEvtMaxSize=1000
	 ##Cache file path
    BufEvtPath=/usr/lib/zabbix/alertscripts/local.cache
  
#### 1. Create a New  Media Type script in Zabbix
- Define Media type name
- Select Media Type (script)
- Define script name (Script send2netcool.sh had to be on / directory)
- Add Script parameters ( {ALERT.MESSAGE} )

##### 1.2 Define Message types on Message templates
##### Create Problem message type
- Subject can be empty (Problem: {EVENT.NAME})
- Message option is use to add parameter into send2netcool.sh script with ALERT.MESSAGE object ( {HOST.NAME}|{HOST.IP}|{EVENT.NAME}|{INVENTORY.OS}|{TRIGGER.HOSTGROUP.NAME}|{ITEM.KEY}|{ITEM.VALUE}|{ITEM.NAME}|{TRIGGER.NAME}|Zabbix|{EVENT.NSEVERITY}|{EVENT.VALUE} )

##### Create Problem recovery message type
- Subject can be empty (Resolved in {EVENT.DURATION}: {EVENT.NAME})
- Message option is use to add parameter into send2netcool.sh script with ALERT.MESSAGE object ( {HOST.NAME}|{HOST.IP}|{EVENT.NAME}|{INVENTORY.OS}|{TRIGGER.HOSTGROUP.NAME}|{ITEM.KEY}|{ITEM.VALUE}|{ITEM.NAME}|{TRIGGER.NAME}|Zabbix|{EVENT.NSEVERITY}|{EVENT.VALUE} )

#### 2. User
