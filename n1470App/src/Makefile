TOP = ../..
include $(TOP)/configure/CONFIG
#=======================================

# Build this module as a library for an IOC
#LIBRARY_IOC = n1470

# n1470.dbd will include these files:
DBD += n1470.dbd
n1470_DBD += base.dbd
n1470_DBD += calcSupport.dbd
n1470_DBD += stream.dbd
n1470_DBD += asyn.dbd
n1470_DBD += drvAsynSerialPort.dbd
n1470_DBD += drvAsynIPPort.dbd

# Link with the asyn and base libraries
# n1470_LIBS += calc stream asyn pcre seq pv sscan
# n1470_LIBS += $(EPICS_BASE_IOC_LIBS)
# n1470_SYS_LIBS += usb-1.0

#=======================================

# Build the IOC application
PROD_IOC = n1470App

# psCAEN_registerRecordDeviceDriver.cpp derives from psCAEN.dbd
n1470App_SRCS += n1470_registerRecordDeviceDriver.cpp

# Build the main IOC entry point where needed
n1470App_SRCS_DEFAULT += main.cpp
# psCAEN_SRCS_vxWorks += -nil-

# Link with the asyn and base libraries
#n1470App_LIBS += n1470 calc stream asyn pcre seq pv sscan
n1470App_LIBS += calc stream asyn pcre seq pv sscan
n1470App_LIBS += $(EPICS_BASE_IOC_LIBS)
n1470App_SYS_LIBS += usb-1.0

#=======================================
include $(TOP)/configure/RULES
