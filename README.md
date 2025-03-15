# Linux System Information Script

## Overview
This **Linux System Information** script collects and displays key system metrics such as uptime, CPU usage, memory usage, and disk space. It also logs this information into timestamped files and archives them for easy reference.

## Features
- Displays real-time system information.
- Logs system information to a file.
- Archives logs for historical tracking.
- Helps with basic system monitoring and debugging.
- Runs the uptime, top, free, and df commands.

## Prerequisites
- A Linux-based system (Ubuntu, Debian, CentOS, etc.).
- Basic knowledge of terminal commands.
- `bash` shell installed (default on most Linux distributions).

## Installation
1. Clone the repository:
   ```bash
   git clone git@github.com:MustafaMuk/linux-system-info.git
   cd linux-system-info
   ```

2. Grant execute permissions to the script:
   ```bash
   chmod +x system_info.sh
   ```

## Usage
To execute the script and display system information:
```bash
./system_info.sh
```
If you encounter permission issues, try running it with `sudo`:
```bash
sudo ./system_info.sh
```

## Example Output
```
----------------------
System Information
----------------------

Uptime:
 20:06:00 up 7 min,  1 user,  load average: 0.08, 0.26, 0.20

CPU Usage:
%Cpu(s):  3.7 us,  7.4 sy,  0.0 ni, 88.9 id,  0.0 wa,  0.0 hi,  0.0 si,  0.0 st 

Memory Usage:
               total        used        free      shared  buff/cache   available
Mem:           7.0Gi       1.1Gi       5.0Gi        40Mi       1.1Gi       5.9Gi
Swap:          4.0Gi          0B       4.0Gi

Disk Usage:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda2        25G   11G   13G  44% /
```

## Log Storage
The script automatically stores logs in a directory named `log_archive`. These logs can be accessed using:
```bash
ls log_archive/
```

## Contributing
If you'd like to contribute or improve the script, feel free to fork the repository and submit a pull request.

## License
This project is open-source and available under the **MIT License**.

---

✅ **This project demonstrates basic Linux scripting, file handling, and automation.**


