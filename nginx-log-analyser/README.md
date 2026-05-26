# Nginx Log Analyzer

A simple CLI tool written in Bash to analyze Nginx access logs from the command line.

## Description

This tool reads an Nginx access log file and provides useful statistics about traffic, errors, and visitors. It is part of my DevOps challenge from [roadmap.sh](https://roadmap.sh).

## Usage

```bash
bash nginx-analyzer.sh <log-file>
```

### Example

```bash
bash nginx-analyzer.sh nginx-access.log
```

## What it does

- Accepts a log file as an argument
- Shows top 5 IP addresses with the most requests
- Shows top 5 most requested paths
- Shows top 5 response status codes
- Shows top 5 user agents

## Requirements

- Linux/Unix based system
- Bash
- awk, sort, uniq, grep, head
