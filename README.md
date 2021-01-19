# Docker image for Certbot with Clouflare DNS challenge

## Usage

Clone this repository

```sh
$ git clone https://github.com/PharmaceuticalDesign/docker-certbot-cloudflare.git
$ cd docker-certbot-cloudflare
```

Build Docker image

```sh
$ docker build certbot-image
```

Execute Docker. (Don't forget to put the variables)

```sh
$ docker run -v "$(pwd)":"/etc/letsencrypt/archive" -e CLOUDFLARE_EMAIL={dns_cloudflare_email} CLOUDFLARE_API_KEY={dns_cloudflare_api_key} -e DOMAIN={domain} -e EMAIL={email} --rm certbot-image
```

### Variables

| Variables              | Description                    |
|------------------------|--------------------------------|
| CLOUDFLARE_EMAIL       | Your Cloudflare account email |
| CLOUDFLARE_API_KEY     | Global API Key of your Cloudflare domain |
| DOMAIN                 | The domain for need SSL certs |
| EMAIL                  | Your email                    |

## Resources

- [certbot-dns-cloudflare’s documentation](https://certbot-dns-cloudflare.readthedocs.io/en/stable/)
