FROM debian
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
RUN apt update -y && apt install -y git certbot python3-certbot-dns-cloudflare
ENTRYPOINT ["/entrypoint.sh"]
