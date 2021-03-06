#!/bin/bash

echo $1
sel=$1

DS=1024

PS1_DSTIP=10.0.1.0
PS1_DSTPORT=6000
CR1_LPORT=6000

PS2_DSTIP=10.0.1.1
PS2_DSTPORT=6001
CR2_LPORT=6001

PS3_DSTIP=10.0.1.2
PS3_DSTPORT=6002
CR3_LPORT=6002

###
# C1D=1
# P1D=2
# P1_REQDICT='{"datasize":100,"slack_metric":150,"func_list":["fft","upsampleplot"]}'
# P1_APPPREFDICT='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}'
# P1_CLIP=10.0.1.0

# C2D=1
# P2D=10
# P2_REQDICT='{"datasize":100,"slack_metric":150,"func_list":["fft","upsampleplot"]}'
# P2_APPPREFDICT='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}'
# P2_CLIP=10.0.1.1

# C3D=1
# P3D=20
# P3_REQDICT='{"datasize":100,"slack_metric":150,"func_list":["fft","upsampleplot"]}'
# P3_APPPREFDICT='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}'
# P3_CLIP=10.0.1.2

# C4D=1
# P4D=30
# P4_REQDICT='{"datasize":100,"slack_metric":150,"func_list":["fft","upsampleplot"]}'
# P4_APPPREFDICT='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}'
# P4_CLIP=10.0.1.3

C1D=1
P1D=2
P1_REQDICT='{"datasize":20,"slack_metric":50,"func_list":["fft","upsampleplot"]}'
P1_APPPREFDICT='{"m_p":10,"m_u":0,"x_p":0,"x_u":0}'
P1_CLIP=10.0.1.0

C2D=1
P2D=12
P2_REQDICT='{"datasize":15,"slack_metric":60,"func_list":["fft","upsampleplot"]}'
P2_APPPREFDICT='{"m_p":1,"m_u":10,"x_p":0,"x_u":0}'
P2_CLIP=10.0.1.1

C3D=1
P3D=20
P3_REQDICT='{"datasize":15,"slack_metric":20,"func_list":["fft","upsampleplot"]}'
P3_APPPREFDICT='{"m_p":10,"m_u":0,"x_p":0,"x_u":0}'
P3_CLIP=10.0.1.2

C4D=1
P4D=30
P4_REQDICT='{"datasize":60,"slack_metric":80,"func_list":["fft","upsampleplot"]}'
P4_APPPREFDICT='{"m_p":1,"m_u":10,"x_p":0,"x_u":0}'
P4_CLIP=10.0.1.3

C5D=1
P5D=100
P5_REQDICT='{"datasize":50,"slack_metric":100,"func_list":["fft","upsampleplot"]}'
P5_APPPREFDICT='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}'
P5_CLIP=10.0.1.4

C6D=1
P6D=110
P6_REQDICT='{"datasize":50,"slack_metric":100,"func_list":["fft","upsampleplot"]}'
P6_APPPREFDICT='{"m_p":1,"m_u":10,"x_p":0,"x_u":0}'
P6_CLIP=10.0.1.5

C7D=1
P7D=120
P7_REQDICT='{"datasize":55,"slack_metric":120,"func_list":["fft","upsampleplot"]}'
P7_APPPREFDICT='{"m_p":1,"m_u":10,"x_p":0,"x_u":0}'
P7_CLIP=10.0.1.6

C8D=1
P8D=130
P8_REQDICT='{"datasize":80,"slack_metric":150,"func_list":["fft","upsampleplot"]}'
P8_APPPREFDICT='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}'
P8_CLIP=10.0.1.7

C9D=1
P9D=230
P9_REQDICT='{"datasize":20,"slack_metric":200,"func_list":["fft","upsampleplot"]}'
P9_APPPREFDICT='{"m_p":10,"m_u":0,"x_p":0,"x_u":0}'
P9_CLIP=10.0.1.8

C10D=1
P10D=240
P10_REQDICT='{"datasize":20,"slack_metric":200,"func_list":["fft","upsampleplot"]}'
P10_APPPREFDICT='{"m_p":1,"m_u":10,"x_p":0,"x_u":0}'
P10_CLIP=10.0.1.9

C11D=1
P11D=250
P11_REQDICT='{"datasize":20,"slack_metric":50,"func_list":["fft","upsampleplot"]}'
P11_APPPREFDICT='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}'
P11_CLIP=10.0.1.10

# ---------------------------------------------------------------------------------
C12D=1
P12D=251
P12_REQDICT='{"datasize":20,"slack_metric":50,"func_list":["fft","upsampleplot"]}'
P12_APPPREFDICT='{"m_p":10,"m_u":0,"x_p":0,"x_u":0}'
P12_CLIP=10.0.1.11

C13D=1
P13D=262
P13_REQDICT='{"datasize":15,"slack_metric":60,"func_list":["fft","upsampleplot"]}'
P13_APPPREFDICT='{"m_p":1,"m_u":10,"x_p":0,"x_u":0}'
P13_CLIP=10.0.1.12

C14D=1
P14D=270
P14_REQDICT='{"datasize":15,"slack_metric":20,"func_list":["fft","upsampleplot"]}'
P14_APPPREFDICT='{"m_p":10,"m_u":0,"x_p":0,"x_u":0}'
P14_CLIP=10.0.1.13

C15D=1
P15D=280
P15_REQDICT='{"datasize":60,"slack_metric":80,"func_list":["fft","upsampleplot"]}'
P15_APPPREFDICT='{"m_p":1,"m_u":10,"x_p":0,"x_u":0}'
P15_CLIP=10.0.1.14

C16D=1
P16D=350
P16_REQDICT='{"datasize":50,"slack_metric":100,"func_list":["fft","upsampleplot"]}'
P16_APPPREFDICT='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}'
P16_CLIP=10.0.1.15

C17D=1
P17D=360
P17_REQDICT='{"datasize":50,"slack_metric":100,"func_list":["fft","upsampleplot"]}'
P17_APPPREFDICT='{"m_p":1,"m_u":10,"x_p":0,"x_u":0}'
P17_CLIP=10.0.1.16

C18D=1
P18D=370
P18_REQDICT='{"datasize":55,"slack_metric":120,"func_list":["fft","upsampleplot"]}'
P18_APPPREFDICT='{"m_p":1,"m_u":10,"x_p":0,"x_u":0}'
P18_CLIP=10.0.1.17

C19D=1
P19D=380
P19_REQDICT='{"datasize":80,"slack_metric":150,"func_list":["fft","upsampleplot"]}'
P19_APPPREFDICT='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}'
P19_CLIP=10.0.1.18

C20D=1
P20D=480
P20_REQDICT='{"datasize":20,"slack_metric":200,"func_list":["fft","upsampleplot"]}'
P20_APPPREFDICT='{"m_p":10,"m_u":0,"x_p":0,"x_u":0}'
P20_CLIP=10.0.1.19

C21D=1
P21D=490
P21_REQDICT='{"datasize":20,"slack_metric":200,"func_list":["fft","upsampleplot"]}'
P21_APPPREFDICT='{"m_p":1,"m_u":10,"x_p":0,"x_u":0}'
P21_CLIP=10.0.1.20

C22D=1
P22D=500
P22_REQDICT='{"datasize":20,"slack_metric":50,"func_list":["fft","upsampleplot"]}'
P22_APPPREFDICT='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}'
P22_CLIP=10.0.1.21

MINHTBDIR='/home/ubuntu/mininet/mininet_rel/host_rel/tc_rel/htb_rel'

if [ $1  = 'p' ]; then
  python producer.py --intf=p-eth0 --dtst_port=7000 --dtsl_ip=10.0.0.255 --dtsl_port=7000 --cl_ip=10.0.0.1 \
                     --proto=tcp --tx_type=file --file_url=ltx.dat --kstardata_url=... --logto=console --nodename=p \
                     --req_dict='{"datasize":1,"slack_metric":10,"func_list":["fft","upsampleplot"]}' \
                     --app_pref_dict='{"m_p":1,"m_u":1,"x_p":0,"x_u":0}' \
                     --htbdir='/home/ubuntu/mininet/mininet_rel/host_rel/tc_rel/htb_rel'
elif [ ${sel:0:2}  = 'ps' ]; then
  i=${sel:2:1}
  dstipvar='PS'$i'_DSTIP'
  dstportvar='PS'$i'_DSTPORT'
  python sender.py --dst_ip=${!dstipvar} --dst_lport=${!dstportvar} --datasize=$DS --proto=tcp --tx_type=kstardata2 \
                   --file_url=ltx.dat --logto=console --kstardata_url=/home/ubuntu/large_ecei_data.bp
elif [ ${sel:0:1}  = 'p' ]; then
  i=${sel:1}
  dvar='P'$i'D'
  sleep ${!dvar}
  
  reqdictvar='P'$i'_REQDICT'
  appprefvar='P'$i'_APPPREFDICT'
  clipvar='P'$i'_CLIP'
  python producer.py --intf=$sel'-eth0' --dtst_port=7000 --dtsl_ip=10.0.0.255 --dtsl_port=7000 --cl_ip=${!clipvar} \
                     --proto=tcp --tx_type=fastdata --file_url=ltx1.dat --kstardata_url=/home/ubuntu/large_ecei_data.bp \
                     --logto=file --nodename=$sel --req_dict=${!reqdictvar} --app_pref_dict=${!appprefvar} \
                     --htbdir=$MINHTBDIR
elif [ $1  = 'c' ]; then
  python consumer.py --intf=lo --cl_port_list=6000,6001,6002 --dtst_port=7000 --dtsl_ip=10.0.0.255 \
                     --dtsl_port=7000 --proto=tcp --rx_type=kstardata --logto=console --nodename=mfa
elif [ ${sel:0:2}  = 'cr' ]; then
  i=${sel:2:1}
  lportvar='CR'$i'_LPORT'
  python receiver.py --lintf='c'$i'-eth0' --lport=${!lportvar} --proto=tcp --rx_type=kstardata --file_url='rx'${!lportvar}'.dat' --logto=console
elif [ ${sel:0:1}  = 'c' ]; then
  i=${sel:1}
  dvar='C'$i'D'
  sleep ${!dvar}
  python consumer.py --intf=$sel'-eth0' --cl_port_list=6000 --dtst_port=7000 --dtsl_ip=10.0.0.255 --dtsl_port=7000 \
                     --proto=tcp --rx_type=kstardata --logto=file --nodename=$sel
elif [ $1  = 't' ]; then
  python transit.py --nodename=t --intf=lo --htbdir=$MINHTBDIR --dtsl_ip=127.0.0.1 --dtsl_port=7002 --dtst_port=7001 --logto=file --trans_type=file
elif [ ${sel:0:1}  = 't' ]; then
  python transit.py --nodename=$sel --intf=$sel'-eth0' --htbdir=$MINHTBDIR --dtsl_ip=10.0.0.255 --dtsl_port=7001 --dtst_port=7001 --logto=file --trans_type=file
elif [ $1  = 's' ]; then
  #python sender.py --dst_ip=127.0.0.1 --dst_lport=6000 --datasize=$DS --proto=tcp --tx_type=fastdata --file_url=ltx.dat --logto=console  --kstardata_url=/media/portable_large/large_ecei_data.bp
  python sender.py --dst_ip=10.0.0.31 --dst_lport=6000 --datasize=$DS --proto=tcp --tx_type=fastdata --file_url=ltx.dat --logto=console  --kstardata_url=/media/portable_large/large_ecei_data.bp
elif [ ${sel:0:1}  = 's' ]; then
  python sender.py --dst_ip=127.0.0.1 --dst_lport=${sel:1} --datasize=$DS --proto=tcp --tx_type=kstardata --file_url=ltx.dat --logto=console --kstardata_url=/home/ubuntu/large_ecei_data.bp
elif [ $1  = 'r' ]; then
  #python receiver.py --lintf=lo --lport=6000 --proto=tcp --rx_type=kstardata --file_url=/home/mehmet/Desktop/rx.dat --logto=console
  python receiver.py --lintf=t31-eth0 --lport=6000 --proto=tcp --rx_type=kstardata --file_url=/home/mehmet/Desktop/rx.dat --logto=console
elif [ $1  = 'glf' ]; then
	dd if=/dev/urandom of=lltx.dat bs=1024 count=1000000000 #outputs bs x count Bs 
elif [ $1  = 'k' ]; then
  #sudo rm -r /tmp/fft6*; mkdir /tmp/fft6000; mkdir /tmp/fft6001
  #sudo rm -r /tmp/upsampleplot6*; mkdir /tmp/upsampleplot6000; mkdir /tmp/upsampleplot6001
  #sudo rm /tmp/fft*; sudo rm /tmp/upsampleplot*
  sudo pkill -f sleep
  echo 'sleeps are killed'
  sudo pkill -f transit
  echo 'transits are killed'
  sudo pkill -f producer
  echo 'producers are killed'
  sudo pkill -f consumer
  echo 'consumers are killed'
  sudo pkill -f run_hosts
  echo 'run_hosts are killed'
  #sudo pkill -f eceiproc
elif [ $1  = 'den' ]; then
  g++ deneme.c -o deneme
  ./deneme
elif [ $1  = 'ep' ]; then
  make eceiproc
  #./eceiproc --datafname "/media/portable_large/ecei_data.bp" \
  #           --outdir "/media/portable_large/cb_sim_rel/fg_rel/fg_mininet/mininet_rel/host_rel/companalysis" \
  #           --compfname "fft_1.dat"
elif [ $1  = 'ep2' ]; then
  make eceiproc2
  ./eceiproc2 --stpdst=6000
else
	echo "Argument did not match !"
fi
