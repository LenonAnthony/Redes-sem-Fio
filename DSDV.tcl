
#===================================
#     confs iniciais
#===================================
set val(chan)   Channel/WirelessChannel    ;# channel type
set val(prop)   Propagation/TwoRayGround   ;# radio-propagation model
set val(netif)  Phy/WirelessPhy            ;# network interface type
set val(mac)    Mac/802_11                 ;# MAC type
set val(ifq)    Queue/DropTail/PriQueue    ;# interface queue type
set val(ll)     LL                         ;# link layer type
set val(ant)    Antenna/OmniAntenna        ;# antenna model
set val(ifqlen) 50                         ;# max packet in ifq
set val(nn)     48                         ;# number of mobilenodes
set val(rp)     DSDV                       ;# routing protocol
set val(x)      500                      ;# X dimension of topography
set val(y)      500                      ;# Y dimension of topography
set val(stop)   100                       ;# time of simulation end

#===================================
#        Initialization        
#===================================
#criando o objeto ns
set ns_ [new Simulator]

#criando a topografia
set topo       [new Topography]
$topo load_flatgrid $val(x) $val(y)
create-god $val(nn)

#criacao do arquivo nam e do tr
set tracefile [open DSDVTESTE.tr w]
$ns_ trace-all $tracefile

set namfile [open DSDVTESTE.nam w]
$ns_ namtrace-all $namfile
$ns_ namtrace-all-wireless $namfile $val(x) $val(y)
set chan [new $val(chan)];#criando canal wireless

#===================================
#    configuracao dos nos
#===================================
$ns_ node-config -adhocRouting  $val(rp) \
                -llType        $val(ll) \
                -macType       $val(mac) \
                -ifqType       $val(ifq) \
                -ifqLen        $val(ifqlen) \
                -antType       $val(ant) \
                -propType      $val(prop) \
                -phyType       $val(netif) \
                -channel       $chan \
                -topoInstance  $topo \
		-energyModel "EnergyModel" \
          	-initialEnergy 50 \
                -txPower 0.09 \
                -rxPower 0.07 \
                -idlePower 0.01 \
                -sleeppower 0.0001 \
		-transitionPower 0.02 \
		-transitionTime 0.0005 \
                -agentTrace    ON \
                -routerTrace   ON \
                -macTrace      ON \
                -movementTrace ON

#===================================
#       criando 48 nos       
#===================================

      set n0 [$ns_ node]
      set n1 [$ns_ node]
      set n2 [$ns_ node]
      set n3 [$ns_ node]
      set n4 [$ns_ node]
      set n5 [$ns_ node]
      set n6 [$ns_ node]
      set n7 [$ns_ node]
      set n8 [$ns_ node]
      set n9 [$ns_ node]
      set n10 [$ns_ node]
      set n11 [$ns_ node]
      set n12 [$ns_ node]
      set n13 [$ns_ node]
      set n14 [$ns_ node]
      set n15 [$ns_ node]
      set n16 [$ns_ node]
      set n17 [$ns_ node]
      set n18 [$ns_ node]
      set n19 [$ns_ node]
      set n20 [$ns_ node]
      set n21 [$ns_ node]
      set n22 [$ns_ node]
      set n23 [$ns_ node]
      set n24 [$ns_ node]
      set n25 [$ns_ node]
      set n26 [$ns_ node]
      set n27 [$ns_ node]
      set n28 [$ns_ node]
      set n29 [$ns_ node]
      set n30 [$ns_ node]
      set n31 [$ns_ node]
      set n32 [$ns_ node]
      set n33 [$ns_ node]
      set n34 [$ns_ node]
      set n35 [$ns_ node]
      set n36 [$ns_ node]
      set n37 [$ns_ node]
      set n38 [$ns_ node]
      set n39 [$ns_ node]
      set n40 [$ns_ node]
      set n41 [$ns_ node]
      set n42 [$ns_ node]
      set n43 [$ns_ node]
      set n44 [$ns_ node]
      set n45 [$ns_ node]
      set n46 [$ns_ node]
      set n47 [$ns_ node]


###  Inicializando os nos com posicoes aleatorias

      $n0 set X_ [ expr 10+round(rand()*490) ]
      $n0 set Y_ [ expr 10+round(rand()*490) ]
      $n0 set Z_ 0.0
      
      $n1 set X_ [ expr 10+round(rand()*490) ]
      $n1 set Y_ [ expr 10+round(rand()*490) ]
      $n1 set Z_ 0.0
      
      $n2 set X_ [ expr 10+round(rand()*490) ]
      $n2 set Y_ [ expr 10+round(rand()*490) ]
      $n2 set Z_ 0.0

      $n3 set X_ [ expr 10+round(rand()*490) ]
      $n3 set Y_ [ expr 10+round(rand()*490) ]
      $n3 set Z_ 0.0

      $n4 set X_ [ expr 10+round(rand()*490) ]
      $n4 set Y_ [ expr 10+round(rand()*490) ]
      $n4 set Z_ 0.0
      
      $n5 set X_ [ expr 10+round(rand()*490) ]
      $n5 set Y_ [ expr 10+round(rand()*490) ]
      $n5 set Z_ 0.0
      
      $n6 set X_ [ expr 10+round(rand()*490) ]
      $n6 set Y_ [ expr 10+round(rand()*490) ]
      $n6 set Z_ 0.0

      $n7 set X_ [ expr 10+round(rand()*490) ]
      $n7 set Y_ [ expr 10+round(rand()*490) ]
      $n7 set Z_ 0.0

      $n8 set X_ [ expr 10+round(rand()*490) ]
      $n8 set Y_ [ expr 10+round(rand()*490) ]
      $n8 set Z_ 0.0

      $n9 set X_ [ expr 10+round(rand()*490) ]
      $n9 set Y_ [ expr 10+round(rand()*490) ]
      $n9 set Z_ 0.0

      $n10 set X_ [ expr 10+round(rand()*490) ]
      $n10 set Y_ [ expr 10+round(rand()*490) ]
      $n10 set Z_ 0.0
      
      $n11 set X_ [ expr 10+round(rand()*490) ]
      $n11 set Y_ [ expr 10+round(rand()*490) ]
      $n11 set Z_ 0.0

      $n12 set X_ [ expr 10+round(rand()*490) ]
      $n12 set Y_ [ expr 10+round(rand()*490) ]
      $n12 set Z_ 0.0

      $n13 set X_ [ expr 10+round(rand()*490) ]
      $n13 set Y_ [ expr 10+round(rand()*490) ]
      $n13 set Z_ 0.0

      $n14 set X_ [ expr 10+round(rand()*490) ]
      $n14 set Y_ [ expr 10+round(rand()*490) ]
      $n14 set Z_ 0.0

      $n15 set X_ [ expr 10+round(rand()*490) ]
      $n15 set Y_ [ expr 10+round(rand()*490) ]
      $n15 set Z_ 0.0

      $n16 set X_ [ expr 10+round(rand()*490) ]
      $n16 set Y_ [ expr 10+round(rand()*490) ]
      $n16 set Z_ 0.0

      $n17 set X_ [ expr 10+round(rand()*490) ]
      $n17 set Y_ [ expr 10+round(rand()*490) ]
      $n17 set Z_ 0.0

      $n18 set X_ [ expr 10+round(rand()*490) ]
      $n18 set Y_ [ expr 10+round(rand()*490) ]
      $n18 set Z_ 0.0

      $n19 set X_ [ expr 10+round(rand()*490) ]
      $n19 set Y_ [ expr 10+round(rand()*490) ]
      $n19 set Z_ 0.0

      $n20 set X_ [ expr 10+round(rand()*490) ]
      $n20 set Y_ [ expr 10+round(rand()*490) ]
      $n20 set Z_ 0.0

      $n21 set X_ [ expr 10+round(rand()*490) ]
      $n21 set Y_ [ expr 10+round(rand()*490) ]
      $n21 set Z_ 0.0

      $n22 set X_ [ expr 10+round(rand()*490) ]
      $n22 set Y_ [ expr 10+round(rand()*490) ]
      $n22 set Z_ 0.0

      $n23 set X_ [ expr 10+round(rand()*490) ]
      $n23 set Y_ [ expr 10+round(rand()*490) ]
      $n23 set Z_ 0.0

      $n24 set X_ [ expr 10+round(rand()*490) ]
      $n24 set Y_ [ expr 10+round(rand()*490) ]
      $n24 set Z_ 0.0

      $n25 set X_ [ expr 10+round(rand()*490) ]
      $n25 set Y_ [ expr 10+round(rand()*490) ]
      $n25 set Z_ 0.0

      $n26 set X_ [ expr 10+round(rand()*490) ]
      $n26 set Y_ [ expr 10+round(rand()*490) ]
      $n26 set Z_ 0.0

      $n27 set X_ [ expr 10+round(rand()*490) ]
      $n27 set Y_ [ expr 10+round(rand()*490) ]
      $n27 set Z_ 0.0

      $n28 set X_ [ expr 10+round(rand()*490) ]
      $n28 set Y_ [ expr 10+round(rand()*490) ]
      $n28 set Z_ 0.0

      $n29 set X_ [ expr 10+round(rand()*490) ]
      $n29 set Y_ [ expr 10+round(rand()*490) ]
      $n29 set Z_ 0.0

      $n30 set X_ [ expr 10+round(rand()*490) ]
      $n30 set Y_ [ expr 10+round(rand()*490) ]
      $n30 set Z_ 0.0
      
      $n31 set X_ [ expr 10+round(rand()*490) ]
      $n31 set Y_ [ expr 10+round(rand()*490) ]
      $n31 set Z_ 0.0

      $n32 set X_ [ expr 10+round(rand()*490) ]
      $n32 set Y_ [ expr 10+round(rand()*490) ]
      $n32 set Z_ 0.0

      $n33 set X_ [ expr 10+round(rand()*490) ]
      $n33 set Y_ [ expr 10+round(rand()*490) ]
      $n33 set Z_ 0.0

      $n34 set X_ [ expr 10+round(rand()*490) ]
      $n34 set Y_ [ expr 10+round(rand()*490) ]
      $n34 set Z_ 0.0

      $n35 set X_ [ expr 10+round(rand()*490) ]
      $n35 set Y_ [ expr 10+round(rand()*490) ]
      $n35 set Z_ 0.0

      $n36 set X_ [ expr 10+round(rand()*490) ]
      $n36 set Y_ [ expr 10+round(rand()*490) ]
      $n36 set Z_ 0.0

      $n37 set X_ [ expr 10+round(rand()*490) ]
      $n37 set Y_ [ expr 10+round(rand()*490) ]
      $n37 set Z_ 0.0

      $n38 set X_ [ expr 10+round(rand()*490) ]
      $n38 set Y_ [ expr 10+round(rand()*490) ]
      $n38 set Z_ 0.0

      $n39 set X_ [ expr 10+round(rand()*490) ]
      $n39 set Y_ [ expr 10+round(rand()*490) ]
      $n39 set Z_ 0.0

      $n40 set X_ [ expr 10+round(rand()*490) ]
      $n40 set Y_ [ expr 10+round(rand()*490) ]
      $n40 set Z_ 0.0

      $n41 set X_ [ expr 10+round(rand()*490) ]
      $n41 set Y_ [ expr 10+round(rand()*490) ]
      $n41 set Z_ 0.0

      $n42 set X_ [ expr 10+round(rand()*490) ]
      $n42 set Y_ [ expr 10+round(rand()*490) ]
      $n42 set Z_ 0.0

      $n43 set X_ [ expr 10+round(rand()*490) ]
      $n43 set Y_ [ expr 10+round(rand()*490) ]
      $n43 set Z_ 0.0

      $n44 set X_ [ expr 10+round(rand()*490) ]
      $n44 set Y_ [ expr 10+round(rand()*490) ]
      $n44 set Z_ 0.0

      $n45 set X_ [ expr 10+round(rand()*490) ]
      $n45 set Y_ [ expr 10+round(rand()*490) ]
      $n45 set Z_ 0.0

      $n46 set X_ [ expr 10+round(rand()*490) ]
      $n46 set Y_ [ expr 10+round(rand()*490) ]
      $n46 set Z_ 0.0

      $n46 set X_ [ expr 10+round(rand()*490) ]
      $n46 set Y_ [ expr 10+round(rand()*490) ]
      $n46 set Z_ 0.0

      $n47 set X_ [ expr 10+round(rand()*490) ]
      $n47 set Y_ [ expr 10+round(rand()*490) ]
      $n47 set Z_ 0.0



 ## mobilidade aos nos, se movendo pra lugares aleatorios em velocidade X
      
      $ns_ at 0.75 "$n0 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 0.75 "$n1 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 0.20 "$n2 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n3 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 0.75 "$n4 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 0.75 "$n5 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.50 "$n6 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n7 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n8 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n9 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n10 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n11 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n12 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n13 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n14 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n15 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n16 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n17 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n18 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n19 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n20 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n21 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n22 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n23 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n24 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n25 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n26 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n27 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n28 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n29 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n30 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n31 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n32 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n33 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0" 
      $ns_ at 1.25 "$n34 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n35 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n36 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n37 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n38 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n39 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n40 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n41 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n42 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n43 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n44 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n45 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n46 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"
      $ns_ at 1.25 "$n47 setdest [ expr 10+round(rand()*490) ] [ expr 10+round(rand()*490) ] 14.0"

            

    ## tamanho dos nos
                              
      $ns_ initial_node_pos $n0 70
      $ns_ initial_node_pos $n1 70
      $ns_ initial_node_pos $n2 70
      $ns_ initial_node_pos $n3 70
      $ns_ initial_node_pos $n4 40
      $ns_ initial_node_pos $n5 70
      $ns_ initial_node_pos $n6 70
      $ns_ initial_node_pos $n7 70
      $ns_ initial_node_pos $n8 70
      $ns_ initial_node_pos $n9 70
      $ns_ initial_node_pos $n10 70
      $ns_ initial_node_pos $n11 70
      $ns_ initial_node_pos $n12 70
      $ns_ initial_node_pos $n13 70
      $ns_ initial_node_pos $n14 70
      $ns_ initial_node_pos $n15 70
      $ns_ initial_node_pos $n16 70
      $ns_ initial_node_pos $n17 70
      $ns_ initial_node_pos $n18 70
      $ns_ initial_node_pos $n19 70
      $ns_ initial_node_pos $n20 70
      $ns_ initial_node_pos $n21 70
      $ns_ initial_node_pos $n22 70
      $ns_ initial_node_pos $n23 70
      $ns_ initial_node_pos $n24 70
      $ns_ initial_node_pos $n25 70
      $ns_ initial_node_pos $n26 70
      $ns_ initial_node_pos $n27 70
      $ns_ initial_node_pos $n28 70
      $ns_ initial_node_pos $n29 70
      $ns_ initial_node_pos $n30 70
      $ns_ initial_node_pos $n31 70
      $ns_ initial_node_pos $n32 70
      $ns_ initial_node_pos $n33 70
      $ns_ initial_node_pos $n34 70
      $ns_ initial_node_pos $n35 70
      $ns_ initial_node_pos $n36 70
      $ns_ initial_node_pos $n37 70
      $ns_ initial_node_pos $n38 70
      $ns_ initial_node_pos $n39 70
      $ns_ initial_node_pos $n40 70
      $ns_ initial_node_pos $n41 70
      $ns_ initial_node_pos $n42 70
      $ns_ initial_node_pos $n43 70
      $ns_ initial_node_pos $n44 70
      $ns_ initial_node_pos $n45 70
      $ns_ initial_node_pos $n46 70
      $ns_ initial_node_pos $n47 70

      


####  criando comunicacao entre os nos e a aplicacao CBR sobre UDP

      set udp0 [$ns_ create-connection UDP $n0 LossMonitor $n11 0]
      $udp0 set fid_ 1
      set cbr0 [$udp0 attach-app Traffic/CBR]
      $cbr0 set packetSize_ 512    
      $cbr0 set interopt_ .07
      $ns_ at 0.0 "$cbr0 start"
      $ns_ at 100.0 "$cbr0 stop"
      
      set udp1 [$ns_ create-connection UDP $n1 LossMonitor $n10 0]
      $udp1 set fid_ 1
      set cbr1 [$udp1 attach-app Traffic/CBR]
      $cbr1 set packetSize_ 512    
      $cbr1 set interopt_ .07
      $ns_ at 0.1 "$cbr1 start"
      $ns_ at 100.0 "$cbr1 stop"
      
      
      set udp2 [$ns_ create-connection UDP $n2 LossMonitor $n9 0]
      $udp2 set fid_ 1
      set cbr2 [$udp2 attach-app Traffic/CBR]
      $cbr2 set packetSize_ 512    
      $cbr2 set interopt_ .07
      $ns_ at 2.4 "$cbr2 start"
      $ns_ at 100.0 "$cbr2 stop"
      
      set udp3 [$ns_ create-connection UDP $n3 LossMonitor $n8 0]
      $udp3 set fid_ 1
      set cbr3 [$udp3 attach-app Traffic/CBR]
      $cbr3 set packetSize_ 512    
      $cbr3 set interopt_ 5
      $ns_ at 4.0 "$cbr3 start"
      $ns_ at 100.0 "$cbr3 stop"
      
      set udp4 [$ns_ create-connection UDP $n4 LossMonitor $n7 0]
      $udp4 set fid_ 1
      set cbr4 [$udp4 attach-app Traffic/CBR]
      $cbr4 set packetSize_ 512    
      $cbr4 set interopt_ 5
      $ns_ at 4.0 "$cbr4 start"
      $ns_ at 100.0 "$cbr4 stop"
      
      set udp5 [$ns_ create-connection UDP $n5 LossMonitor $n6 0]
      $udp5 set fid_ 1
      set cbr5 [$udp5 attach-app Traffic/CBR]
      $cbr5 set packetSize_ 512    
      $cbr5 set interopt_ 5
      $ns_ at 4.0 "$cbr5 start"
      $ns_ at 100.0 "$cbr5 stop"

      set udp6 [$ns_ create-connection UDP $n12 LossMonitor $n29 0]
      $udp6 set fid_ 1
      set cbr6 [$udp6 attach-app Traffic/CBR]
      $cbr6 set packetSize_ 512    
      $cbr6 set interopt_ 5
      $ns_ at 4.0 "$cbr6 start"
      $ns_ at 100.0 "$cbr6 stop"

      set udp7 [$ns_ create-connection UDP $n13 LossMonitor $n28 0]
      $udp7 set fid_ 1
      set cbr7 [$udp7 attach-app Traffic/CBR]
      $cbr7 set packetSize_ 512    
      $cbr7 set interopt_ 5
      $ns_ at 4.0 "$cbr7 start"
      $ns_ at 100.0 "$cbr7 stop"

      set udp8 [$ns_ create-connection UDP $n14 LossMonitor $n27 0]
      $udp8 set fid_ 1
      set cbr8 [$udp8 attach-app Traffic/CBR]
      $cbr8 set packetSize_ 512    
      $cbr8 set interopt_ 5
      $ns_ at 4.0 "$cbr8 start"
      $ns_ at 100.0 "$cbr8 stop"

      set udp9 [$ns_ create-connection UDP $n15 LossMonitor $n26 0]
      $udp9 set fid_ 1
      set cbr9 [$udp9 attach-app Traffic/CBR]
      $cbr9 set packetSize_ 512    
      $cbr9 set interopt_ 5
      $ns_ at 4.0 "$cbr9 start"
      $ns_ at 100.0 "$cbr9 stop"

      set udp10 [$ns_ create-connection UDP $n16 LossMonitor $n25 0]
      $udp10 set fid_ 1
      set cbr10 [$udp10 attach-app Traffic/CBR]
      $cbr10 set packetSize_ 512    
      $cbr10 set interopt_ 5
      $ns_ at 4.0 "$cbr10 start"
      $ns_ at 100.0 "$cbr10 stop"

      set udp11 [$ns_ create-connection UDP $n17 LossMonitor $n24 0]
      $udp11 set fid_ 1
      set cbr11 [$udp11 attach-app Traffic/CBR]
      $cbr11 set packetSize_ 512    
      $cbr11 set interopt_ 5
      $ns_ at 4.0 "$cbr11 start"
      $ns_ at 100.0 "$cbr11 stop"

      set udp12 [$ns_ create-connection UDP $n18 LossMonitor $n23 0]
      $udp12 set fid_ 1
      set cbr12 [$udp12 attach-app Traffic/CBR]
      $cbr12 set packetSize_ 512    
      $cbr12 set interopt_ 5
      $ns_ at 4.0 "$cbr12 start"
      $ns_ at 100.0 "$cbr12 stop"

      set udp13 [$ns_ create-connection UDP $n19 LossMonitor $n22 0]
      $udp13 set fid_ 1
      set cbr13 [$udp13 attach-app Traffic/CBR]
      $cbr13 set packetSize_ 512    
      $cbr13 set interopt_ 5
      $ns_ at 4.0 "$cbr13 start"
      $ns_ at 100.0 "$cbr13 stop"

      set udp14 [$ns_ create-connection UDP $n20 LossMonitor $n21 0]
      $udp14 set fid_ 1
      set cbr14 [$udp14 attach-app Traffic/CBR]
      $cbr14 set packetSize_ 512    
      $cbr14 set interopt_ 5
      $ns_ at 4.0 "$cbr14 start"
      $ns_ at 100.0 "$cbr14 stop"

      set udp15 [$ns_ create-connection UDP $n30 LossMonitor $n47 0]
      $udp15 set fid_ 1
      set cbr15 [$udp15 attach-app Traffic/CBR]
      $cbr15 set packetSize_ 512    
      $cbr15 set interopt_ 5
      $ns_ at 4.0 "$cbr15 start"
      $ns_ at 100.0 "$cbr15 stop"

      set udp16 [$ns_ create-connection UDP $n31 LossMonitor $n46 0]
      $udp16 set fid_ 1
      set cbr16 [$udp16 attach-app Traffic/CBR]
      $cbr16 set packetSize_ 512    
      $cbr16 set interopt_ 5
      $ns_ at 4.0 "$cbr16 start"
      $ns_ at 100.0 "$cbr16 stop"

      set udp17 [$ns_ create-connection UDP $n32 LossMonitor $n45 0]
      $udp17 set fid_ 1
      set cbr17 [$udp17 attach-app Traffic/CBR]
      $cbr17 set packetSize_ 512    
      $cbr17 set interopt_ 5
      $ns_ at 4.0 "$cbr17 start"
      $ns_ at 100.0 "$cbr17 stop"

      set udp18 [$ns_ create-connection UDP $n33 LossMonitor $n44 0]
      $udp18 set fid_ 1
      set cbr18 [$udp18 attach-app Traffic/CBR]
      $cbr18 set packetSize_ 512    
      $cbr18 set interopt_ 5
      $ns_ at 4.0 "$cbr18 start"
      $ns_ at 100.0 "$cbr18 stop"

      set udp19 [$ns_ create-connection UDP $n34 LossMonitor $n43 0]
      $udp19 set fid_ 1
      set cbr19 [$udp19 attach-app Traffic/CBR]
      $cbr19 set packetSize_ 512    
      $cbr19 set interopt_ 5
      $ns_ at 4.0 "$cbr19 start"
      $ns_ at 100.0 "$cbr19 stop"

      set udp20 [$ns_ create-connection UDP $n35 LossMonitor $n42 0]
      $udp20 set fid_ 1
      set cbr20 [$udp20 attach-app Traffic/CBR]
      $cbr20 set packetSize_ 512    
      $cbr20 set interopt_ 5
      $ns_ at 4.0 "$cbr20 start"
      $ns_ at 100.0 "$cbr20 stop"

      set udp21 [$ns_ create-connection UDP $n36 LossMonitor $n41 0]
      $udp21 set fid_ 1
      set cbr21 [$udp21 attach-app Traffic/CBR]
      $cbr21 set packetSize_ 512    
      $cbr21 set interopt_ 5
      $ns_ at 4.0 "$cbr21 start"
      $ns_ at 100.0 "$cbr21 stop"

      set udp22 [$ns_ create-connection UDP $n37 LossMonitor $n40 0]
      $udp22 set fid_ 1
      set cbr22 [$udp22 attach-app Traffic/CBR]
      $cbr22 set packetSize_ 512    
      $cbr22 set interopt_ 5
      $ns_ at 4.0 "$cbr22 start"
      $ns_ at 100.0 "$cbr22 stop"

      set udp23 [$ns_ create-connection UDP $n38 LossMonitor $n39 0]
      $udp23 set fid_ 1
      set cbr23 [$udp23 attach-app Traffic/CBR]
      $cbr23 set packetSize_ 512    
      $cbr23 set interopt_ 5
      $ns_ at 4.0 "$cbr23 start"
      $ns_ at 100.0 "$cbr23 stop"

#===================================
#        finalizando        
#===================================
#definindo o metodo finish
proc finish {} {
    global ns_ tracefile namfile
    $ns_ flush-trace
    close $tracefile
    close $namfile
    exec nam DSDVTESTE.nam &
    exit 0
}
for {set i 0} {$i < $val(nn) } { incr i } {
    $ns_ at $val(stop) "\$n$i reset"
}
$ns_ at $val(stop) "$ns_ nam-end-wireless $val(stop)"
$ns_ at $val(stop) "finish"
$ns_ at $val(stop) "puts \"done\" ; $ns_ halt"
$ns_ run
