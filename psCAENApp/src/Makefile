TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE
# Build the IOC application
PROD_IOC = psCAEN

# psCAEN.dbd will be created and installed
DBD += psCAEN.dbd

# psCAEN.dbd will include these files:
psCAEN_DBD += base.dbd
psCAEN_DBD += calcSupport.dbd
psCAEN_DBD += stream.dbd
psCAEN_DBD += asyn.dbd
psCAEN_DBD += drvAsynSerialPort.dbd
psCAEN_DBD += drvAsynIPPort.dbd

# Link in the code from our support library
psCAEN_LIBS += calc stream asyn pcre seq pv sscan

# psCAEN_registerRecordDeviceDriver.cpp derives from psCAEN.dbd
psCAEN_SRCS += psCAEN_registerRecordDeviceDriver.cpp

# Build the main IOC entry point where needed
psCAEN_SRCS_DEFAULT += psCAENMain.cpp
psCAEN_SRCS_vxWorks += -nil-

# Finally link IOC to the EPICS Base libraries
psCAEN_LIBS += $(EPICS_BASE_IOC_LIBS)
psCAEN_SYS_LIBS += usb-1.0

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE
