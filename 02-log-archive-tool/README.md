# Log Archive Tool

A simple CLI tool written in Bash to archive and compress log files with a timestamp.

## Description

This tool compresses logs from a given directory into a `.tar.gz` file and stores them in a new directory. It also logs the date and time of each archive operation to a file.

## Usage

```bash
bash log-archive.sh <log-directory>
```

### Example

```bash
bash log-archive.sh /var/log
```

## What it does

- Accepts a log directory as an argument
- Compresses the logs into a `.tar.gz` file
- Stores the archive in a `logs_archive/` directory
- Logs the date and time of the archive to `archive_log.txt`

## Output

logs_archive/
├── logs_archive_20260525_151217.tar.gz
└── archive_log.txt

## Requirements

- Linux/Unix based system
- Bash
- tar


https://roadmap.sh/projects/log-archive-tool
