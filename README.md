# PingCastle Enterprise Dockerized!
This deployment consists of 2 docker containers: an ASP.NET applictation and a MSSQL instance deployed on linux.

# File Structure: 

pingcastle-enterprise/

      ├── docker-compose.yml  <--- Update with desired DB credentials
      
      ├── Dockerfile
      
      ├── appsettings.Production.json       <-- update with PingCastle License and modify the DB credentials as desired.
      
      └── PingCastleEnterprise/             <-- your licensed PingCastle Enterprise .NET DLLs
            └── appsettings.Production.json <--- Copy of modified appsettings.Prodcution.json from above.

# Requirements
Docker v.28.1.1 or later

Docker Compose v.1.25 or later

# Instructions
1. Edit appsettings.Production.json to include the PingCastle Enterprise license. You can also modify DB info here (ensure that these settings match in docker-compose.yml)
2. Copy the PingCastleEnterprise binaries folder into the root of the pingcastle-enterprise folder
3. Copy appsettings.Production.json into the PingCastleEnterprise folder
4. As admin or sudo (depending on your OS) run: 

    docker-compose up --build

PingCastle will bind to port 5000 of the docker server.


# WSL Instructions
 
- Open Admin PowerShell
- Run wsl --install ubuntu
- This should do the setup and feature installss etc
- If this is a Windows VM you will likely need to power off and run Set-VMProcessor VM_Name -ExposeVirtualizationExtensions $true
- Once WSL is setup for the first time you can just use wsl to go to the linux box from where you are.
- In WSL you need to install docker https://docs.docker.com/engine/install/ubuntu/
- Install docker.io and docker-compose
- Git clone this repository into windows mount somewhere
- Edit the appsettings (same instructions as above)
- run `docker-compose up --build` from WSL in the directory
 
# References
https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver17&tabs=cli&pivots=cs1-bash

Jumpstart your client-side server applications with Docker Engine on Ubuntu. This guide details prerequisites and multiple methods to install Docker Engine on Ubuntu.

https://teams.microsoft.com/l/message/19:bdb04ae2-3dbf-4d24-baeb-8cdc0cdca65c_c024dcad-dcbc-4ef8-9da9-0629345ac3f0@unq.gbl.spaces/1750236427405?context=%7B%22contextType%22%3A%22chat%22%7D

