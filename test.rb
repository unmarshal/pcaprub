#!/usr/bin/env ruby

# this simply opens a pcap dump file and writes raw packets to it.
# you must specify the filename and the datalink type: 0 for 
# loopback, 1 for ethernet. Look at /usr/include/net/bpf.h for
# all of the loopback types.

#define DLT_NULL        0       /* no link-layer encapsulation */
#define DLT_EN10MB      1       /* Ethernet (10Mb) */
#define DLT_EN3MB       2       /* Experimental Ethernet (3Mb) */
#define DLT_AX25        3       /* Amateur Radio AX.25 */
#define DLT_PRONET      4       /* Proteon ProNET Token Ring */
#define DLT_CHAOS       5       /* Chaos */
#define DLT_IEEE802     6       /* IEEE 802 Networks */
#define DLT_ARCNET      7       /* ARCNET */
#define DLT_SLIP        8       /* Serial Line IP */
#define DLT_PPP         9       /* Point-to-point Protocol */
#define DLT_FDDI        10      /* FDDI */
#define DLT_ATM_RFC1483 11      /* LLC/SNAP encapsulated atm */
#define DLT_RAW         12      /* raw IP */

require './pcaprub'

pd = Pcap::dump_open("dump.pcap", 1)

pd.dump("AAAAA") # raw packet contents
pd.dump("BBBBB")

# run this and load it up with tcpdump -r ./dump.pcap
