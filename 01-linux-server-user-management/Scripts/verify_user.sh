#!/bin/bash
# Script to verify user and configuration

# Check if user exists
id devuser &>/dev/null && echo "✅ devuser exists" || echo "❌ devuser missing"

# Check sudo access
sudo -lU devuser &>/dev/null && echo "✅ devuser has sudo access" || echo "❌ No sudo access"

# Check SSH key setup
[ -f /home/devuser/.ssh/authorized_keys ] && echo "✅ SSH key found" || echo "❌ SSH key missing"

# Check SELinux
getenforce | grep -q Enforcing && echo "✅ SELinux enforcing" || echo "❌ SELinux not enforcing"

# Check firewalld
systemctl is-active --quiet firewalld && echo "✅ Firewalld active" || echo "❌ Firewalld not active"
```