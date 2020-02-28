FROM mcr.microsoft.com/mssql/server:2019-latest
ENV SA_PASSWORD=Passw0rd
ENV ACCEPT_EULA=Y
COPY AcceleratorMetrics/database/entrypoint.sh AcceleratorMetrics/database/
COPY AcceleratorMetrics/database/SqlCmdStartup.sh AcceleratorMetrics/database/
COPY AcceleratorMetrics/database/SqlCmdScript.sql AcceleratorMetrics/database/
CMD /bin/bash AcceleratorMetrics/database/entrypoint.sh