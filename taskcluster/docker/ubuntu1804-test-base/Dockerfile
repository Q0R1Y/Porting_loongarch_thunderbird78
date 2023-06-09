# This docker image only sets up packages on top of the original Ubuntu image.
# Everything else is setup is a child docker image derived from this one, such
# that changes to our scripts don't trigger the rebuild of this base image,
# possibly leading to breakage. (See bug 1503756 and bug 1678451 for examples
# of such recent breakages)
FROM          ubuntu:bionic-20200112
MAINTAINER    Edwin Takahashi <egao@mozilla.com>

ADD     apt-prefs /etc/apt/preferences.d/custom

# %include taskcluster/docker/recipes/ubuntu1804-test-system-setup-base.sh
ADD topsrcdir/taskcluster/docker/recipes/ubuntu1804-test-system-setup-base.sh /setup/system-setup.sh
RUN     bash /setup/system-setup.sh

# gnome-keyring-daemon is configured to have the IPC_LOCK capability (to lock pages with secrets in
# memory), but docker isn't run with that capability granted. So, if we were to try running
# gnome-keyring-daemon without first clearing the capability, it would just exit with the message
# "Operation not permitted". Luckily it doesn't actually require the capability.
RUN     setcap -r /usr/bin/gnome-keyring-daemon

# Set a default command useful for debugging
CMD ["/bin/bash", "--login"]
