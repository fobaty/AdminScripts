
# AdminScripts

This repository contains useful automation scripts for Linux administrators. These scripts can help automate various administrative tasks such as system updates, backups, monitoring, and maintenance.

## Scripts

1. **update_and_reboot.sh**: Automatically updates all installed packages and reboots the system if required.
2. **backup_directory.sh**: Creates a backup of a specified directory and saves it with a timestamp.
3. **disk_usage_monitor.sh**: Sends an email notification if disk usage exceeds a specified threshold.
4. **cache_cleanup.sh**: Cleans up files older than 7 days in the specified cache directory.
5. **service_health_check.sh**: Checks if specified services are running and restarts them if they are not.
6. **temp_files_cleanup.sh**: Deletes temporary files older than 30 days from the specified directory.
7. **db_backup.sh**: Creates a MySQL database dump.
8. **db_restore.sh**: Restores a MySQL database dump.
9. **cpu_mem_monitor.sh**: Monitors CPU and memory usage and sends an email if usage exceeds specified thresholds.

## Usage

1. Clone the repository:

    ```bash
    git clone https://github.com/fobaty/AdminScripts.git
    cd AdminScripts
    ```

2. Make the scripts executable:

    ```bash
    chmod +x *.sh
    ```

3. Run the scripts with root privileges as needed:

    ```bash
    sudo ./update_and_reboot.sh
    ```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
