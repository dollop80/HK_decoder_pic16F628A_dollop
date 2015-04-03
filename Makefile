# MPLAB IDE generated this makefile for use with GNU make.
# Project: Convert2628A.mcp
# Date: Thu Feb 26 13:47:02 2015

AS = MPASMWIN.exe
CC = 
LD = mplink.exe
AR = mplib.exe
RM = rm

Convert2628A.cof : 16F628ATMPO.o
	$(CC) /p16F628A "16f628a.lkr" "16F628ATMPO.o" /z__MPLAB_BUILD=1 /o"Convert2628A.cof" /M"Convert2628A.map" /W

16F628ATMPO.o : 16F628ATMPO.ASM p16F628A.inc
	$(AS) /q /p16F628A "16F628ATMPO.ASM" /l"16F628ATMPO.lst" /e"16F628ATMPO.err" /o"16F628ATMPO.o"

clean : 
	$(CC) "16F628ATMPO.o" "16F628ATMPO.err" "16F628ATMPO.lst" "Convert2628A.cof" "Convert2628A.hex"

