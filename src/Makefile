TOP = ..
include $(TOP)/configure/CONFIG

#==============================================================================
# DB/DBD files
#==============================================================================

# <name>.dbd will be generated from <name>Include.dbd
DBD += caen_N1470.dbd

# Install databases, templates & substitutions like this
DB += caen_N1470.proto
DB += caen_N1470.db

# If <anyname>.db template is not named <anyname>*.template add
# <anyname>_TEMPLATE = <templatename>

#==============================================================================
# Source and libraries
#==============================================================================

# Build this module as a library for an IOC
LIBRARY_IOC = caen_N1470

# Library source files
# <name>_registerRecordDeviceDriver.cpp will be created from <name>.dbd
caen_N1470_SRCS += caen_N1470_registerRecordDeviceDriver.cpp

# Link with the asyn and base libraries
caen_N1470_LIBS += calc stream asyn seq pv sscan
caen_N1470_LIBS += $(EPICS_BASE_IOC_LIBS)
caen_N1470_SYS_LIBS += usb-1.0

#==============================================================================
# EPICS build rules
#==============================================================================

include $(TOP)/configure/RULES
#  ADD EXTRA GNUMAKE RULES BELOW HERE
