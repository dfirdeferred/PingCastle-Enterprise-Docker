FROM mcr.microsoft.com/dotnet/aspnet:8.0

WORKDIR /app

COPY PingCastleEnterprise/ ./
COPY appsettings.Production.json ./

EXPOSE 5000

ENTRYPOINT ["dotnet", "PingCastleEnterprise.dll"]
