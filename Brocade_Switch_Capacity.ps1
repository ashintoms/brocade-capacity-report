
##################################################################
#    Brocade Switch Script                                       #
##################################################################
#
# Windows powershell script to login to a brocade switch 
# then run the command switch show and port show and prepare a switch capacity report
#
#
###################################################################

$expectCmd = "version"
$expect = "Kernel:"
$switchIp = "10.xx.xx.xx1"
$username = "admin"
$password = "password"

$spath = (Split-Path -parent $MyInvocation.MyCommand.Definition) + "\ps_ssh_example.ps1"
. $spath




[console]::TreatControlCAsInput = $true

    New-SshSession $username $password $switchIp
    [array]$switchShowOut = execp_ssh ("switchshow")
    $switchShowOut
    cust_sleep -sleep $sleep
    [array]$portNameOut = execp_ssh ("portname")
    $portNameOut
    remove-sshsession

    #Analysis
    $Total_Ports = ($switchShowOut | select-string " id ").count
    $Total_Online_Ports = ($switchShowOut | select-string " id " | select-string -NotMatch "NO_LIGHT","No_Sync" ).count
    
    "Total Ports = $Total_Ports"
    "Total Used Ports = $Total_Online_Ports"
    
    $ports_with_names = ($portNameOut | foreach {
        $line = $_
        $port_num = (($line -split ":")[0] -split "\s+")[1]
        " " + $port_num + " "
    }) -join ","
    
    
    $ports_reserved = @($switchShowOut | select-string " id " | select-string "NO_LIGHT" | select-string $ports_with_names).count
    "Ports Reserved = " + $ports_reserved 

exit
    
    
[console]::TreatControlCAsInput = $false