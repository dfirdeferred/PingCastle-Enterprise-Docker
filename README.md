# PingCastle Enterprise Dockerized!
This deployment consists of 2 docker containers: an ASP.NET applictation and a MSSQL instance deployed on linux.

File Structure 

pingcastle-enterprise/

      ├── docker-compose.yml  <--- Update with desired DB credentials
      
      ├── Dockerfile
      
      ├── appsettings.Production.json       <-- update with PingCastle License and modify the DB credentials as desired.
      
      └── PingCastleEnterprise/             <-- your licensed PingCastle Enterprise .NET DLLs
            └── appsettings.Production.json

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

# References
https://learn.microsoft.com/en-us/sql/linux/quickstart-install-connect-docker?view=sql-server-ver17&tabs=cli&pivots=cs1-bash

