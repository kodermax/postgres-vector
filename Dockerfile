FROM pgvector/pgvector:pg16 AS builder

FROM bitnami/postgresql:16.4.0-debian-12-r0

COPY --from=builder /usr/lib/postgresql/16/lib/vector.so /opt/bitnami/postgresql/lib/
COPY --from=builder /usr/share/postgresql/16/extension/vector* /opt/bitnami/postgresql/share/extension/
