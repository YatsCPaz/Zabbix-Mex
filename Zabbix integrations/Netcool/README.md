# :construction_worker: How to setup Netcool integration
#### 1. Move repository files on /usr/lib/zabbix/alertscripts/ directory
    mv eif.conf files.tar.gz postzmsg send2netcool.sh local.cache /usr/lib/zabbix/alertscripts/
    
 **Note**: Only decompress tar.gz file if you don't have libraries  to execute postzmsg already in your system
    
##### 1.1 Add EIF probe data in the following directory /usr/lib/zabbix/alertscripts/eif.conf
    ServerLocation=<eif probe IP Address>
    ServerPort=<eif probe port >
    EventMaxSize=4096
    BufferEvents=YES
    BufEvtMaxSize=1000
    ##Cache file path
    BufEvtPath=/usr/lib/zabbix/alertscripts/local.cache

  
#### 2. Create a New  Media Type script in Zabbix
- Define Media type name
- Select Media Type (script)
- Define script name (Script send2netcool.sh had to be on /usr/lib/zabbix/alertscripts/ directory)
- Add in Script parameters field:

      {ALERT.MESSAGE}

##### 2.2 Define Message types on Message templates
##### Create Problem message type
- Subject can be empty 

      Problem: {EVENT.NAME}
      
- Message option is use to add parameters into send2netcool.sh script with ALERT.MESSAGE object (Example)

      {HOST.NAME}|{HOST.IP}|{EVENT.NAME}|{INVENTORY.OS}|{TRIGGER.HOSTGROUP.NAME}|{ITEM.KEY}|{ITEM.VALUE}|{ITEM.NAME}|{TRIGGER.NAME}|Zabbix|{EVENT.NSEVERITY}|{EVENT.VALUE}

##### Create Problem recovery message type
- Subject can be empty 
      
      Resolved in {EVENT.DURATION}: {EVENT.NAME}
      
- Message option is use to add parameter into send2netcool.sh script with ALERT.MESSAGE object 

      {HOST.NAME}|{HOST.IP}|{EVENT.NAME}|{INVENTORY.OS}|{TRIGGER.HOSTGROUP.NAME}|{ITEM.KEY}|{ITEM.VALUE}|{ITEM.NAME}|{TRIGGER.NAME}|Zabbix|{EVENT.NSEVERITY}|{EVENT.VALUE} 

#### 3. Configuring Action in Zabbix
##### 3.1 Create new action
- Add Action name in Actions tab
- Add condition (Example)

      Trigger severity is greater than or equals High
#### 3.2 Configure Operations Tab 
 In operations field add the following configuration
- Operation type: Send message
- Send to users: <default user admin>
- Send only to: <Netcool Media type name>

**Note**: Recovery and Update fields are the same configuration

