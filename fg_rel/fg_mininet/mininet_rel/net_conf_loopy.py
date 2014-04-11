#!/usr/bin/python

from mininet.cli import CLI
from mininet.log import setLogLevel, info, error
from mininet.net import Mininet
from mininet.link import Intf
from mininet.topolib import TreeTopo
from mininet.topo import Topo
from mininet.node import CPULimitedHost
from mininet.node import RemoteController
from mininet.link import TCLink
from mininet.util import dumpNodeConnections

class MyTopo( Topo ):
    "Simple topology example."

    def __init__( self ):
        "Create custom topo."

        # Initialize topology
        Topo.__init__( self )

        # Add hosts and switches
        p = self.addHost( 'p' )
        c = self.addHost( 'c' )
        t11 = self.addHost( 't11' )
        t12 = self.addHost( 't12' )
        t13 = self.addHost( 't13' )
        t21 = self.addHost( 't21' )
        t22 = self.addHost( 't22' )
        t23 = self.addHost( 't23' )
        t31 = self.addHost( 't31' )
        t32 = self.addHost( 't32' )
        t33 = self.addHost( 't33' )
        t41 = self.addHost( 't41' )
        t42 = self.addHost( 't42' )
        t43 = self.addHost( 't43' )
		
        s1 = self.addSwitch( 's1' )
        s2 = self.addSwitch( 's2' )
        s3 = self.addSwitch( 's3' )
        s4 = self.addSwitch( 's4' )
        s11 = self.addSwitch( 's11' )
        s12 = self.addSwitch( 's12' )
	#link opts
        local_linkopts = dict(bw=10, delay='5ms', loss=0, max_queue_size=1000, use_htb=True)
        wide_linkopts = dict(bw=10, delay='50ms', loss=0, max_queue_size=1000, use_htb=True)
        dsa_linkopts = dict(bw=1000, delay='1ms', loss=0, max_queue_size=10000, use_htb=True)
        # Add links
        self.addLink( p,s11, **wide_linkopts )
        self.addLink( s11,s1, **local_linkopts )
        self.addLink( s11,s3, **local_linkopts )
        self.addLink( s1,s2, **local_linkopts )
        self.addLink( s3,s4, **local_linkopts )
        self.addLink( s2,s12, **local_linkopts )
        self.addLink( s4,s12, **local_linkopts )
        self.addLink( s12,c, **wide_linkopts )
	#for creating redundant paths
        self.addLink( s3,s2, **local_linkopts )
        self.addLink( s1,s4, **local_linkopts )
        #for DSA 1
        self.addLink( s1,t11, **dsa_linkopts )
        self.addLink( s1,t12, **dsa_linkopts )
        self.addLink( s1,t13, **dsa_linkopts )
        #for DSA 2
        self.addLink( s2,t21, **dsa_linkopts )
        self.addLink( s2,t22, **dsa_linkopts )
        self.addLink( s2,t23, **dsa_linkopts )
        #for DSA 3
	self.addLink( s3,t31, **dsa_linkopts )
        self.addLink( s3,t32, **dsa_linkopts )
        self.addLink( s3,t33, **dsa_linkopts )
	#for DSA 4
        self.addLink( s4,t41, **dsa_linkopts )
        self.addLink( s4,t42, **dsa_linkopts )
        self.addLink( s4,t43, **dsa_linkopts )
        #Try to configure g1-eth1
#topos = { 'newtopo': ( lambda: MyTopo() ) }

if __name__ == '__main__':
    setLogLevel( 'info' )

    info( '*** Creating network\n' )
    net = Mininet( topo=MyTopo(), link=TCLink, controller=RemoteController, autoStaticArp=True)
    cont=net.addController('r1', controller=RemoteController, ip='192.168.56.1',port=6633)
    cont.start()
    
    p, c = net.getNodeByName('p', 'c')
    t11, t12, t13, t21, t22, t23, t31, t32, t33, t41, t42, t43 = net.getNodeByName('t11','t12','t13','t21','t22','t23','t31','t32','t33','t41','t42','t43')
    
    p.setIP(ip='10.0.0.2', prefixLen=32) #, intf='eth0')
    c.setIP(ip='10.0.0.1', prefixLen=32) #, intf='eth0')
    
    t11.setIP(ip='10.0.0.11', prefixLen=32)
    t12.setIP(ip='10.0.0.12', prefixLen=32)
    t13.setIP(ip='10.0.0.12', prefixLen=32)
    t21.setIP(ip='10.0.0.21', prefixLen=32)
    t22.setIP(ip='10.0.0.22', prefixLen=32)
    t23.setIP(ip='10.0.0.23', prefixLen=32)
    t31.setIP(ip='10.0.0.31', prefixLen=32)
    t32.setIP(ip='10.0.0.32', prefixLen=32)
    t33.setIP(ip='10.0.0.33', prefixLen=32)
    t41.setIP(ip='10.0.0.41', prefixLen=32)
    t42.setIP(ip='10.0.0.42', prefixLen=32)
    t43.setIP(ip='10.0.0.43', prefixLen=32)
    
    p.setMAC(mac='00:00:00:01:00:02')
    c.setMAC(mac='00:00:00:01:00:01')
    
    t11.setMAC(mac='00:00:00:00:01:01')
    t12.setMAC(mac='00:00:00:00:01:02')
    t13.setMAC(mac='00:00:00:00:01:03')
    t21.setMAC(mac='00:00:00:00:02:01')
    t22.setMAC(mac='00:00:00:00:02:02')
    t23.setMAC(mac='00:00:00:00:02:03')
    t31.setMAC(mac='00:00:00:00:03:01')
    t32.setMAC(mac='00:00:00:00:03:02')
    t33.setMAC(mac='00:00:00:00:03:03')
    t41.setMAC(mac='00:00:00:00:04:01')
    t42.setMAC(mac='00:00:00:00:04:02')
    t43.setMAC(mac='00:00:00:00:04:03')
    #To fix "network is unreachable"
    p.setDefaultRoute(intf='p-eth0')
    t31.setDefaultRoute(intf='t31-eth0')
    t32.setDefaultRoute(intf='t32-eth0')
    #for now to eliminate ARP based broadcast storm
    """
    net.staticArp()
    p.setARP(ip='10.0.0.1', mac='00:00:00:01:00:01')
    p.setARP(ip='10.0.0.111', mac='00:00:00:01:01:01')
    c.setARP(ip='10.0.0.2', mac='00:00:00:01:00:02')
    t32.setARP(ip='10.0.0.31', mac='00:00:00:00:03:01')
    """
    net.start()
    CLI( net )
    net.stop()
