---
name: fnos
description: Use when working on FnOS (飞牛NAS), including Docker management, storage at /vol1 /vol2, systemctl services, FnOS configuration, NAS troubleshooting, or deploying apps on FnOS. Use when the user mentions FnOS, 飞牛, NAS, or asks about system paths like /vol1, /etc/fnos.
---

# FnOS Skill

## Overview

You are running on a FnOS (飞牛NAS) system. This skill gives you the domain knowledge to manage FnOS beyond coding — Docker, storage, networking, services, and troubleshooting.

**Core principle:** Research trusted sources BEFORE executing unfamiliar FnOS operations. Never guess paths or service names.

## When to Use

Use when the user asks about:
- FnOS system status, version, or configuration
- Docker containers/images on FnOS
- Storage volumes (`/vol1`, `/vol2`) or disk usage
- FnOS services (`systemctl`)
- Network configuration or firewall
- Deploying apps on FnOS
- Troubleshooting FnOS-specific issues

**Do NOT use for:** General Docker/Linux questions unrelated to FnOS, or pure coding tasks.

## Trusted Sources — Research Flow

When you need to look up FnOS information, consult these sources in priority order. Use the `webfetch` tool.

| Priority | Source | Use For | Search URL |
|----------|--------|---------|------------|
| 1 | [FNOSP](https://github.com/FNOSP) | APIs, SDKs, developer docs | Fetch repo directly |
| 2 | [help.fnnas.com](https://help.fnnas.com) | Official docs, features, config | `https://help.fnnas.com/?search=KEYWORD` |
| 3 | [club.fnnas.com](https://club.fnnas.com) | Community solutions, troubleshooting | `https://club.fnnas.com/search.php?mod=forum&searchid=65&orderby=lastpost&ascdesc=desc&searchsubmit=yes&kw=KEYWORD` |

**Research rule:** If you know the exact command, execute directly. If unsure, webfetch first. Start with priority 1, move down if needed. Present findings before executing.

## FnOS System Paths

| Path | Purpose |
|------|---------|
| `/vol1/` | Primary storage volume |
| `/vol2/` | Secondary storage volume |
| `/etc/fnos/` | FnOS configuration |
| `/var/lib/docker/` | Docker data |
| `/usr/local/fnos/` | FnOS binaries |

## Operations Quick Reference

### System
```bash
cat /etc/fnos-version    # Version
df -h && free -h         # Resources
uname -a && uptime       # Kernel + uptime
```

### Docker
```bash
docker ps                        # Running containers
docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
docker logs --tail 100 <name>    # Recent logs
docker exec -it <name> /bin/bash # Enter container
docker start|stop|restart <name> # Lifecycle
docker rm -f <name>              # Force remove
docker images && docker pull <img>:<tag>
docker inspect <name>            # Full info
docker stats --no-stream         # Resource usage
docker system prune -a           # Clean unused (CONFIRM first)
```

### Storage
```bash
du -sh /vol1/* && df -h          # Usage overview
ls -la /vol1/                    # File listing
find /vol1/ -type f -size +100M  # Large files
mount | grep /vol                # Active mounts
```

### Services
```bash
systemctl status fnos-*          # All FnOS services
systemctl restart <service>      # Restart
journalctl -u <service> -f       # Follow logs
```

### Network
```bash
ip addr show && netstat -tuln    # Interfaces + ports
iptables -L -n                   # Firewall
cat /etc/resolv.conf             # DNS
```

## Core Workflows

### Deploy Docker App on FnOS
```bash
mkdir -p /vol1/docker/<app>/{data,config}
chown -R 1000:1000 /vol1/docker/<app>
docker run -d --name <app> \
  -v /vol1/docker/<app>/data:/data \
  -v /vol1/docker/<app>/config:/config \
  -p <host>:<container> \
  --restart unless-stopped \
  <image>:<tag>
```

### Health Check
```bash
docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}"
docker stats --no-stream
```

### Backup
```bash
D="/vol1/backup/$(date +%Y%m%d)" && mkdir -p $D
docker ps --format "{{.Names}}" | while read c; do
  docker commit $c $c:backup && docker save $c:backup | gzip > $D/$c.tar.gz
done
tar -czf $D/config.tar.gz /etc/fnos/ /vol1/docker/*/config/
```

## Troubleshooting

| Symptom | Check |
|---------|-------|
| Container won't start | `docker logs <name>` → `docker inspect <name>` → `df -h` `free -h` |
| Permission denied | `ls -la` on volume → `docker inspect <name> \| grep -i user` → `chown -R <uid>:<gid> <path>` |
| Port unreachable | `docker ps` (ports) → `netstat -tuln \| grep <port>` → `iptables -L -n` → `curl localhost:<port>` |
| Service down | `systemctl status <svc>` → `journalctl -u <svc> --since "10 min ago"` → `systemctl restart <svc>` |

If symptoms persist after these checks, use `webfetch` on a trusted source.

## Safety Rules

| Rule | Rationale |
|------|-----------|
| `df -h` before writing large files | Prevent disk full |
| Confirm before `docker rm -f` or `rm -rf` | Destructive, irreversible |
| Backup `/etc/fnos/` before editing | Config loss = system break |
| `webfetch` trusted source when unsure | Guessing paths breaks FnOS |

## Red Flags — STOP and Check

If you catch yourself thinking:
- "I know this Linux command, it'll work on FnOS too"
- "I don't need to check the docs, I've seen this before"
- "Let me just try this path and see if it works"
- "It's just a simple Docker command, no need to research"

**ALL of these mean: STOP. Either you know the exact FnOS path/command, or you webfetch a trusted source first.**

## Common Rationalizations

| Excuse | Reality |
|--------|---------|
| "It's just standard Linux" | FnOS has proprietary paths and services. Standard assumptions fail. |
| "I'll check the forum later if it breaks" | Prevention is cheaper than recovery. Check first. |
| "The Docker command is the same everywhere" | Port mappings, volume paths, and user mappings differ on FnOS. |
| "I remember the /vol1 path" | Secondary volumes, config paths, and service names may differ by version. |

## Example

User: "帮我在飞牛上部署一个 nginx 并挂载 /vol1/web 目录"

Response:
1. Check if `/vol1/web` exists: `ls -la /vol1/web`
2. Create if missing, set permissions: `mkdir -p /vol1/web && chown -R 1000:1000 /vol1/web`
3. Run container: `docker run -d --name nginx -v /vol1/web:/usr/share/nginx/html -p 80:80 --restart unless-stopped nginx:latest`
4. Verify: `docker ps | grep nginx` then `curl -I localhost:80`