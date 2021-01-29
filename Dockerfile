ARG VERSION
FROM demoncat/onec-server:$VERSION

USER root

ARG VERSION_ONEC_UTIL=0.1.2
RUN cd /tmp \
    && wget https://github.com/v8platform/onec-util/releases/download/v$VERSION_ONEC_UTIL/onec-util_Linux_x86_64.tar.gz \
    && tar -zxf onec-util_Linux_x86_64.tar.gz \
    && rm onec-util_Linux_x86_64.tar.gz \
    && chmod +x onec-util \
    && mv onec-util /usr/local/bin \

# USER usr1cv8