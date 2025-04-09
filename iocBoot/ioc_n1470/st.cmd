#!../../bin/linux-x86_64/n1470App

< envPaths

cd "${TOP}"

# Settings
epicsEnvSet("STREAM_PROTOCOL_PATH", "$(TOP)/db")
epicsEnvSet("IP", "192.168.1.5")
epicsEnvSet("IPport", "4001")
epicsEnvSet("PORT", "N1470")

# Register all support components
dbLoadDatabase("dbd/n1470.dbd")
n1470_registerRecordDeviceDriver(pdbbase)
drvAsynIPPortConfigure($(PORT), "$(IP):$(IPport)",0,0,0) 

# Load the database files
dbLoadRecords("db/n1470.db", "P=DPLA, R=IPMX_LV, board=00, channel=0, I_DRVH=1000.0, V_DRVH=8.0, I_HOPR=1000.0, V_HOPR=8.0")
dbLoadRecords("db/n1470.db", "P=DPLA, R=IPMY_LV, board=00, channel=1, I_DRVH=1000.0, V_DRVH=8.0, I_HOPR=1000.0, V_HOPR=8.0")
dbLoadRecords("db/n1470.db", "P=HEBT, R=IPM_LV,  board=00, channel=2, I_DRVH=1000.0, V_DRVH=8.0, I_HOPR=1000.0, V_HOPR=8.0")
dbLoadRecords("db/n1470.db", "P=RFQ,  R=BLM_LV,  board=00, channel=3, I_DRVH=1000.0, V_DRVH=1.7, I_HOPR=1000.0, V_HOPR=1.7")
dbLoadRecords("db/n1470.db", "P=SRF,  R=BLM_LV1, board=00, channel=0, I_DRVH=1000.0, V_DRVH=1.7, I_HOPR=1000.0, V_HOPR=1.7")
dbLoadRecords("db/n1470.db", "P=SRF,  R=BLM_LV2, board=01, channel=1, I_DRVH=1000.0, V_DRVH=1.7, I_HOPR=1000.0, V_HOPR=1.7")
dbLoadRecords("db/n1470.db", "P=DPLA, R=BLM_LV,  board=01, channel=2, I_DRVH=1000.0, V_DRVH=1.7, I_HOPR=1000.0, V_HOPR=1.7")
dbLoadRecords("db/n1470.db", "P=HEBT, R=BLM_LV,  board=01, channel=3, I_DRVH=1000.0, V_DRVH=1.7, I_HOPR=1000.0, V_HOPR=1.7")

# Start the IOC
epicsThreadSleep(2)
iocInit
