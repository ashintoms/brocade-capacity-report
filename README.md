# brocade-capacity-report
Brocade Fibre Channel Switch Capacity Report using Powershell script

Download this code and place it on a laptop/server with access to the brocade switch.

Update brocade switch ip, username and password

```
$switchIp = "10.xx.xx.xx1"
$username = "admin"
$password = "password"
```

Run the script to generate the report:

Sample Output:
```
PS D:\> .\Brocade_Switch_Capacity.ps1
switchName:     DS_165191
switchType:     66.1
switchState:    Online
switchMode:     Native
switchRole:     Principal
switchDomain:   2
switchId:       fffc02
switchWwn:      10:00:00:xx:xx:xx:c3:e6
zoning:         ON (WINSAN)
switchBeacon:   OFF
FC Router:      OFF
Allow XISL Use: OFF
LS Attributes:  [FID: 128, Base Switch: No, Default Switch: Yes, Address Mode 0]

Index Port Address Media Speed State     Proto
==============================================
  0   0   020f00   id    N8   Online      FC  E-Port  10:00:50:eb:1a:3e:1c:64 "DS_6510BT_FFF44" (downstream)(Trunk mast
er)
  1   1   020d00   id    N8   Online      FC  F-Port  50:00:09:72:08:3e:e9:59
  2   2   020b00   id    N8   Online      FC  F-Port  50:00:09:72:08:3e:e9:61
  3   3   020900   id    N8   Online      FC  G-Port
  4   4   020e00   id    N4   Online      FC  F-Port  10:00:00:00:c9:55:dd:de
  5   5   020c00   id    N4   Online      FC  F-Port  21:01:00:e0:8b:aa:c6:ea
  6   6   020a00   id    N4   Online      FC  F-Port  21:00:00:e0:8b:8a:c6:ea
  7   7   020800   id    N8   Online      FC  F-Port  21:00:00:24:ff:4f:96:a6
  8   8   020700   id    N8   Online      FC  F-Port  50:00:09:73:00:0a:75:20
  9   9   020500   id    N8   Online      FC  F-Port  50:00:09:73:00:0a:75:24
 10  10   020300   id    N8   Online      FC  F-Port  50:00:09:73:00:0a:75:58
 11  11   020100   id    N8   Online      FC  F-Port  50:00:09:73:00:0a:75:64
 12  12   020600   id    N4   Online      FC  F-Port  10:00:00:00:c9:56:2f:d5
 13  13   020400   id    N4   Online      FC  F-Port  10:00:00:00:c9:56:2f:d4
 14  14   020200   id    N8   No_Light    FC
 15  15   020000   id    N8   No_Light    FC
 16  16   022700   id    N8   No_Light    FC
 17  17   022500   id    N8   No_Light    FC
 18  18   022300   id    N8   Online      FC  F-Port  50:06:01:65:46:e0:5a:82
 19  19   022100   id    N8   Online      FC  F-Port  50:06:01:6d:46:e0:5a:82
 20  20   022600   id    N8   No_Light    FC
 21  21   022400   id    N2   Online      FC  F-Port  10:00:00:00:c9:42:b0:4f
 22  22   022200   id    N8   Online      FC  E-Port  10:00:50:eb:1a:3e:1c:64 "DS_6510BT_FFF44" (Trunk master)
 23  23   022000   id    N8   No_Light    FC
 24  24   021f00   id    N8   No_Light    FC
 25  25   021d00   id    N8   No_Light    FC
 26  26   021b00   id    N8   No_Light    FC
 27  27   021900   id    N8   No_Light    FC
 28  28   021e00   id    N8   No_Light    FC
 29  29   021c00   id    N8   No_Light    FC
 30  30   021a00   id    N8   No_Light    FC
 31  31   021800   id    N8   No_Light    FC
 32  32   021700   id    N8   No_Light    FC
 33  33   021500   id    N8   No_Light    FC
 34  34   021300   id    N8   No_Light    FC
 35  35   021100   id    N8   No_Light    FC
 36  36   021600   id    N8   No_Light    FC
 37  37   021400   id    N8   No_Light    FC
 38  38   021200   id    N8   No_Light    FC
 39  39   021000   id    N8   No_Light    FC
Kernel:     2.6.14.2
DS_5100III43_165191:FID128:admin> portname;version
Total Ports = 40
Total Used Ports = 18
Ports Reserved = 0
```

Thanks to @clintonskitson for his powershell ssh modules.
