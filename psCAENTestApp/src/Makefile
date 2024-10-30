TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS BELOW HERE
# Build the IOC application
PROD_IOC = psCAENTest

# psCAEN.dbd will be created and installed
DBD += psCAENTest.dbd

# psCAEN.dbd will include these files:
psCAENTest_DBD += base.dbd
psCAENTest_DBD += psCAEN.dbd

# Link in the code from our support library
psCAENTest_LIBS += calc stream asyn pcre seq pv sscan

# psCAEN_registerRecordDeviceDriver.cpp derives from psCAEN.dbd
psCAENTest_SRCS += psCAENTest_registerRecordDeviceDriver.cpp

# Build the main IOC entry point where needed
psCAENTest_SRCS_DEFAULT += psCAENTestMain.cpp
psCAENTest_SRCS_vxWorks += -nil-

# Finally link IOC to the EPICS Base libraries
psCAENTest_LIBS += $(EPICS_BASE_IOC_LIBS)
psCAENTest_SYS_LIBS += usb-1.0

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD EXTRA GNUMAKE RULES BELOW HERE