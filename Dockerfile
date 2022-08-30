FROM mcr.microsoft.com/dotnet/aspnet:6.0 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/sdk:6.0 AS build
WORKDIR /src
COPY ["ProjectorAPI/ProjectorAPI.csproj", "ProjectorAPI/"]
RUN dotnet restore "ProjectorAPI/ProjectorAPI.csproj"
COPY . .
WORKDIR "/src/ProjectorAPI"
RUN dotnet build "ProjectorAPI.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "ProjectorAPI.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "ProjectorAPI.dll"]
