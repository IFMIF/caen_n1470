# CAEN N1470 power supply

This repository contains the source code for the EPICS support of the CAEN N1470 power supply module.

## Getting started and compile

This is an EPICS devices support module and requires EPICS base, asyn and StreamDevice. Before compiling with `make`, update the `configure/RELEASE` file according to your EPICS installation. By default a test application is also compiled, one can use the test application to check quickly the support module. As well, an iocBoot file command is provided in order to be used with the test application, this file must be edited to match with the hardware configuration. 

## Folder structure

| Folder        | Description                            |
| ------------- | -------------------------------------- |
| configure     | Configuration file folder              |
| iocBoot       | ioc example for the test application   |
| n1470Sup      | Sources files for the device support   |
| n1470TestApp  | Sources files for the test application |
