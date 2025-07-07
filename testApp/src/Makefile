TOP = ../..
include $(TOP)/configure/CONFIG

#==============================================================================
# DB/DBD files
#==============================================================================

# Create the application DBD file from the library DBD file
DBD += caen_N1470_test.dbd
caen_N1470_test_DBD += caen_N1470.dbd

#==============================================================================
# Source and libraries
#==============================================================================

# Build an IOC application
PROD_IOC = caen_N1470_test

# Application source files
# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
caen_N1470_test_SRCS += caen_N1470_test_registerRecordDeviceDriver.cpp
caen_N1470_test_SRCS_DEFAULT += main.cpp

# Add a definition for each support application used by this application
# N1470App_LIBS += N1470 calc stream asyn pcre seq pv sscan
caen_N1470_test_LIBS += caen_N1470
caen_N1470_test_LIBS += calc stream asyn seq pv sscan
caen_N1470_test_LIBS += $(EPICS_BASE_IOC_LIBS)

#==============================================================================
# EPICS build rules
#==============================================================================

include $(TOP)/configure/RULES
#  ADD EXTRA GNUMAKE RULES BELOW HERE
USR_CXXFLAGS += -Wno-deprecated -Werror -fPIC
