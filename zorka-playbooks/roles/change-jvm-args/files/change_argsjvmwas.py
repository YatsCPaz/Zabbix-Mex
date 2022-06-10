execfile('wsadminlib.py')
enableDebugMessages()
newvalue = sys.argv[0]
propertyname= 'genericJvmArguments'
for nodename,servername  in listAllAppServers():
 currentvalue=AdminTask.showJVMProperties('[-nodeName %s -serverName %s -propertyName %s]' %(nodename,servername,propertyname))
 additionalvalue = currentvalue +" "+ newvalue
 print setJvmProperty(nodename,servername,propertyname,additionalvalue)

print 'Change Saving...'
saveAndSync()
