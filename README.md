Docker Network Routing Lab

This lab demonstrates a Docker-based network simulation
using multiple Docker bridge networks,
with a router container enabling routing and
inter-network communication.





Network Topology

- Network `sw1`: 10.1.1.0/24
- Network `sw2`: 10.1.2.0/24
- Router container (`R1`) connected to both networks
- Client containers (`c1`, `c2`) connected to separate networks

 Setup Lab
```bash
./scripts/setup.sh
- After running setup.sh, you can enter the containers and test connectivity:

Enter client containers
```bash
docker exec -it c1 sh
docker exec -it c2 sh
docker exec -it R1 sh

Test connectivity between clients
-ping c2 from c1: 10.1.2.2

 Cleanup section
```bash
./scripts/cleanup.sh






