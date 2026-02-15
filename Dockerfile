ARG QBITORRENT_VERSION=5.1.4
FROM 11notes/qbittorrent:${QBITORRENT_VERSION} AS builder
FROM scratch
COPY --from=builder /usr/local/bin/qbittorrent /usr/local/bin/qbittorrent
ENTRYPOINT ["/usr/local/bin/qbittorrent"]
CMD ["--confirm-legal-notice", "--profile=/config", "--webui-port=80"]
