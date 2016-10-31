FROM ymazieres/dotnet:compile
#FROM microsoft/dotnet
COPY src /src
RUN chmod +x /src/run.sh
EXPOSE 5000
ENTRYPOINT ["sh", "./run.sh"]
ENV ASPNETCORE_URLS http://+:5000
WORKDIR /src

