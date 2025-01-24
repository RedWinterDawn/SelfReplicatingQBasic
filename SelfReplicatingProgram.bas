' Self-Replicating QBasic Program for Continuous Replication over a LAN
' Description:
'   This program demonstrates self-replication by copying its own source code
'   to multiple network destinations.
CLS
PRINT "Self-Replicating Program - Continuous LAN Example"
PRINT "================================================="
PRINT
' Define the current file name and a list of destinations
currentFileName$ = "\\SERVER_NAME\SHARE_FOLDER\SELF_COPY.BAS" ' Replace with the actual network path to this file
' List of destinations (add as many as needed)
DIM destinations$(5)
destinations$(1) = "\\SERVER_NAME\SHARE_FOLDER\COPY1.BAS"
destinations$(2) = "\\SERVER_NAME\SHARE_FOLDER\COPY2.BAS"
destinations$(3) = "\\SERVER_NAME\SHARE_FOLDER\COPY3.BAS"
destinations$(4) = "\\SERVER_NAME\SHARE_FOLDER\COPY4.BAS"
destinations$(5) = "\\SERVER_NAME\SHARE_FOLDER\COPY5.BAS"
FOR i = 1 TO 5
    ' Open the current program file for reading
    OPEN currentFileName$ FOR INPUT AS #1
    
    ' Open the destination file for writing
    OPEN destinations$(i) FOR OUTPUT AS #2

    PRINT "Copying program to "; destinations$(i); "..."
    
    ' Read and write each line from the current file to the new file
    DO WHILE NOT EOF(1)
        LINE INPUT #1, line$
        PRINT #2, line$
    LOOP

    ' Close both files
    CLOSE #1
    CLOSE #2

    PRINT "Copy complete to "; destinations$(i)
    PRINT
NEXT i

PRINT "All copies are complete!"
PRINT "Press any key to exit."
DO: LOOP UNTIL INKEY$ <> ""
