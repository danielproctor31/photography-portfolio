# photo-blog

Github pages site for [photo.danielproctor.dev](https://photo.danielproctor.dev)

Uses:

- [Hugo](https://gohugo.io)
- [Hugo Gallery Theme](https://github.com/nicokaiser/hugo-theme-gallery)

Use the devcontainer with Docker and VSCode to get started. Alternatively install NodeJS (v20) and Hugo (v0.120.4).

once setup, from `src` run:

```bash
npm ci
```

To start dev, run:

```bash
npm run dev
```

Website: [http://localhost:1313](http://localhost:1313/)

## Production Build

From `src` run:

```bash
npm run build:prod
```

Alternatively there is a also a docker build, from the root directory run:

```bash
docker compose up -d
```

## Update

To update the theme submodule, from `src` run:

```
hugo mod get -u github.com/nicokaiser/hugo-theme-gallery
```