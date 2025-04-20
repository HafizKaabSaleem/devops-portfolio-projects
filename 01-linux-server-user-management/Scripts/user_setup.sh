#!/bin/bash
# Script to add user, configure sudo, SSH key, and apply basic server hardening

# Create user with password policy
echo "Creating user devuser..."
useradd -m devuser
passwd devuser

# Add to sudoers
echo "devuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers.d/devuser
chmod 440 /etc/sudoers.d/devuser

# Setup SSH Key
mkdir -p /home/devuser/.ssh
cp /root/.ssh/authorized_keys /home/devuser/.ssh/
chown -R devuser:devuser /home/devuser/.ssh
chmod 700 /home/devuser/.ssh
chmod 600 /home/devuser/.ssh/authorized_keys

# Enable firewalld and SELinux
systemctl enable firewalld --now
setenforce 1
sed -i 's/^SELINUX=.*/SELINUX=enforcing/' /etc/selinux/config

echo "User and security setup completed."