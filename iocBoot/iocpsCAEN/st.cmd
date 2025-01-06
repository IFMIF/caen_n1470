#!../../bin/linux-x86_64/DG645

#- You may have to change DG645 to something else
#- everywhere it appears in this file

< envPaths

cd "${TOP}"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/db"
epicsEnvSet "IP" "192.168.1.5"
epicsEnvSet "IPport" "4001"

# Macro prefix
epicsEnvSet "PORT" "N1470"

## Register all support components
dbLoadDatabase("dbd/psCAENTest.dbd")
psCAENTest_registerRecordDeviceDriver(pdbbase)

drvAsynIPPortConfigure($(PORT), "$(IP):$(IPport)",0,0,0) 
dbLoadTemplate("db/psCAEN.substitutions")

epicsThreadSleep(2)
iocInit

