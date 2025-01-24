# SelfReplicatingQBasic
A QBasic program that demonstrates self-replication across a LAN.
Self-Replicating QBasic Program
Description
This project demonstrates a QBasic program that replicates itself across multiple destinations on a local area network (LAN). The program reads its own source code and writes it to specified network paths, creating identical copies of itself. It serves as an educational example of how self-replicating software can work.

Disclaimer: This program is intended for educational purposes only. Ensure you have permission before running this on any network.

Features
Copies its own source code to multiple specified destinations.
Demonstrates fundamental self-replication principles in QBasic.
Works in a LAN environment with shared folders.
How It Works
The program reads its source code file from a specified path.
It iterates through a list of destination paths and writes the source code line-by-line to these destinations.
Once replication is complete, it waits for user input before exiting.
Requirements
QBasic interpreter: This program requires a QBasic-compatible environment (e.g., QBasic, QB64).
LAN shared folders: Ensure the specified file paths are accessible and writable over the network.
Permissions: Write permissions are required for the network destinations.
Setup and Usage
1. Configure File Paths
Edit the currentFileName$ variable in the source code to point to the path of the current program file.
Modify the destinations$() array to include valid network paths where the program will replicate itself.
2. Run the Program
Open the program in your QBasic or QB64 environment.
Execute the program. It will:
Copy itself to the specified destinations.
Display progress messages for each replication.
Wait for user input before exiting.
Example Output

Self-Replicating Program - Continuous LAN Example
=================================================

Copying program to \\SERVER_NAME\SHARE_FOLDER\COPY1.BAS...
Copy complete to \\SERVER_NAME\SHARE_FOLDER\COPY1.BAS

Copying program to \\SERVER_NAME\SHARE_FOLDER\COPY2.BAS...
Copy complete to \\SERVER_NAME\SHARE_FOLDER\COPY2.BAS

All copies are complete!
Press any key to exit.
Important Notes
This program is not autonomous and requires manual execution.
Ensure the file paths and folder permissions are set up correctly before running the program.
Be cautious about unintended replication to avoid clutter or misuse.
License
This project is released under the MIT License. You are free to use, modify, and distribute this code, provided proper attribution is given.

Disclaimer
This program is designed for educational purposes only. The author assumes no responsibility for any misuse of this code, including its deployment on unauthorized networks or systems.

