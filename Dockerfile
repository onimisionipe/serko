FROM mcr.microsoft.com/dotnet/core/sdk:2.1 AS production-env

# let's pull the app from github.
RUN git clone https://github.com/martincronje/dotnetcore-helloworld.git
WORKDIR /dotnetcore-helloworld/

# let's build our app
RUN dotnet restore && dotnet build

# let's confirm unit tests pass. Should fail and exit if unit test fails
RUN dotnet test

WORKDIR /dotnetcore-helloworld/DotNetCoreHelloWorld

EXPOSE 5000
# run the application
ENTRYPOINT ["dotnet", "run", "--urls","http://*:5000"]
