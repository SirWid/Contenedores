# We use the microsoft/dotnet image as a starting point.
FROM microsoft/dotnet

# Install git #Dont sure use it
#RUN apt-get install git -y

# Create a folder to clone our source code 
RUN mkdir repo

# Set our working folder
WORKDIR repo

# Clone the source code
RUN git clone url

# Set our working folder #rutaSalida change it
WORKDIR rutaSalida

# Expose port 5000 for the application.
EXPOSE 5000

# Restore nuget packages #Dont sure use it
#RUN dotnet restore

# Start the application using dotnet!!! #Dont sure use it
#ENTRYPOINT dotnet run