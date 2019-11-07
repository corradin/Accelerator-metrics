FROM mcr.microsoft.com/dotnet/core/aspnet:2.1-stretch-slim AS base
WORKDIR /app
EXPOSE 80
EXPOSE 443

FROM mcr.microsoft.com/dotnet/core/sdk:2.1-stretch AS build
WORKDIR /src
COPY ["AcceleratorMetrics/AcceleratorMetrics.csproj", "AcceleratorMetrics/"]
RUN dotnet restore "AcceleratorMetrics/AcceleratorMetrics.csproj"
COPY . .
WORKDIR "/src/AcceleratorMetrics"
RUN dotnet build "AcceleratorMetrics.csproj" -c Release -o /app

FROM build AS publish
RUN dotnet publish "AcceleratorMetrics.csproj" -c Release -o /app

FROM base AS final
WORKDIR /app
COPY --from=publish /app .
ENTRYPOINT ["dotnet", "AcceleratorMetrics.dll"]