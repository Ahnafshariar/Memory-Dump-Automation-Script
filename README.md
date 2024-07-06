# Memory Dump Automation Script

This script automates the process of running various Volatility 3 commands on a memory dump file, saving the output to specific files for easier analysis. The script will prompt the user to enter the location of the memory dump file and then execute a series of commands to extract and save relevant information.

## Prerequisites

- **Python 3**: Ensure Python 3 is installed.
- **Volatility 3**: The script assumes Volatility 3 is located at `/home/mjolnirtraining/Desktop/volatility3`. Adjust the path if necessary.

## Installation

1. Clone the repository:
    ```bash
    git clone https://github.com/yourusername/memory-dump-automation.git
    cd memory-dump-automation
    ```

2. Ensure Volatility 3 is installed and accessible:
    ```bash
    cd /home/mjolnirtraining/Desktop/volatility3
    ```

## Usage

1. Make the script executable:
    ```bash
    chmod +x memory_dump_automation.sh
    ```

2. Run the script:
    ```bash
    ./memory_dump_automation.sh
    ```

3. Enter the location of your memory dump file when prompted.

## Script Workflow

1. **Prompt for File Location**: The script will ask for the file location of the memory dump.
2. **Navigate to Volatility 3 Directory**: The script changes the current directory to the Volatility 3 folder.
3. **Extract File Name**: Extracts the file name from the provided path for use in output file names.
4. **Execute Volatility Commands**: Runs the following Volatility 3 commands and saves their output:
    - `windows.info.Info`
    - `windows.hashdump.Hashdump`
    - `windows.pstree.PsTree`
    - `windows.pslist.PsList`
    - `windows.netscan.NetScan`
    - `windows.netstat.NetStat`
    - `windows.sessions.Sessions`
    - `windows.registry.userassist.UserAssist`
5. **Output Files**: Outputs are saved in the current directory with the naming convention `<file_name>-<command>.ahnaf`.
6. Change the .ahnaf to your desired extension (e.g. could be your name or .txt or .xlsx)

## Output Files

- `<file_name>-windows_info.ahnaf`
- `<file_name>-windows_hashdump.ahnaf`
- `<file_name>-windows_pstree.ahnaf`
- `<file_name>-windows_pslist.ahnaf`
- `<file_name>-windows_netscan.ahnaf`
- `<file_name>-windows_netstat.ahnaf`
- `<file_name>-windows_sessions.ahnaf`
- `<file_name>-windows_userassist.ahnaf`

## Example

Assuming the memory dump file is located at `/path/to/memorydump.mem`, and its name is `memorydump`:

1. You will be prompted to enter the location of the file:
    ```bash
    Enter the file location:
    /path/to/memorydump.mem
    ```

2. The script will produce the following output files:
    - `memorydump-windows_info.ahnaf`
    - `memorydump-windows_hashdump.ahnaf`
    - `memorydump-windows_pstree.ahnaf`
    - `memorydump-windows_pslist.ahnaf`
    - `memorydump-windows_netscan.ahnaf`
    - `memorydump-windows_netstat.ahnaf`
    - `memorydump-windows_sessions.ahnaf`
    - `memorydump-windows_userassist.ahnaf`

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

Ahnaf

