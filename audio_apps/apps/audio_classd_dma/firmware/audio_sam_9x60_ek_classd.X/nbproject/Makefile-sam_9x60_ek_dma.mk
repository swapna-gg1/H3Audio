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
ifeq "$(wildcard nbproject/Makefile-local-sam_9x60_ek_dma.mk)" "nbproject/Makefile-local-sam_9x60_ek_dma.mk"
include nbproject/Makefile-local-sam_9x60_ek_dma.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_9x60_ek_dma
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_9x60_ek_dma/audio/peripheral/classd/plib_classd.c ../src/config/sam_9x60_ek_dma/bsp/bsp.c ../src/config/sam_9x60_ek_dma/peripheral/aic/plib_aic.c ../src/config/sam_9x60_ek_dma/peripheral/clk/plib_clk.c ../src/config/sam_9x60_ek_dma/peripheral/dbgu/plib_dbgu.c ../src/config/sam_9x60_ek_dma/peripheral/mmu/plib_mmu.c ../src/config/sam_9x60_ek_dma/peripheral/pio/plib_pio.c ../src/config/sam_9x60_ek_dma/peripheral/tc/plib_tc0.c ../src/config/sam_9x60_ek_dma/peripheral/xdmac/plib_xdmac.c ../src/config/sam_9x60_ek_dma/stdio/xc32_monitor.c ../src/config/sam_9x60_ek_dma/system/cache/sys_cache.c ../src/config/sam_9x60_ek_dma/system/int/src/sys_int.c ../src/config/sam_9x60_ek_dma/system/time/src/sys_time.c ../src/config/sam_9x60_ek_dma/initialization.c ../src/config/sam_9x60_ek_dma/interrupts.c ../src/config/sam_9x60_ek_dma/cstartup.S ../src/config/sam_9x60_ek_dma/fault_handlers.c ../src/config/sam_9x60_ek_dma/tasks.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1658590313/plib_classd.o ${OBJECTDIR}/_ext/183934530/bsp.o ${OBJECTDIR}/_ext/19467845/plib_aic.o ${OBJECTDIR}/_ext/19469868/plib_clk.o ${OBJECTDIR}/_ext/603586082/plib_dbgu.o ${OBJECTDIR}/_ext/19479519/plib_mmu.o ${OBJECTDIR}/_ext/19482272/plib_pio.o ${OBJECTDIR}/_ext/1939034075/plib_tc0.o ${OBJECTDIR}/_ext/1549834605/plib_xdmac.o ${OBJECTDIR}/_ext/683145676/xc32_monitor.o ${OBJECTDIR}/_ext/474184447/sys_cache.o ${OBJECTDIR}/_ext/1840972801/sys_int.o ${OBJECTDIR}/_ext/1363450107/sys_time.o ${OBJECTDIR}/_ext/1975788654/initialization.o ${OBJECTDIR}/_ext/1975788654/interrupts.o ${OBJECTDIR}/_ext/1975788654/cstartup.o ${OBJECTDIR}/_ext/1975788654/fault_handlers.o ${OBJECTDIR}/_ext/1975788654/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1658590313/plib_classd.o.d ${OBJECTDIR}/_ext/183934530/bsp.o.d ${OBJECTDIR}/_ext/19467845/plib_aic.o.d ${OBJECTDIR}/_ext/19469868/plib_clk.o.d ${OBJECTDIR}/_ext/603586082/plib_dbgu.o.d ${OBJECTDIR}/_ext/19479519/plib_mmu.o.d ${OBJECTDIR}/_ext/19482272/plib_pio.o.d ${OBJECTDIR}/_ext/1939034075/plib_tc0.o.d ${OBJECTDIR}/_ext/1549834605/plib_xdmac.o.d ${OBJECTDIR}/_ext/683145676/xc32_monitor.o.d ${OBJECTDIR}/_ext/474184447/sys_cache.o.d ${OBJECTDIR}/_ext/1840972801/sys_int.o.d ${OBJECTDIR}/_ext/1363450107/sys_time.o.d ${OBJECTDIR}/_ext/1975788654/initialization.o.d ${OBJECTDIR}/_ext/1975788654/interrupts.o.d ${OBJECTDIR}/_ext/1975788654/cstartup.o.d ${OBJECTDIR}/_ext/1975788654/fault_handlers.o.d ${OBJECTDIR}/_ext/1975788654/tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1658590313/plib_classd.o ${OBJECTDIR}/_ext/183934530/bsp.o ${OBJECTDIR}/_ext/19467845/plib_aic.o ${OBJECTDIR}/_ext/19469868/plib_clk.o ${OBJECTDIR}/_ext/603586082/plib_dbgu.o ${OBJECTDIR}/_ext/19479519/plib_mmu.o ${OBJECTDIR}/_ext/19482272/plib_pio.o ${OBJECTDIR}/_ext/1939034075/plib_tc0.o ${OBJECTDIR}/_ext/1549834605/plib_xdmac.o ${OBJECTDIR}/_ext/683145676/xc32_monitor.o ${OBJECTDIR}/_ext/474184447/sys_cache.o ${OBJECTDIR}/_ext/1840972801/sys_int.o ${OBJECTDIR}/_ext/1363450107/sys_time.o ${OBJECTDIR}/_ext/1975788654/initialization.o ${OBJECTDIR}/_ext/1975788654/interrupts.o ${OBJECTDIR}/_ext/1975788654/cstartup.o ${OBJECTDIR}/_ext/1975788654/fault_handlers.o ${OBJECTDIR}/_ext/1975788654/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/config/sam_9x60_ek_dma/audio/peripheral/classd/plib_classd.c ../src/config/sam_9x60_ek_dma/bsp/bsp.c ../src/config/sam_9x60_ek_dma/peripheral/aic/plib_aic.c ../src/config/sam_9x60_ek_dma/peripheral/clk/plib_clk.c ../src/config/sam_9x60_ek_dma/peripheral/dbgu/plib_dbgu.c ../src/config/sam_9x60_ek_dma/peripheral/mmu/plib_mmu.c ../src/config/sam_9x60_ek_dma/peripheral/pio/plib_pio.c ../src/config/sam_9x60_ek_dma/peripheral/tc/plib_tc0.c ../src/config/sam_9x60_ek_dma/peripheral/xdmac/plib_xdmac.c ../src/config/sam_9x60_ek_dma/stdio/xc32_monitor.c ../src/config/sam_9x60_ek_dma/system/cache/sys_cache.c ../src/config/sam_9x60_ek_dma/system/int/src/sys_int.c ../src/config/sam_9x60_ek_dma/system/time/src/sys_time.c ../src/config/sam_9x60_ek_dma/initialization.c ../src/config/sam_9x60_ek_dma/interrupts.c ../src/config/sam_9x60_ek_dma/cstartup.S ../src/config/sam_9x60_ek_dma/fault_handlers.c ../src/config/sam_9x60_ek_dma/tasks.c ../src/main.c ../src/app.c



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
	${MAKE}  -f nbproject/Makefile-sam_9x60_ek_dma.mk dist/${CND_CONF}/${IMAGE_TYPE}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=SAM9X60
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_9x60_ek_dma\ddram.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1975788654/cstartup.o: ../src/config/sam_9x60_ek_dma/cstartup.S  .generated_files/flags/sam_9x60_ek_dma/ce1455e43bb75b1f36fd2c5666d97b74c965d5d0 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1975788654" 
	@${RM} ${OBJECTDIR}/_ext/1975788654/cstartup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975788654/cstartup.o 
	@${RM} ${OBJECTDIR}/_ext/1975788654/cstartup.o.ok ${OBJECTDIR}/_ext/1975788654/cstartup.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1975788654/cstartup.o.d"  -o ${OBJECTDIR}/_ext/1975788654/cstartup.o ../src/config/sam_9x60_ek_dma/cstartup.S  -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1975788654/cstartup.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1975788654/cstartup.o.d" "${OBJECTDIR}/_ext/1975788654/cstartup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1975788654/cstartup.o: ../src/config/sam_9x60_ek_dma/cstartup.S  .generated_files/flags/sam_9x60_ek_dma/1e4d5ceecf861f58a966757f9bf5ee880263257c .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1975788654" 
	@${RM} ${OBJECTDIR}/_ext/1975788654/cstartup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975788654/cstartup.o 
	@${RM} ${OBJECTDIR}/_ext/1975788654/cstartup.o.ok ${OBJECTDIR}/_ext/1975788654/cstartup.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1975788654/cstartup.o.d"  -o ${OBJECTDIR}/_ext/1975788654/cstartup.o ../src/config/sam_9x60_ek_dma/cstartup.S  -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1975788654/cstartup.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1975788654/cstartup.o.d" "${OBJECTDIR}/_ext/1975788654/cstartup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1658590313/plib_classd.o: ../src/config/sam_9x60_ek_dma/audio/peripheral/classd/plib_classd.c  .generated_files/flags/sam_9x60_ek_dma/6c225e79f8b18ea7844dea9f8092e2e594392e47 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1658590313" 
	@${RM} ${OBJECTDIR}/_ext/1658590313/plib_classd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1658590313/plib_classd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1658590313/plib_classd.o.d" -o ${OBJECTDIR}/_ext/1658590313/plib_classd.o ../src/config/sam_9x60_ek_dma/audio/peripheral/classd/plib_classd.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/183934530/bsp.o: ../src/config/sam_9x60_ek_dma/bsp/bsp.c  .generated_files/flags/sam_9x60_ek_dma/d4d99888b0f76a15d80eb768aed8889e30a54ddb .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/183934530" 
	@${RM} ${OBJECTDIR}/_ext/183934530/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/183934530/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/183934530/bsp.o.d" -o ${OBJECTDIR}/_ext/183934530/bsp.o ../src/config/sam_9x60_ek_dma/bsp/bsp.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/19467845/plib_aic.o: ../src/config/sam_9x60_ek_dma/peripheral/aic/plib_aic.c  .generated_files/flags/sam_9x60_ek_dma/b061b3cfd992f9dddbd3238683a7419b9ddb2bc7 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/19467845" 
	@${RM} ${OBJECTDIR}/_ext/19467845/plib_aic.o.d 
	@${RM} ${OBJECTDIR}/_ext/19467845/plib_aic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/19467845/plib_aic.o.d" -o ${OBJECTDIR}/_ext/19467845/plib_aic.o ../src/config/sam_9x60_ek_dma/peripheral/aic/plib_aic.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/19469868/plib_clk.o: ../src/config/sam_9x60_ek_dma/peripheral/clk/plib_clk.c  .generated_files/flags/sam_9x60_ek_dma/f93a8d99f52ebd23acca3fec38600ef863b31168 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/19469868" 
	@${RM} ${OBJECTDIR}/_ext/19469868/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/19469868/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/19469868/plib_clk.o.d" -o ${OBJECTDIR}/_ext/19469868/plib_clk.o ../src/config/sam_9x60_ek_dma/peripheral/clk/plib_clk.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/603586082/plib_dbgu.o: ../src/config/sam_9x60_ek_dma/peripheral/dbgu/plib_dbgu.c  .generated_files/flags/sam_9x60_ek_dma/4580f1f82ade7c1827ed58975d81dcfca2e32eec .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/603586082" 
	@${RM} ${OBJECTDIR}/_ext/603586082/plib_dbgu.o.d 
	@${RM} ${OBJECTDIR}/_ext/603586082/plib_dbgu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/603586082/plib_dbgu.o.d" -o ${OBJECTDIR}/_ext/603586082/plib_dbgu.o ../src/config/sam_9x60_ek_dma/peripheral/dbgu/plib_dbgu.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/19479519/plib_mmu.o: ../src/config/sam_9x60_ek_dma/peripheral/mmu/plib_mmu.c  .generated_files/flags/sam_9x60_ek_dma/856841a0f6312e11afd81dadc374adea4fd895ac .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/19479519" 
	@${RM} ${OBJECTDIR}/_ext/19479519/plib_mmu.o.d 
	@${RM} ${OBJECTDIR}/_ext/19479519/plib_mmu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/19479519/plib_mmu.o.d" -o ${OBJECTDIR}/_ext/19479519/plib_mmu.o ../src/config/sam_9x60_ek_dma/peripheral/mmu/plib_mmu.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/19482272/plib_pio.o: ../src/config/sam_9x60_ek_dma/peripheral/pio/plib_pio.c  .generated_files/flags/sam_9x60_ek_dma/a7e8f974c85e35e700ecbec828ac739d78145c43 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/19482272" 
	@${RM} ${OBJECTDIR}/_ext/19482272/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/19482272/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/19482272/plib_pio.o.d" -o ${OBJECTDIR}/_ext/19482272/plib_pio.o ../src/config/sam_9x60_ek_dma/peripheral/pio/plib_pio.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1939034075/plib_tc0.o: ../src/config/sam_9x60_ek_dma/peripheral/tc/plib_tc0.c  .generated_files/flags/sam_9x60_ek_dma/be11d1f7d2b59067f10711b8a375636844d4c922 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1939034075" 
	@${RM} ${OBJECTDIR}/_ext/1939034075/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939034075/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939034075/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/1939034075/plib_tc0.o ../src/config/sam_9x60_ek_dma/peripheral/tc/plib_tc0.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1549834605/plib_xdmac.o: ../src/config/sam_9x60_ek_dma/peripheral/xdmac/plib_xdmac.c  .generated_files/flags/sam_9x60_ek_dma/b7fc5237bdcf766546fed458a9ee0a35d9bb5a96 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1549834605" 
	@${RM} ${OBJECTDIR}/_ext/1549834605/plib_xdmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1549834605/plib_xdmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1549834605/plib_xdmac.o.d" -o ${OBJECTDIR}/_ext/1549834605/plib_xdmac.o ../src/config/sam_9x60_ek_dma/peripheral/xdmac/plib_xdmac.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/683145676/xc32_monitor.o: ../src/config/sam_9x60_ek_dma/stdio/xc32_monitor.c  .generated_files/flags/sam_9x60_ek_dma/fd7ea9dc7abc225184aea11a7ff1f0c36643dc1e .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/683145676" 
	@${RM} ${OBJECTDIR}/_ext/683145676/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/683145676/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/683145676/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/683145676/xc32_monitor.o ../src/config/sam_9x60_ek_dma/stdio/xc32_monitor.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/474184447/sys_cache.o: ../src/config/sam_9x60_ek_dma/system/cache/sys_cache.c  .generated_files/flags/sam_9x60_ek_dma/54d3e6bdf020521528fde51811544e45d061a1ec .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/474184447" 
	@${RM} ${OBJECTDIR}/_ext/474184447/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/474184447/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/474184447/sys_cache.o.d" -o ${OBJECTDIR}/_ext/474184447/sys_cache.o ../src/config/sam_9x60_ek_dma/system/cache/sys_cache.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1840972801/sys_int.o: ../src/config/sam_9x60_ek_dma/system/int/src/sys_int.c  .generated_files/flags/sam_9x60_ek_dma/f0b92847f56431b227bee4c7d258c250d7faa9eb .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1840972801" 
	@${RM} ${OBJECTDIR}/_ext/1840972801/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1840972801/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1840972801/sys_int.o.d" -o ${OBJECTDIR}/_ext/1840972801/sys_int.o ../src/config/sam_9x60_ek_dma/system/int/src/sys_int.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1363450107/sys_time.o: ../src/config/sam_9x60_ek_dma/system/time/src/sys_time.c  .generated_files/flags/sam_9x60_ek_dma/57b9deda2977671ddb3d64a48cb6d62a53a6504e .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1363450107" 
	@${RM} ${OBJECTDIR}/_ext/1363450107/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363450107/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1363450107/sys_time.o.d" -o ${OBJECTDIR}/_ext/1363450107/sys_time.o ../src/config/sam_9x60_ek_dma/system/time/src/sys_time.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975788654/initialization.o: ../src/config/sam_9x60_ek_dma/initialization.c  .generated_files/flags/sam_9x60_ek_dma/cc33d1676fabec4c7a825c98e20ba31af0d31089 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1975788654" 
	@${RM} ${OBJECTDIR}/_ext/1975788654/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975788654/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1975788654/initialization.o.d" -o ${OBJECTDIR}/_ext/1975788654/initialization.o ../src/config/sam_9x60_ek_dma/initialization.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975788654/interrupts.o: ../src/config/sam_9x60_ek_dma/interrupts.c  .generated_files/flags/sam_9x60_ek_dma/7ac3efdf1b11b9319cdc335d030d1871643c68a2 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1975788654" 
	@${RM} ${OBJECTDIR}/_ext/1975788654/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975788654/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1975788654/interrupts.o.d" -o ${OBJECTDIR}/_ext/1975788654/interrupts.o ../src/config/sam_9x60_ek_dma/interrupts.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975788654/fault_handlers.o: ../src/config/sam_9x60_ek_dma/fault_handlers.c  .generated_files/flags/sam_9x60_ek_dma/be470fdbf5c7de21066780c3bd6e2ff12a6bf274 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1975788654" 
	@${RM} ${OBJECTDIR}/_ext/1975788654/fault_handlers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975788654/fault_handlers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1975788654/fault_handlers.o.d" -o ${OBJECTDIR}/_ext/1975788654/fault_handlers.o ../src/config/sam_9x60_ek_dma/fault_handlers.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975788654/tasks.o: ../src/config/sam_9x60_ek_dma/tasks.c  .generated_files/flags/sam_9x60_ek_dma/f868d0952061511f5da8332e8e404d410da132ed .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1975788654" 
	@${RM} ${OBJECTDIR}/_ext/1975788654/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975788654/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1975788654/tasks.o.d" -o ${OBJECTDIR}/_ext/1975788654/tasks.o ../src/config/sam_9x60_ek_dma/tasks.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_9x60_ek_dma/9753c58ab9f27189e5201d0457aa0bef989b918e .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_9x60_ek_dma/c698652eebadbec3cead0503847a0605f6d2e823 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1658590313/plib_classd.o: ../src/config/sam_9x60_ek_dma/audio/peripheral/classd/plib_classd.c  .generated_files/flags/sam_9x60_ek_dma/454807292749a7d77cb8cf2b85878f90cf8466e2 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1658590313" 
	@${RM} ${OBJECTDIR}/_ext/1658590313/plib_classd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1658590313/plib_classd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1658590313/plib_classd.o.d" -o ${OBJECTDIR}/_ext/1658590313/plib_classd.o ../src/config/sam_9x60_ek_dma/audio/peripheral/classd/plib_classd.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/183934530/bsp.o: ../src/config/sam_9x60_ek_dma/bsp/bsp.c  .generated_files/flags/sam_9x60_ek_dma/11886b9fcf60c76f7812169f9b4513c84668ae16 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/183934530" 
	@${RM} ${OBJECTDIR}/_ext/183934530/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/183934530/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/183934530/bsp.o.d" -o ${OBJECTDIR}/_ext/183934530/bsp.o ../src/config/sam_9x60_ek_dma/bsp/bsp.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/19467845/plib_aic.o: ../src/config/sam_9x60_ek_dma/peripheral/aic/plib_aic.c  .generated_files/flags/sam_9x60_ek_dma/40e3c4cd79077b2c0dab135e68818531b6e44075 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/19467845" 
	@${RM} ${OBJECTDIR}/_ext/19467845/plib_aic.o.d 
	@${RM} ${OBJECTDIR}/_ext/19467845/plib_aic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/19467845/plib_aic.o.d" -o ${OBJECTDIR}/_ext/19467845/plib_aic.o ../src/config/sam_9x60_ek_dma/peripheral/aic/plib_aic.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/19469868/plib_clk.o: ../src/config/sam_9x60_ek_dma/peripheral/clk/plib_clk.c  .generated_files/flags/sam_9x60_ek_dma/85e3be13e03171a6ebe800ea7a3a48a020e61a4d .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/19469868" 
	@${RM} ${OBJECTDIR}/_ext/19469868/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/19469868/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/19469868/plib_clk.o.d" -o ${OBJECTDIR}/_ext/19469868/plib_clk.o ../src/config/sam_9x60_ek_dma/peripheral/clk/plib_clk.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/603586082/plib_dbgu.o: ../src/config/sam_9x60_ek_dma/peripheral/dbgu/plib_dbgu.c  .generated_files/flags/sam_9x60_ek_dma/d5d6625b33d0e21d92d17c00a0913f4c1a1dbed .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/603586082" 
	@${RM} ${OBJECTDIR}/_ext/603586082/plib_dbgu.o.d 
	@${RM} ${OBJECTDIR}/_ext/603586082/plib_dbgu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/603586082/plib_dbgu.o.d" -o ${OBJECTDIR}/_ext/603586082/plib_dbgu.o ../src/config/sam_9x60_ek_dma/peripheral/dbgu/plib_dbgu.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/19479519/plib_mmu.o: ../src/config/sam_9x60_ek_dma/peripheral/mmu/plib_mmu.c  .generated_files/flags/sam_9x60_ek_dma/3ae70f33a6f74371a18977424a32f3afd364e06c .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/19479519" 
	@${RM} ${OBJECTDIR}/_ext/19479519/plib_mmu.o.d 
	@${RM} ${OBJECTDIR}/_ext/19479519/plib_mmu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/19479519/plib_mmu.o.d" -o ${OBJECTDIR}/_ext/19479519/plib_mmu.o ../src/config/sam_9x60_ek_dma/peripheral/mmu/plib_mmu.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/19482272/plib_pio.o: ../src/config/sam_9x60_ek_dma/peripheral/pio/plib_pio.c  .generated_files/flags/sam_9x60_ek_dma/556008c29a8ea053a441f9ff9fa47a842f3bed4c .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/19482272" 
	@${RM} ${OBJECTDIR}/_ext/19482272/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/19482272/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/19482272/plib_pio.o.d" -o ${OBJECTDIR}/_ext/19482272/plib_pio.o ../src/config/sam_9x60_ek_dma/peripheral/pio/plib_pio.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1939034075/plib_tc0.o: ../src/config/sam_9x60_ek_dma/peripheral/tc/plib_tc0.c  .generated_files/flags/sam_9x60_ek_dma/198bd084d23ab2b00680a56e3a69dbd013d831f7 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1939034075" 
	@${RM} ${OBJECTDIR}/_ext/1939034075/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1939034075/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1939034075/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/1939034075/plib_tc0.o ../src/config/sam_9x60_ek_dma/peripheral/tc/plib_tc0.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1549834605/plib_xdmac.o: ../src/config/sam_9x60_ek_dma/peripheral/xdmac/plib_xdmac.c  .generated_files/flags/sam_9x60_ek_dma/e7aa20c9274b97d3660a85262c8eedc732ae91dd .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1549834605" 
	@${RM} ${OBJECTDIR}/_ext/1549834605/plib_xdmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1549834605/plib_xdmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1549834605/plib_xdmac.o.d" -o ${OBJECTDIR}/_ext/1549834605/plib_xdmac.o ../src/config/sam_9x60_ek_dma/peripheral/xdmac/plib_xdmac.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/683145676/xc32_monitor.o: ../src/config/sam_9x60_ek_dma/stdio/xc32_monitor.c  .generated_files/flags/sam_9x60_ek_dma/febeeb49402de7046e325d8edf511b5ffe7404d9 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/683145676" 
	@${RM} ${OBJECTDIR}/_ext/683145676/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/683145676/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/683145676/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/683145676/xc32_monitor.o ../src/config/sam_9x60_ek_dma/stdio/xc32_monitor.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/474184447/sys_cache.o: ../src/config/sam_9x60_ek_dma/system/cache/sys_cache.c  .generated_files/flags/sam_9x60_ek_dma/6c933baa69404684a04dfb280a9442e32b8ebdc3 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/474184447" 
	@${RM} ${OBJECTDIR}/_ext/474184447/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/474184447/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/474184447/sys_cache.o.d" -o ${OBJECTDIR}/_ext/474184447/sys_cache.o ../src/config/sam_9x60_ek_dma/system/cache/sys_cache.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1840972801/sys_int.o: ../src/config/sam_9x60_ek_dma/system/int/src/sys_int.c  .generated_files/flags/sam_9x60_ek_dma/833ae4768763b7dba775e87e5c2a388e3e472050 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1840972801" 
	@${RM} ${OBJECTDIR}/_ext/1840972801/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1840972801/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1840972801/sys_int.o.d" -o ${OBJECTDIR}/_ext/1840972801/sys_int.o ../src/config/sam_9x60_ek_dma/system/int/src/sys_int.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1363450107/sys_time.o: ../src/config/sam_9x60_ek_dma/system/time/src/sys_time.c  .generated_files/flags/sam_9x60_ek_dma/fe925c157c0086508b05971a7f34eeaa51507576 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1363450107" 
	@${RM} ${OBJECTDIR}/_ext/1363450107/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1363450107/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1363450107/sys_time.o.d" -o ${OBJECTDIR}/_ext/1363450107/sys_time.o ../src/config/sam_9x60_ek_dma/system/time/src/sys_time.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975788654/initialization.o: ../src/config/sam_9x60_ek_dma/initialization.c  .generated_files/flags/sam_9x60_ek_dma/3cb852f8ce23f801b8eef49e988e0bcdca8c6862 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1975788654" 
	@${RM} ${OBJECTDIR}/_ext/1975788654/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975788654/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1975788654/initialization.o.d" -o ${OBJECTDIR}/_ext/1975788654/initialization.o ../src/config/sam_9x60_ek_dma/initialization.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975788654/interrupts.o: ../src/config/sam_9x60_ek_dma/interrupts.c  .generated_files/flags/sam_9x60_ek_dma/ad57f50118d5608096c51c01941e0a6c51359d29 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1975788654" 
	@${RM} ${OBJECTDIR}/_ext/1975788654/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975788654/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1975788654/interrupts.o.d" -o ${OBJECTDIR}/_ext/1975788654/interrupts.o ../src/config/sam_9x60_ek_dma/interrupts.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975788654/fault_handlers.o: ../src/config/sam_9x60_ek_dma/fault_handlers.c  .generated_files/flags/sam_9x60_ek_dma/56634636acc2b34bcfdf80272c722028596ac01e .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1975788654" 
	@${RM} ${OBJECTDIR}/_ext/1975788654/fault_handlers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975788654/fault_handlers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1975788654/fault_handlers.o.d" -o ${OBJECTDIR}/_ext/1975788654/fault_handlers.o ../src/config/sam_9x60_ek_dma/fault_handlers.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975788654/tasks.o: ../src/config/sam_9x60_ek_dma/tasks.c  .generated_files/flags/sam_9x60_ek_dma/be5d33c0b8fc446e1878b3098157c9183dbc8aa4 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1975788654" 
	@${RM} ${OBJECTDIR}/_ext/1975788654/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975788654/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1975788654/tasks.o.d" -o ${OBJECTDIR}/_ext/1975788654/tasks.o ../src/config/sam_9x60_ek_dma/tasks.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_9x60_ek_dma/ff98e467bb7087852da24323a7e30593d14741aa .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_9x60_ek_dma/a0b133c040b03a90697bc0f0c72d1e50dd70dba2 .generated_files/flags/sam_9x60_ek_dma/c4cbf5e98da60e275f7f716436e198799b3b6208
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_dma" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_9x60_ek_dma/ddram.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_9x60_ek_dma/ddram.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o dist/${CND_CONF}/${IMAGE_TYPE}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_9x60_ek_dma=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/sam_9x60_ek_dma
	${RM} -r dist/sam_9x60_ek_dma

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
