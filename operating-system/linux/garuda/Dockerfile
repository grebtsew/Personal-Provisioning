# Use the specified Arch Linux image as the base
FROM archlinux:base-20230723.0.166908

# Update the package database and install necessary packages
RUN pacman -Syu --noconfirm && \
    pacman -S --noconfirm dos2unix

# Set the working directory
WORKDIR /app

# Copy the entire content of the current directory to the container's working directory
COPY . .

# Convert line endings of shell scripts
RUN find /app -type f -name "*.sh" -exec dos2unix {} \;

# Give execute permissions to the install.sh script
RUN chmod +x install.sh
RUN ./install.sh

