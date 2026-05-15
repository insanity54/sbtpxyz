# sbtp.xyz

Simple static HTML website using mvp.css (dark mode).

## Quick Start

```bash
docker-compose up --build
```

## Deploy to Coolify

1. Connect your Git repository to Coolify
2. Select "Static Site" as the service type
3. Build command: `docker build -t sbtp-website .`
4. Port: 80
5. Deploy

## Docker Build

```bash
docker build -t sbtp-website .
docker run -p 8080:80 sbtp-website
```

## Local Development

```bash
docker-compose up
```

Access at http://localhost:8080