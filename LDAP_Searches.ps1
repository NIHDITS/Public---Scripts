
#script starts over every 10 seconds


While ($ctr -lt 10)

{
$net = netstat -na -p tcp | findstr /i /L /c:"389" /c:"636" /c:"3268" /c:"3269"
$net | select-string "Established" | findstr "10.20.0.215"
$net | select-string "Established" | findstr "10.21.0.142"
$net | select-string "Established" | findstr "10.71.0.77"
start-sleep -seconds 10
 ''
 { 
 continue
 }
 Write-Host -Object $ctr

}




#ontarget computer see what is listening or established
#command prompt

#looks for all LDAP connection ports
#netstat -a -n -o | findstr /i /L /c:"389" /c:"636" /c:"389" /c:"3269"


#kill PID (session)
#taskkill /f /pid 11248
