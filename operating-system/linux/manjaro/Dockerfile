FROM archlinux/base

WORKDIR /app

COPY . .

RUN pacman -Sy --noconfirm dos2unix
RUN find /app -type f -name "*.sh" -exec dos2unix {} \;

RUN chmod +x install.sh
RUN ./install.sh