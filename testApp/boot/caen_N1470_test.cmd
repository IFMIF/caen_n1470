#!../bin/linux-x86_64/caen_N1470_test

< envPaths

# Settings
epicsEnvSet("BOOT_DIR", ${PWD})
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TOP)/db")
epicsEnvSet("DEVICE_HOSTNAME", "caen-n1470.local:4001")
epicsEnvSet("BUS", "L0")

epicsEnvSet("P", "n1470:")

# Register all support components
cd "$(TOP)/dbd"
dbLoadDatabase("caen_N1470.dbd")
caen_N1470_test_registerRecordDeviceDriver(pdbbase)

# Set up IOC/hardware links - TCP port
#     (link, host, priority, noAutoConnect, noEosProcessing)
drvAsynIPPortConfigure($(BUS), "$(DEVICE_HOSTNAME)", 0, 0, 0)

# Only for debugging
asynSetTraceIOMask("$(BUS)", 0, 7)
asynSetTraceMask("$(BUS)", 0, 9)

# Load record instances
cd "$(TOP)/db"
dbLoadRecords("caen_N1470.db", "P=$(P), R=ch0, board=00, channel=0, I_DRVH=1000.0, V_DRVH=8.0, I_HOPR=1000.0, V_HOPR=8.0")
dbLoadRecords("caen_N1470.db", "P=$(P), R=ch1, board=00, channel=1, I_DRVH=1000.0, V_DRVH=8.0, I_HOPR=1000.0, V_HOPR=8.0")
dbLoadRecords("caen_N1470.db", "P=$(P), R=ch2, board=00, channel=2, I_DRVH=1000.0, V_DRVH=8.0, I_HOPR=1000.0, V_HOPR=8.0")
dbLoadRecords("caen_N1470.db", "P=$(P), R=ch3, board=00, channel=3, I_DRVH=1000.0, V_DRVH=8.0, I_HOPR=1000.0, V_HOPR=8.0")

# Start the IOC control loop
cd $(BOOT_DIR)
iocInit()
