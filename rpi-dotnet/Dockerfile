# use the pc version of the SDK to compile
FROM mcr.microsoft.com/dotnet/core/sdk:2.1 as build
WORKDIR /build

# copy csproj and restore as distinct layers
COPY /src/*.csproj ./
RUN dotnet restore

# copy & compile the source 
COPY ./src ./ 
RUN dotnet publish -c Release -o out -r linux-arm

# use the arm version of SDK to run (on the pi)
FROM mcr.microsoft.com/dotnet/core/sdk:2.1.603-stretch-arm32v7
CMD mkdir -p /root/helloworld
WORKDIR /root/helloworld
COPY --from=build /build/out/ .

# Run the binary
ENTRYPOINT ["dotnet", "./raspberrypi.dll"]
