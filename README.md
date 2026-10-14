# Mission 10: The Enterprise Cloud Architect

## Project Overview
A multi-tier web application using Ubuntu, Docker, WordPress, and MySQL.

## Architecture
- Web Tier: WordPress
- Database Tier: MySQL
- Containerization: Docker Compose
- Persistent Storage: Docker Volumes
- Security: UFW Firewall
- Automation: Bash Backup and Health Check
- Scheduling: Cron

## Commands
- Start: `sudo docker compose up -d`
- Check: `sudo docker compose ps`
- Backup: `./backup.sh`
- Health Check: `./health-check.sh`
