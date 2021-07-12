# Docker image for Certbot with Clouflare DNS challenge

## Usage

Clone this repository

```sh
$ git clone https://github.com/PharmaceuticalDesign/docker-certbot-cloudflare.git
$ cd docker-certbot-cloudflare
```

Build Docker image

```sh
$ docker build -t certbot-image .
```

Execute Docker (don't forget to set the variables)

```sh
$ docker run -v "$(pwd)":"/etc/letsencrypt/archive" -e CLOUDFLARE_EMAIL={dns_cloudflare_email} -e CLOUDFLARE_API_KEY={dns_cloudflare_api_key} -e DOMAIN={domain} -e EMAIL={email} --rm certbot-image
```

After the script has finished, you can find the certs inside the directory from which you executed the `docker run` command.


### Variables

| Variables              | Description                    |
|------------------------|--------------------------------|
| CLOUDFLARE_EMAIL       | Your Cloudflare account email |
| CLOUDFLARE_API_KEY     | Global API Key of your Cloudflare domain |
| DOMAIN                 | The domain you need the SSL certs for |
| EMAIL                  | Your email                    |

## Resources

- [certbot-dns-cloudflare’s documentation](https://certbot-dns-cloudflare.readthedocs.io/en/stable/)
