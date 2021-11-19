#!/bin/sh
path="/usr/lib/zabbix/alertscripts"
hname=$(echo "$1" |awk -F '|' '{print$1}')
hadd=$(echo "$1" |awk -F '|' '{print$2}')
msg=$(echo "$1" |awk -F '|' '{print$3}')
ctype=$(echo "$1" |awk -F '|' '{print$4}')
scomp=$(echo "$1" |awk -F '|' '{print$5}')
instid=$(echo "$1" |awk -F '|' '{print$6}')
instval=$(echo "$1" |awk -F '|' '{print$7}')
instsit=$(echo "$1" |awk -F '|' '{print$8}')
sitname=$(echo "$1" |awk -F '|' '{print$9}' |sed 's/sdc/rox/')
classn=$(echo "$1" |awk -F '|' '{print$10}')
sev=$(echo "$1" |awk -F '|' '{print$11}')
type=$(echo "$1" |awk -F '|' '{print$12}')
cuscode=$(echo "$sitname" |awk -F '_' '{print$1}'|tr '[a-z]' '[A-Z]')
comp=$(echo "$sitname" |awk -F '_' '{print$4}'|tr '[a-z]' '[A-Z]')
"$path"/postzmsg -f "$path"/eif.conf \
msg="$msg" \
hostname="$hname" \
origin="$hadd" \
ComponentType="$ctype" \
Component="$comp" \
SubComponent="$scomp" \
InstanceId="$instid" \
InstanceValue="$instval" \
InstanceSituation="$instsit" \
situation_name="$sitname" \
ClassName="$classn" \
severity="$sev" \
type="$type" \
CustomerCode="$cuscode" \
Zabbix_Event \
Zabbix &
echo " " >> "$path"/result.log
echo " " >> "$path"/result.log
echo " " >> "$path"/result.log
echo "Hostname: "$hname >> "$path"/result.log
echo "IP: "$hadd >> "$path"/result.log
echo "Message: "$msg >> "$path"/result.log
echo "Comp Type: "$ctype >> "$path"/result.log
echo "Component: "$comp >> "$path"/result.log
echo "SubComp: "$scomp >> "$path"/result.log
echo "Inst ID: "$instid >> "$path"/result.log
echo "Inst Val: "$instval >> "$path"/result.log
echo "Inst Sit: "$instsit >> "$path"/result.log
echo "Sitname: "$sitname >> "$path"/result.log
echo "Class: "$classn >> "$path"/result.log
echo "Severity: "$sev >> "$path"/result.log
echo "Type: "$type >> "$path"/result.log
echo "Cust code: "$cuscode >> "$path"/result.log
