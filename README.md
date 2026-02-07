Docker Network Routing Lab

This lab demonstrates a Docker-based network simulation
using multiple Docker bridge networks,
with a router container enabling routing and
inter-network communication.




##Network Topology

- Network `sw1`: 10.1.1.0/24
- Network `sw2`: 10.1.2.0/24
- Router container (`R1`) connected to both networks
- Client containers (`c1`, `c2`) connected to separate networks


### Setup Lab
``bash
./scripts/setup.sh


## Technical Concepts Demonstrated

- Docker custom bridge networks
- Linux static routing
- IP forwarding
- Multi-homed container (router)
- Layer 3 packet forwarding inside container


