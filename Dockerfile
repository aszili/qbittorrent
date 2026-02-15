ARG QBITORRENT_VERSION=5.1.4
FROM 11notes/qbittorrent:${QBITORRENT_VERSION} AS builder
FROM scratch

COPY --from=builder /usr/local/bin/qbittorrent /usr/local/bin/qbittorrent
COPY --from=builder /etc/ssl /etc/ssl
COPY --from=builder /usr/share/ca-certificates /usr/share/ca-certificates
COPY --from=builder /usr/share/zoneinfo /usr/share/zoneinfo

ENTRYPOINT ["/usr/local/bin/qbittorrent"]
CMD ["--confirm-legal-notice", "--profile=/config", "--webui-port=80"]
