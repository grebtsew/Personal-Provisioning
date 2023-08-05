# Use the Windows Server Core base image
FROM mcr.microsoft.com/windows/servercore:ltsc2019

# Set working directory to C:\app
WORKDIR C:\\app

# Copy the PowerShell script to the container's C:\app directory
COPY . .

# Run the PowerShell script
CMD ["./install.bat"]