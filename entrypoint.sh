#!/bin/sh -l

set -e

echo "dns_cloudflare_email=${CLOUDFLARE_EMAIL}" >> ~/cloudflare.ini
echo "dns_cloudflare_api_key=${CLOUDFLARE_API_KEY}" >> ~/cloudflare.ini

certbot certonly --dns-cloudflare --dns-cloudflare-credentials ~/cloudflare.ini -d ${DOMAIN} --non-interactive --agree-tos -m ${EMAIL}

## /etc/letsencrypt/archive
