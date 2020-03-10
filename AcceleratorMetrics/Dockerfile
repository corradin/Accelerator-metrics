FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /src
COPY ["AcceleratorMetrics/AcceleratorMetrics.csproj", "AcceleratorMetrics/"]
RUN dotnet restore "AcceleratorMetrics/AcceleratorMetrics.csproj"
COPY . .
WORKDIR "/src/AcceleratorMetrics"
RUN dotnet build "AcceleratorMetrics.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "AcceleratorMetrics.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "AcceleratorMetrics.dll"]
