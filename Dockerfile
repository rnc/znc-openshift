FROM nhripps/znc-cluster-app
MAINTAINER Nick Cross

USER root

# Add our own awaynick module. Has the helpful side-benefit of
# upgrading ZNC to 1.6.5
COPY awaynick2.cpp /usr/lib64/znc
RUN PKGS='redhat-rpm-config znc-devel gcc-c++' && \
    dnf install --setopt=tsflags=nodocs -y tar rsync $PKGS && \
    cd /usr/lib64/znc && \
    znc-buildmod awaynick2.cpp && \
    dnf remove -y $PKGS && \
    dnf clean all

USER 1001

ENTRYPOINT ["/opt/znc-run/znc_runner.sh"]
