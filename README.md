![GitHub Container Registry](https://img.shields.io/github/v/package/aszili/qbittorrent?label=ghcr.io)
[![Docker Build][gh-actions-image]][gh-actions-url]

# Qbittorrent
A very minimal qBittorrent image, derived from [11notes Qbittorrent](https://github.com/11notes/docker-qbittorrent) image. It is built from scratch, statically linked and nothing else is bundled, no shell, not even SSL certs, run the WEBUI with a reverse proxy in front. At 16mb it is significanly smaller compared to the official Qbittorrent image of 475mb.

[gh-actions-image]: https://img.shields.io/github/actions/workflow/status/aszili/qbittorrent/main.yml?style=for-the-badge
[gh-actions-url]: https://github.com/aszili/qbitorrent/actions