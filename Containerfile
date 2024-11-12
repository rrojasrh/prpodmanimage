FROM registry.redhat.io/openshift4/ose-tools-rhel9:latest
ENV __doozer=update BUILD_RELEASE=202410300036.p0.gcf533b5.assembly.stream.el9 BUILD_VERSION=v4.16.0 OS_GIT_MAJOR=4 OS_GIT_MINOR=16 OS_GIT_PATCH=0 OS_GIT_TREE_STATE=clean OS_GIT_VERSION=4.16.0-202410300036.p0.gcf533b5.assembly.stream.el9 SOURCE_GIT_TREE_STATE=clean __doozer_group=openshift-4.16 __doozer_key=ose-tools __doozer_version=v4.16.0 
ENV __doozer=merge OS_GIT_COMMIT=cf533b5 OS_GIT_VERSION=4.16.0-202410300036.p0.gcf533b5.assembly.stream.el9-cf533b5 SOURCE_DATE_EPOCH=1727944919 SOURCE_GIT_COMMIT=cf533b548154f7f2e828a44864477bbbb881692d SOURCE_GIT_TAG=openshift-clients-4.16.0-202406131906-35-gcf533b548 SOURCE_GIT_URL=https://github.com/openshift/oc 
RUN INSTALL_PKGS="\
  podman \
  " && \
  yum -y install $INSTALL_PKGS && rpm -V --nosize --nofiledigest --nomtime --nomode $INSTALL_PKGS && yum clean all && rm -rf /var/cache/*
  # Disabled until they are buildable on s390x
  # numactl \
  # numactl-devel \

CMD ["/usr/bin/bash"]

LABEL \
        io.k8s.display-name="OpenShift Tools" \
        io.k8s.description="Contains debugging and diagnostic tools for use with an OpenShift cluster." \
        io.openshift.build.versions="kubectl=1.29.7" \
        io.openshift.tags="openshift,tools" \
        License="GPLv2+" \
        name="openshift/ose-tools-rhel9" \
        com.redhat.component="ose-tools-container" \
        io.openshift.maintainer.project="OCPBUGS" \
        io.openshift.maintainer.component="oc" \
        io.openshift.build.commit.id="cf533b548154f7f2e828a44864477bbbb881692d" \
        io.openshift.build.source-location="https://github.com/openshift/oc" \
        io.openshift.build.commit.url="https://github.com/openshift/oc/commit/cf533b548154f7f2e828a44864477bbbb881692d" \
        version="v4.16.0"
