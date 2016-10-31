# FROM ymazieres/dotnet:compile
FROM microsoft/dotnet
COPY webapp /webapp
RUN chmod +x /webapp/run_server.sh
EXPOSE 5000
ENTRYPOINT ["sh", "./run_server.sh"]
ENV ASPNETCORE_URLS http://+:5000
WORKDIR /webapp 

