#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-ULSWAPDAQ2.mk)" "nbproject/Makefile-local-ULSWAPDAQ2.mk"
include nbproject/Makefile-local-ULSWAPDAQ2.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=ULSWAPDAQ2
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c ../src/config/ULSWAPDAQ2/initialization.c ../src/config/ULSWAPDAQ2/interrupts.c ../src/config/ULSWAPDAQ2/exceptions.c ../src/main.c ../src/pgaConfigure.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/172095811/plib_clk.o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ${OBJECTDIR}/_ext/681439909/initialization.o ${OBJECTDIR}/_ext/681439909/interrupts.o ${OBJECTDIR}/_ext/681439909/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/172095811/plib_clk.o.d ${OBJECTDIR}/_ext/1040072074/plib_evic.o.d ${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d ${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d ${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d ${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d ${OBJECTDIR}/_ext/681439909/initialization.o.d ${OBJECTDIR}/_ext/681439909/interrupts.o.d ${OBJECTDIR}/_ext/681439909/exceptions.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/172095811/plib_clk.o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ${OBJECTDIR}/_ext/681439909/initialization.o ${OBJECTDIR}/_ext/681439909/interrupts.o ${OBJECTDIR}/_ext/681439909/exceptions.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o

# Source Files
SOURCEFILES=../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c ../src/config/ULSWAPDAQ2/initialization.c ../src/config/ULSWAPDAQ2/interrupts.c ../src/config/ULSWAPDAQ2/exceptions.c ../src/main.c ../src/pgaConfigure.c



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
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-ULSWAPDAQ2.mk ${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX470F512H
MP_LINKER_FILE_OPTION=,--script="..\src\config\ULSWAPDAQ2\p32MX470F512H.ld"
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
${OBJECTDIR}/_ext/172095811/plib_clk.o: ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c  .generated_files/flags/ULSWAPDAQ2/c8c2d64314122349606756fe53ad58a427782572 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172095811" 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172095811/plib_clk.o.d" -o ${OBJECTDIR}/_ext/172095811/plib_clk.o ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040072074/plib_evic.o: ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c  .generated_files/flags/ULSWAPDAQ2/60bfcd898e99d4ae1419b1458e9bb2aba8cb9675 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040072074" 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040072074/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040125902/plib_gpio.o: ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c  .generated_files/flags/ULSWAPDAQ2/25bddd0448738a0ca13feda2534814139c1d9d7b .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040125902" 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/910154199/plib_spi1_master.o: ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/ULSWAPDAQ2/3403972230dafb3137bee4f662acadbad0158216 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/910154199" 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172112186/plib_tmr2.o: ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/ULSWAPDAQ2/918520f921c317f1b45548609d86420a224f6b3f .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172112186" 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040528845/plib_uart1.o: ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c  .generated_files/flags/ULSWAPDAQ2/95df1964601ae92dbcb1803512f90e81752a1f7b .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040528845" 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460976341/xc32_monitor.o: ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c  .generated_files/flags/ULSWAPDAQ2/584efdf82cd2b36be22f135bd422b7f3eee9f84b .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/460976341" 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/initialization.o: ../src/config/ULSWAPDAQ2/initialization.c  .generated_files/flags/ULSWAPDAQ2/5af838209c9ecde8b690dbd6bb0c777edfa7aa11 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/initialization.o.d" -o ${OBJECTDIR}/_ext/681439909/initialization.o ../src/config/ULSWAPDAQ2/initialization.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/interrupts.o: ../src/config/ULSWAPDAQ2/interrupts.c  .generated_files/flags/ULSWAPDAQ2/ebcf254e92381d915f2b9350279b70752eaf25e2 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/interrupts.o.d" -o ${OBJECTDIR}/_ext/681439909/interrupts.o ../src/config/ULSWAPDAQ2/interrupts.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/exceptions.o: ../src/config/ULSWAPDAQ2/exceptions.c  .generated_files/flags/ULSWAPDAQ2/17ec68fdbffc5b032a3c667ea38d4bfcb5d380df .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/exceptions.o.d" -o ${OBJECTDIR}/_ext/681439909/exceptions.o ../src/config/ULSWAPDAQ2/exceptions.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/ULSWAPDAQ2/3bf97b7331fcb8069d85191ca2b177a219a90a0f .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pgaConfigure.o: ../src/pgaConfigure.c  .generated_files/flags/ULSWAPDAQ2/964762cdfefb8fdfdc1fc5dacf016a6ad349d997 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_ICD4=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d" -o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o ../src/pgaConfigure.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/172095811/plib_clk.o: ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c  .generated_files/flags/ULSWAPDAQ2/eeba24fbbff93383fdb847e188f4a5f112dd7bc4 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172095811" 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/172095811/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172095811/plib_clk.o.d" -o ${OBJECTDIR}/_ext/172095811/plib_clk.o ../src/config/ULSWAPDAQ2/peripheral/clk/plib_clk.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040072074/plib_evic.o: ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c  .generated_files/flags/ULSWAPDAQ2/270eb3cc52f074ea59da0bfa31a61d80d382e06f .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040072074" 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040072074/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040072074/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1040072074/plib_evic.o ../src/config/ULSWAPDAQ2/peripheral/evic/plib_evic.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040125902/plib_gpio.o: ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c  .generated_files/flags/ULSWAPDAQ2/2eb5020c4a0a62eb4481f3a88d81343ed0aee52a .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040125902" 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040125902/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040125902/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1040125902/plib_gpio.o ../src/config/ULSWAPDAQ2/peripheral/gpio/plib_gpio.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/910154199/plib_spi1_master.o: ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/ULSWAPDAQ2/711a14b5459fdd2a5d3b92b20dfe11d88a7e6fa6 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/910154199" 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/910154199/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/910154199/plib_spi1_master.o ../src/config/ULSWAPDAQ2/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/172112186/plib_tmr2.o: ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c  .generated_files/flags/ULSWAPDAQ2/89eb7e7976eb2f065dca0679193cd243ba2a8434 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/172112186" 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d 
	@${RM} ${OBJECTDIR}/_ext/172112186/plib_tmr2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/172112186/plib_tmr2.o.d" -o ${OBJECTDIR}/_ext/172112186/plib_tmr2.o ../src/config/ULSWAPDAQ2/peripheral/tmr/plib_tmr2.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1040528845/plib_uart1.o: ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c  .generated_files/flags/ULSWAPDAQ2/5741685c1c86da91fed9f05cd2c0ba3b9b06aa22 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1040528845" 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1040528845/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1040528845/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1040528845/plib_uart1.o ../src/config/ULSWAPDAQ2/peripheral/uart/plib_uart1.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/460976341/xc32_monitor.o: ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c  .generated_files/flags/ULSWAPDAQ2/8e873fdbb60d40f2dd3c7a69312a8ef0e5df5f93 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/460976341" 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/460976341/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/460976341/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/460976341/xc32_monitor.o ../src/config/ULSWAPDAQ2/stdio/xc32_monitor.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/initialization.o: ../src/config/ULSWAPDAQ2/initialization.c  .generated_files/flags/ULSWAPDAQ2/1d2b4933bb725672116fa066ae219c7f4db2e5b0 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/initialization.o.d" -o ${OBJECTDIR}/_ext/681439909/initialization.o ../src/config/ULSWAPDAQ2/initialization.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/interrupts.o: ../src/config/ULSWAPDAQ2/interrupts.c  .generated_files/flags/ULSWAPDAQ2/88ddfe9edccf96ba4ad479a08608db47df629d01 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/interrupts.o.d" -o ${OBJECTDIR}/_ext/681439909/interrupts.o ../src/config/ULSWAPDAQ2/interrupts.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/681439909/exceptions.o: ../src/config/ULSWAPDAQ2/exceptions.c  .generated_files/flags/ULSWAPDAQ2/af71a2076d5f9fce149182c144c1d8ea8ba1825 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/681439909" 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/681439909/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/681439909/exceptions.o.d" -o ${OBJECTDIR}/_ext/681439909/exceptions.o ../src/config/ULSWAPDAQ2/exceptions.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/ULSWAPDAQ2/1f6049b9609998e92022f3095480d692eb4684e2 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/pgaConfigure.o: ../src/pgaConfigure.c  .generated_files/flags/ULSWAPDAQ2/6914ce7cc49d3cd48c80344814c66b23d07644e2 .generated_files/flags/ULSWAPDAQ2/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -fno-common -I"../src" -I"../src/config/ULSWAPDAQ2" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/pgaConfigure.o.d" -o ${OBJECTDIR}/_ext/1360937237/pgaConfigure.o ../src/pgaConfigure.c    -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/ULSWAPDAQ2/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_ICD4=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC0275F  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_ICD4=1,--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/ULSWAPDAQ2/p32MX470F512H.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_ULSWAPDAQ2=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/ULSWAPDAQ-firmware.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
