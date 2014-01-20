#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ssd1289_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ssd1289_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/sim1.o ${OBJECTDIR}/_ext/1472/sim2.o ${OBJECTDIR}/_ext/1472/sim3.o ${OBJECTDIR}/_ext/1472/sim4.o ${OBJECTDIR}/_ext/1472/sim5.o ${OBJECTDIR}/_ext/1472/sim6.o ${OBJECTDIR}/_ext/1472/sim7.o ${OBJECTDIR}/_ext/1472/iosim.o ${OBJECTDIR}/_ext/1472/simfun.o ${OBJECTDIR}/_ext/1472/simglb.o ${OBJECTDIR}/_ext/1472/simint.o ${OBJECTDIR}/_ext/1472/sim0.o ${OBJECTDIR}/_ext/1472/configuration_bits.o ${OBJECTDIR}/_ext/1472/exceptions.o ${OBJECTDIR}/_ext/1472/interrupts.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/system.o ${OBJECTDIR}/_ext/1472/ssd1289.o ${OBJECTDIR}/_ext/1472/zxscr.o ${OBJECTDIR}/_ext/1472/tftprint.o ${OBJECTDIR}/_ext/1335598424/ff.o ${OBJECTDIR}/_ext/1335598424/mmcPIC32.o ${OBJECTDIR}/_ext/1472/ui.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/sim1.o.d ${OBJECTDIR}/_ext/1472/sim2.o.d ${OBJECTDIR}/_ext/1472/sim3.o.d ${OBJECTDIR}/_ext/1472/sim4.o.d ${OBJECTDIR}/_ext/1472/sim5.o.d ${OBJECTDIR}/_ext/1472/sim6.o.d ${OBJECTDIR}/_ext/1472/sim7.o.d ${OBJECTDIR}/_ext/1472/iosim.o.d ${OBJECTDIR}/_ext/1472/simfun.o.d ${OBJECTDIR}/_ext/1472/simglb.o.d ${OBJECTDIR}/_ext/1472/simint.o.d ${OBJECTDIR}/_ext/1472/sim0.o.d ${OBJECTDIR}/_ext/1472/configuration_bits.o.d ${OBJECTDIR}/_ext/1472/exceptions.o.d ${OBJECTDIR}/_ext/1472/interrupts.o.d ${OBJECTDIR}/_ext/1472/main.o.d ${OBJECTDIR}/_ext/1472/system.o.d ${OBJECTDIR}/_ext/1472/ssd1289.o.d ${OBJECTDIR}/_ext/1472/zxscr.o.d ${OBJECTDIR}/_ext/1472/tftprint.o.d ${OBJECTDIR}/_ext/1335598424/ff.o.d ${OBJECTDIR}/_ext/1335598424/mmcPIC32.o.d ${OBJECTDIR}/_ext/1472/ui.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/sim1.o ${OBJECTDIR}/_ext/1472/sim2.o ${OBJECTDIR}/_ext/1472/sim3.o ${OBJECTDIR}/_ext/1472/sim4.o ${OBJECTDIR}/_ext/1472/sim5.o ${OBJECTDIR}/_ext/1472/sim6.o ${OBJECTDIR}/_ext/1472/sim7.o ${OBJECTDIR}/_ext/1472/iosim.o ${OBJECTDIR}/_ext/1472/simfun.o ${OBJECTDIR}/_ext/1472/simglb.o ${OBJECTDIR}/_ext/1472/simint.o ${OBJECTDIR}/_ext/1472/sim0.o ${OBJECTDIR}/_ext/1472/configuration_bits.o ${OBJECTDIR}/_ext/1472/exceptions.o ${OBJECTDIR}/_ext/1472/interrupts.o ${OBJECTDIR}/_ext/1472/main.o ${OBJECTDIR}/_ext/1472/system.o ${OBJECTDIR}/_ext/1472/ssd1289.o ${OBJECTDIR}/_ext/1472/zxscr.o ${OBJECTDIR}/_ext/1472/tftprint.o ${OBJECTDIR}/_ext/1335598424/ff.o ${OBJECTDIR}/_ext/1335598424/mmcPIC32.o ${OBJECTDIR}/_ext/1472/ui.o


CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/ssd1289_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX795F512L
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/sim1.o: ../sim1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim1.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim1.o.d" -o ${OBJECTDIR}/_ext/1472/sim1.o ../sim1.c   
	
${OBJECTDIR}/_ext/1472/sim2.o: ../sim2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim2.o.d" -o ${OBJECTDIR}/_ext/1472/sim2.o ../sim2.c   
	
${OBJECTDIR}/_ext/1472/sim3.o: ../sim3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim3.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim3.o.d" -o ${OBJECTDIR}/_ext/1472/sim3.o ../sim3.c   
	
${OBJECTDIR}/_ext/1472/sim4.o: ../sim4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim4.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim4.o.d" -o ${OBJECTDIR}/_ext/1472/sim4.o ../sim4.c   
	
${OBJECTDIR}/_ext/1472/sim5.o: ../sim5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim5.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim5.o.d" -o ${OBJECTDIR}/_ext/1472/sim5.o ../sim5.c   
	
${OBJECTDIR}/_ext/1472/sim6.o: ../sim6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim6.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim6.o.d" -o ${OBJECTDIR}/_ext/1472/sim6.o ../sim6.c   
	
${OBJECTDIR}/_ext/1472/sim7.o: ../sim7.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim7.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim7.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim7.o.d" -o ${OBJECTDIR}/_ext/1472/sim7.o ../sim7.c   
	
${OBJECTDIR}/_ext/1472/iosim.o: ../iosim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/iosim.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/iosim.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/iosim.o.d" -o ${OBJECTDIR}/_ext/1472/iosim.o ../iosim.c   
	
${OBJECTDIR}/_ext/1472/simfun.o: ../simfun.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/simfun.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/simfun.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/simfun.o.d" -o ${OBJECTDIR}/_ext/1472/simfun.o ../simfun.c   
	
${OBJECTDIR}/_ext/1472/simglb.o: ../simglb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/simglb.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/simglb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/simglb.o.d" -o ${OBJECTDIR}/_ext/1472/simglb.o ../simglb.c   
	
${OBJECTDIR}/_ext/1472/simint.o: ../simint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/simint.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/simint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/simint.o.d" -o ${OBJECTDIR}/_ext/1472/simint.o ../simint.c   
	
${OBJECTDIR}/_ext/1472/sim0.o: ../sim0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim0.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim0.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim0.o.d" -o ${OBJECTDIR}/_ext/1472/sim0.o ../sim0.c   
	
${OBJECTDIR}/_ext/1472/configuration_bits.o: ../configuration_bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/configuration_bits.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/configuration_bits.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/configuration_bits.o.d" -o ${OBJECTDIR}/_ext/1472/configuration_bits.o ../configuration_bits.c   
	
${OBJECTDIR}/_ext/1472/exceptions.o: ../exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/exceptions.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/exceptions.o.d" -o ${OBJECTDIR}/_ext/1472/exceptions.o ../exceptions.c   
	
${OBJECTDIR}/_ext/1472/interrupts.o: ../interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/interrupts.o.d" -o ${OBJECTDIR}/_ext/1472/interrupts.o ../interrupts.c   
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c   
	
${OBJECTDIR}/_ext/1472/system.o: ../system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/system.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/system.o.d" -o ${OBJECTDIR}/_ext/1472/system.o ../system.c   
	
${OBJECTDIR}/_ext/1472/ssd1289.o: ../ssd1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ssd1289.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ssd1289.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/ssd1289.o.d" -o ${OBJECTDIR}/_ext/1472/ssd1289.o ../ssd1289.c   
	
${OBJECTDIR}/_ext/1472/zxscr.o: ../zxscr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/zxscr.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/zxscr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/zxscr.o.d" -o ${OBJECTDIR}/_ext/1472/zxscr.o ../zxscr.c   
	
${OBJECTDIR}/_ext/1472/tftprint.o: ../tftprint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/tftprint.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/tftprint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/tftprint.o.d" -o ${OBJECTDIR}/_ext/1472/tftprint.o ../tftprint.c   
	
${OBJECTDIR}/_ext/1335598424/ff.o: ../../NBIIFS/fatfs/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1335598424 
	@${RM} ${OBJECTDIR}/_ext/1335598424/ff.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1335598424/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1335598424/ff.o.d" -o ${OBJECTDIR}/_ext/1335598424/ff.o ../../NBIIFS/fatfs/ff.c   
	
${OBJECTDIR}/_ext/1335598424/mmcPIC32.o: ../../NBIIFS/fatfs/mmcPIC32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1335598424 
	@${RM} ${OBJECTDIR}/_ext/1335598424/mmcPIC32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1335598424/mmcPIC32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1335598424/mmcPIC32.o.d" -o ${OBJECTDIR}/_ext/1335598424/mmcPIC32.o ../../NBIIFS/fatfs/mmcPIC32.c   
	
${OBJECTDIR}/_ext/1472/ui.o: ../ui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ui.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1 -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/ui.o.d" -o ${OBJECTDIR}/_ext/1472/ui.o ../ui.c   
	
else
${OBJECTDIR}/_ext/1472/sim1.o: ../sim1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim1.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim1.o.d" -o ${OBJECTDIR}/_ext/1472/sim1.o ../sim1.c   
	
${OBJECTDIR}/_ext/1472/sim2.o: ../sim2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim2.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim2.o.d" -o ${OBJECTDIR}/_ext/1472/sim2.o ../sim2.c   
	
${OBJECTDIR}/_ext/1472/sim3.o: ../sim3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim3.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim3.o.d" -o ${OBJECTDIR}/_ext/1472/sim3.o ../sim3.c   
	
${OBJECTDIR}/_ext/1472/sim4.o: ../sim4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim4.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim4.o.d" -o ${OBJECTDIR}/_ext/1472/sim4.o ../sim4.c   
	
${OBJECTDIR}/_ext/1472/sim5.o: ../sim5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim5.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim5.o.d" -o ${OBJECTDIR}/_ext/1472/sim5.o ../sim5.c   
	
${OBJECTDIR}/_ext/1472/sim6.o: ../sim6.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim6.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim6.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim6.o.d" -o ${OBJECTDIR}/_ext/1472/sim6.o ../sim6.c   
	
${OBJECTDIR}/_ext/1472/sim7.o: ../sim7.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim7.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim7.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim7.o.d" -o ${OBJECTDIR}/_ext/1472/sim7.o ../sim7.c   
	
${OBJECTDIR}/_ext/1472/iosim.o: ../iosim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/iosim.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/iosim.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/iosim.o.d" -o ${OBJECTDIR}/_ext/1472/iosim.o ../iosim.c   
	
${OBJECTDIR}/_ext/1472/simfun.o: ../simfun.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/simfun.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/simfun.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/simfun.o.d" -o ${OBJECTDIR}/_ext/1472/simfun.o ../simfun.c   
	
${OBJECTDIR}/_ext/1472/simglb.o: ../simglb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/simglb.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/simglb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/simglb.o.d" -o ${OBJECTDIR}/_ext/1472/simglb.o ../simglb.c   
	
${OBJECTDIR}/_ext/1472/simint.o: ../simint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/simint.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/simint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/simint.o.d" -o ${OBJECTDIR}/_ext/1472/simint.o ../simint.c   
	
${OBJECTDIR}/_ext/1472/sim0.o: ../sim0.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/sim0.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/sim0.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/sim0.o.d" -o ${OBJECTDIR}/_ext/1472/sim0.o ../sim0.c   
	
${OBJECTDIR}/_ext/1472/configuration_bits.o: ../configuration_bits.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/configuration_bits.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/configuration_bits.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/configuration_bits.o.d" -o ${OBJECTDIR}/_ext/1472/configuration_bits.o ../configuration_bits.c   
	
${OBJECTDIR}/_ext/1472/exceptions.o: ../exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/exceptions.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/exceptions.o.d" -o ${OBJECTDIR}/_ext/1472/exceptions.o ../exceptions.c   
	
${OBJECTDIR}/_ext/1472/interrupts.o: ../interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/interrupts.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/interrupts.o.d" -o ${OBJECTDIR}/_ext/1472/interrupts.o ../interrupts.c   
	
${OBJECTDIR}/_ext/1472/main.o: ../main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/main.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/main.o.d" -o ${OBJECTDIR}/_ext/1472/main.o ../main.c   
	
${OBJECTDIR}/_ext/1472/system.o: ../system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/system.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/system.o.d" -o ${OBJECTDIR}/_ext/1472/system.o ../system.c   
	
${OBJECTDIR}/_ext/1472/ssd1289.o: ../ssd1289.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ssd1289.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ssd1289.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/ssd1289.o.d" -o ${OBJECTDIR}/_ext/1472/ssd1289.o ../ssd1289.c   
	
${OBJECTDIR}/_ext/1472/zxscr.o: ../zxscr.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/zxscr.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/zxscr.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/zxscr.o.d" -o ${OBJECTDIR}/_ext/1472/zxscr.o ../zxscr.c   
	
${OBJECTDIR}/_ext/1472/tftprint.o: ../tftprint.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/tftprint.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/tftprint.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/tftprint.o.d" -o ${OBJECTDIR}/_ext/1472/tftprint.o ../tftprint.c   
	
${OBJECTDIR}/_ext/1335598424/ff.o: ../../NBIIFS/fatfs/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1335598424 
	@${RM} ${OBJECTDIR}/_ext/1335598424/ff.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1335598424/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1335598424/ff.o.d" -o ${OBJECTDIR}/_ext/1335598424/ff.o ../../NBIIFS/fatfs/ff.c   
	
${OBJECTDIR}/_ext/1335598424/mmcPIC32.o: ../../NBIIFS/fatfs/mmcPIC32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1335598424 
	@${RM} ${OBJECTDIR}/_ext/1335598424/mmcPIC32.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1335598424/mmcPIC32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1335598424/mmcPIC32.o.d" -o ${OBJECTDIR}/_ext/1335598424/mmcPIC32.o ../../NBIIFS/fatfs/mmcPIC32.c   
	
${OBJECTDIR}/_ext/1472/ui.o: ../ui.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} ${OBJECTDIR}/_ext/1472 
	@${RM} ${OBJECTDIR}/_ext/1472/ui.o.d 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1472/ui.o.d" $(SILENT) -rsi ${MP_CC_DIR}../  -c ${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION) -I".." -O1 -MMD -MF "${OBJECTDIR}/_ext/1472/ui.o.d" -o ${OBJECTDIR}/_ext/1472/ui.o ../ui.c   
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ssd1289_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ssd1289_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__ICD2RAM=1,--defsym=__DEBUG=1,--defsym=__MPLAB_DEBUGGER_PK3=1,-L"../e:/Pic/MPLAB/MPLAB C32 Suite/lib",-L"../e:/Pic/MPLAB/MPLAB C32 Suite/pic32mx/lib",-Map="${DISTDIR}/ssd1289_pic32.X.${IMAGE_TYPE}.map"
else
dist/${CND_CONF}/${IMAGE_TYPE}/ssd1289_pic32.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ssd1289_pic32.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}         -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),-L"../e:/Pic/MPLAB/MPLAB C32 Suite/lib",-L"../e:/Pic/MPLAB/MPLAB C32 Suite/pic32mx/lib",-Map="${DISTDIR}/ssd1289_pic32.X.${IMAGE_TYPE}.map"
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/ssd1289_pic32.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
