# We use the microsoft/aspnet image as a starting point.
FROM microsoft/aspnet

# Install git
#RUN apt-get install git -y

# Create a folder to clone our source code 
RUN mkdir repositorio

# Set our working folder
WORKDIR repositorio

# Clone the source code
RUN git clone https://github.com/SirWid/AES_ValidaArquitectura.git

# Set our working folder #rutaSalidaDelProyecto
WORKDIR docker-example/edu.javeriana.modelado.dockerApiService

# The final instruction copies the site you published ea
COPY ./bin/Release/PublishOutput/ /inetpub/wwwroot

# Expose port 5000 for the application.
EXPOSE 5000