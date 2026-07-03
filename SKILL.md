---
name: fnos
description: Use when working with FnOS (飞牛NAS) operations, including system management, Docker containers, storage, networking, and troubleshooting. Provides guidance for FnOS-specific tasks beyond basic coding.
---

# FnOS Skill

This skill provides guidance for working with FnOS (飞牛NAS) when using opencode on FnOS-based systems. It covers system administration, Docker management, storage operations, and troubleshooting.

## When to Use

Use this skill when:
- Managing FnOS system settings and configurations
- Working with Docker containers and images on FnOS
- Handling storage volumes, shares, and file management
- Configuring networking and services
- Troubleshooting FnOS-specific issues
- Deploying applications on FnOS
- Performing system maintenance tasks

## Trusted Sources

When performing FnOS operations, always consult these trusted sources in order of priority:

1. **FnOS Developer Open Platform (FNOSP)**
   - URL: https://github.com/FNOSP
   - Use for: API documentation, developer guides, official examples
   - When to check: Before implementing any API integrations or developer workflows

2. **FnOS Help Center**
   - URL: https://help.fnnas.com/
   - Use for: Official documentation, feature guides, system requirements
   - When to check: For system administration tasks, configuration options, and feature documentation

3. **FnOS Community Forum**
   - URL: https://club.fnnas.com/
   - Use for: Community solutions, troubleshooting discussions, user experiences
   - When to check: For troubleshooting, finding community solutions, or getting advice from other users

## How to Use These Sources

### Searching Documentation
```
# For official documentation
https://help.fnnas.com/?search=关键词

# For community discussions
https://club.fnnas.com/search.php?mod=forum&searchid=65&orderby=lastpost&ascdesc=desc&searchsubmit=yes&kw=关键词
```

### Best Practices
1. Always check official documentation first (help.fnnas.com)
2. Consult developer resources for API-related tasks (FNOSP GitHub)
3. Use community forum for troubleshooting and real-world examples
4. When in doubt, verify information from multiple sources

## Common FnOS Operations

### System Information
```bash
# Check FnOS version and system info
cat /etc/fnos-version
uname -a
df -h
free -h

# Check system uptime
uptime

# Check running processes
ps aux | head -20

# Check network interfaces
ip addr show
ifconfig
```

### Docker Management on FnOS
```bash
# List running containers
docker ps

# List all containers (including stopped)
docker ps -a

# View container logs
docker logs <container_name>

# Enter container shell
docker exec -it <container_name> /bin/bash

# Stop/start/restart container
docker stop <container_name>
docker start <container_name>
docker restart <container_name>

# Remove container
docker rm <container_name>

# List images
docker images

# Pull image
docker pull <image_name>:<tag>

# Build image
docker build -t <image_name>:<tag> .

# Inspect container
docker inspect <container_name>

# Check container resource usage
docker stats <container_name>
```

### Storage Management
```bash
# List mounted volumes
mount | grep /vol*

# Check disk usage
du -sh /vol*/*

# FnOS-specific storage locations
ls -la /vol1/
ls -la /vol2/

# Check disk space
df -h

# Find large files
find /vol* -type f -size +100M -exec ls -lh {} \;

# Check inode usage
df -i

# Mount/unmount volumes
mount /dev/sdX1 /vol2
umount /vol2
```

### Service Management
```bash
# Check FnOS services
systemctl status fnos-*

# Restart FnOS service
systemctl restart fnos-*

# List all services
systemctl list-units --type=service

# Check service status
systemctl status <service_name>

# Enable/disable service
systemctl enable <service_name>
systemctl disable <service_name>
```

### Network Configuration
```bash
# Check network interfaces
ip addr show

# Check routing table
ip route show

# Check DNS configuration
cat /etc/resolv.conf

# Test network connectivity
ping 8.8.8.8
curl -I https://www.baidu.com

# Check open ports
netstat -tuln
ss -tuln

# Check firewall rules
iptables -L
```

## FnOS-Specific Paths

Important directories on FnOS:
- `/vol1/` - Primary storage volume
- `/vol2/` - Secondary storage volume (if available)
- `/etc/fnos/` - FnOS configuration files
- `/var/lib/docker/` - Docker data directory
- `/usr/local/fnos/` - FnOS system files

## Troubleshooting Guide

### Common Issues

1. **Container won't start**
   - Check logs: `docker logs <container_name>`
   - Verify volume mounts are correct
   - Check FnOS resource availability

2. **Storage permission issues**
   - FnOS uses specific user/group mappings
   - Check container user matches volume permissions
   - Use `ls -la` to verify ownership

3. **Network connectivity issues**
   - Check FnOS network settings
   - Verify port mappings in Docker
   - Check firewall rules

### Getting Help
1. Search official docs: https://help.fnnas.com/?search=你的问题关键词
2. Search forum: https://club.fnnas.com/search.php?mod=forum&searchid=65&orderby=lastpost&ascdesc=desc&searchsubmit=yes&kw=你的问题关键词
3. Check FNOSP GitHub for API-related issues

### Advanced Troubleshooting

#### Container Issues
```bash
# Check container status
docker inspect <container_name> | grep -i status

# Check container resource limits
docker inspect <container_name> | grep -i memory
docker inspect <container_name> | grep -i cpu

# Check container network
docker inspect <container_name> | grep -i network

# Check container volumes
docker inspect <container_name> | grep -i volume

# Force remove stuck container
docker rm -f <container_name>

# Clean up unused resources
docker system prune -a
```

#### Storage Issues
```bash
# Check filesystem
fsck /dev/sdX1

# Check mount points
cat /etc/fstab
mount -a

# Check disk health
smartctl -a /dev/sda

# Check RAID status
cat /proc/mdstat

# Repair filesystem
fsck -y /dev/sdX1
```

#### Network Issues
```bash
# Check network configuration
cat /etc/network/interfaces

# Restart network service
systemctl restart networking

# Check DNS resolution
nslookup <domain_name>
dig <domain_name>

# Check firewall
iptables -L -n
ufw status

# Check port forwarding
iptables -t nat -L -n
```

#### Service Issues
```bash
# Check service dependencies
systemctl list-dependencies <service_name>

# Check service logs
journalctl -u <service_name> -f

# Check service status
systemctl status <service_name> -l

# Restart service
systemctl restart <service_name>

# Check service configuration
cat /etc/systemd/system/<service_name>.service
```

## FnOS Development Guidelines

### Working with FnOS APIs
- Always refer to FNOSP documentation first
- Use official SDKs when available
- Follow FnOS coding standards and conventions

### Deploying Applications
- Use Docker for containerized deployments
- Follow FnOS storage conventions
- Test in development environment first
- Document any FnOS-specific configurations

### System Integration
- Respect FnOS system boundaries
- Use official APIs over direct system calls
- Handle FnOS-specific error codes appropriately

## FnOS Development Workflows

### 1. Application Development Workflow
```bash
# Step 1: Set up development environment
# Clone repository
git clone <repository_url>
cd <project_directory>

# Step 2: Configure for FnOS
# Check FnOS environment variables
env | grep -i fnos

# Step 3: Build application
# For Node.js applications
npm install
npm run build

# For Python applications
pip install -r requirements.txt
python setup.py build

# Step 4: Test locally
# Run tests
npm test
pytest

# Step 5: Deploy to FnOS
# Build Docker image
docker build -t <app_name>:latest .

# Test container locally
docker run -d -p 8080:80 <app_name>:latest

# Deploy to FnOS
docker push <registry>/<app_name>:latest
```

### 2. Docker Container Deployment Workflow
```bash
# Step 1: Prepare Dockerfile
# Create Dockerfile in project root
cat > Dockerfile << EOF
FROM node:18-alpine
WORKDIR /app
COPY package*.json ./
RUN npm ci --only=production
COPY . .
EXPOSE 3000
CMD ["node", "server.js"]
EOF

# Step 2: Build image
docker build -t <app_name>:<version> .

# Step 3: Test container
docker run -d --name test_container -p 8080:3000 <app_name>:<version>

# Step 4: Check container logs
docker logs test_container

# Step 5: Push to registry
docker tag <app_name>:<version> <registry>/<app_name>:<version>
docker push <registry>/<app_name>:<version>

# Step 6: Deploy to FnOS
docker pull <registry>/<app_name>:<version>
docker run -d --name <app_name> -p 80:3000 <registry>/<app_name>:<version>
```

### 3. Storage Management Workflow
```bash
# Step 1: Check current storage
df -h
ls -la /vol1/

# Step 2: Create storage directory
mkdir -p /vol1/docker/<app_name>

# Step 3: Set permissions
chown -R 1000:1000 /vol1/docker/<app_name>

# Step 4: Mount volume to container
docker run -d \
  --name <app_name> \
  -v /vol1/docker/<app_name>/data:/app/data \
  -v /vol1/docker/<app_name>/config:/app/config \
  <app_name>:<version>

# Step 5: Verify mount
docker exec -it <app_name> ls -la /app/data
```

### 4. Backup and Recovery Workflow
```bash
# Step 1: Create backup script
cat > backup_fnos.sh << EOF
#!/bin/bash
BACKUP_DIR="/vol1/backup/$(date +%Y%m%d)"
mkdir -p $BACKUP_DIR

# Backup Docker containers
docker ps --format "{{.Names}}" | while read container; do
  docker commit $container $BACKUP_DIR/$container:backup
  docker save $container:backup | gzip > $BACKUP_DIR/$container.tar.gz
done

# Backup configuration files
tar -czf $BACKUP_DIR/config_backup.tar.gz /etc/fnos/ /vol1/docker/*/config/

# Backup database if exists
# mysqldump --all-databases > $BACKUP_DIR/databases.sql
EOF

chmod +x backup_fnos.sh

# Step 2: Run backup
./backup_fnos.sh

# Step 3: Verify backup
ls -la /vol1/backup/
```

### 5. Monitoring and Troubleshooting Workflow
```bash
# Step 1: Check system status
uptime
free -h
df -h

# Step 2: Check Docker status
docker ps -a
docker system df

# Step 3: Check container logs
docker logs --tail 100 <container_name>

# Step 4: Check resource usage
docker stats --no-stream

# Step 5: Check network
netstat -tuln | grep <port>
curl -I http://localhost:<port>

# Step 6: Check FnOS services
systemctl status fnos-*
journalctl -u fnos-* --since "1 hour ago"
```

## Safety Considerations

1. **Backup before changes** - Always backup important data before system changes
2. **Test in staging** - Test changes in non-production environment first
3. **Follow least privilege** - Use minimal required permissions
4. **Monitor system resources** - Keep an eye on CPU, memory, and storage usage

## FnOS Best Practices

### Security Best Practices
1. **Regular Updates**
   - Keep FnOS system updated
   - Update Docker images regularly
   - Apply security patches promptly

2. **Access Control**
   - Use strong passwords
   - Enable two-factor authentication if available
   - Limit SSH access to trusted IPs
   - Use key-based authentication

3. **Network Security**
   - Configure firewall properly
   - Use HTTPS for web interfaces
   - Isolate sensitive services
   - Monitor network traffic

4. **Data Protection**
   - Enable encryption for sensitive data
   - Use secure backup storage
   - Test backup restoration regularly
   - Implement proper access logs

### Performance Best Practices
1. **Resource Management**
   - Set appropriate container resource limits
   - Monitor CPU and memory usage
   - Use resource quotas for containers
   - Optimize application performance

2. **Storage Optimization**
   - Use appropriate filesystem for use case
   - Implement proper disk cleanup
   - Monitor disk usage regularly
   - Use SSD for performance-critical applications

3. **Network Optimization**
   - Configure DNS properly
   - Use connection pooling
   - Implement proper caching
   - Monitor network performance

### Development Best Practices
1. **Code Quality**
   - Follow FnOS coding standards
   - Write comprehensive tests
   - Use version control effectively
   - Implement proper error handling

2. **Documentation**
   - Document all configurations
   - Create deployment guides
   - Maintain troubleshooting guides
   - Document API interfaces

3. **Testing**
   - Test in staging environment first
   - Implement automated testing
   - Perform security testing
   - Test disaster recovery procedures

### Maintenance Best Practices
1. **Regular Maintenance**
   - Schedule system backups
   - Monitor system health
   - Clean up unused resources
   - Review security logs

2. **Monitoring**
   - Set up system monitoring
   - Configure alerting
   - Monitor application logs
   - Track performance metrics

3. **Disaster Recovery**
   - Test backup restoration
   - Document recovery procedures
   - Maintain recovery documentation
   - Practice disaster recovery drills

## Quick Reference

### FnOS Commands
```bash
# System info
fnos-info

# Service management
fnos-service start/stop/restart <service>

# Configuration
fnos-config get/set <key> <value>
```

### Docker on FnOS
```bash
# FnOS Docker integration
docker-fnos <command>

# Container management
docker-fnos container list
docker-fnos container inspect <name>
```

## Additional Resources

- Superpowers Framework: https://github.com/obra/superpowers
- FnOS Developer Platform: https://github.com/FNOSP
- FnOS Documentation: https://help.fnnas.com/
- FnOS Community: https://club.fnnas.com/

## Contributing

When adding new FnOS operations to this skill:
1. Verify against official documentation
2. Test commands in safe environment
3. Document any FnOS-specific considerations
4. Include troubleshooting tips when relevant