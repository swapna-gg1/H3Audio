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
ifeq "$(wildcard nbproject/Makefile-local-sam_9x60_ek_poll.mk)" "nbproject/Makefile-local-sam_9x60_ek_poll.mk"
include nbproject/Makefile-local-sam_9x60_ek_poll.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=sam_9x60_ek_poll
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/config/sam_9x60_ek_poll/bsp/bsp.c ../src/config/sam_9x60_ek_poll/audio/peripheral/classd/plib_classd.c ../src/main.c ../src/config/sam_9x60_ek_poll/initialization.c ../src/config/sam_9x60_ek_poll/interrupts.c ../src/config/sam_9x60_ek_poll/stdio/xc32_monitor.c ../src/config/sam_9x60_ek_poll/peripheral/mmu/plib_mmu.c ../src/config/sam_9x60_ek_poll/peripheral/clk/plib_clk.c ../src/config/sam_9x60_ek_poll/peripheral/pio/plib_pio.c ../src/config/sam_9x60_ek_poll/peripheral/aic/plib_aic.c ../src/config/sam_9x60_ek_poll/cstartup.S ../src/config/sam_9x60_ek_poll/fault_handlers.c ../src/config/sam_9x60_ek_poll/peripheral/tc/plib_tc0.c ../src/config/sam_9x60_ek_poll/peripheral/dbgu/plib_dbgu.c ../src/config/sam_9x60_ek_poll/system/int/src/sys_int.c ../src/config/sam_9x60_ek_poll/system/cache/sys_cache.c ../src/app.c ../src/config/sam_9x60_ek_poll/tasks.c ../src/config/sam_9x60_ek_poll/system/time/src/sys_time.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1304349291/bsp.o ${OBJECTDIR}/_ext/812858308/plib_classd.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1119546267/initialization.o ${OBJECTDIR}/_ext/1119546267/interrupts.o ${OBJECTDIR}/_ext/666503263/xc32_monitor.o ${OBJECTDIR}/_ext/247653036/plib_mmu.o ${OBJECTDIR}/_ext/247643385/plib_clk.o ${OBJECTDIR}/_ext/247655789/plib_pio.o ${OBJECTDIR}/_ext/247641362/plib_aic.o ${OBJECTDIR}/_ext/1119546267/cstartup.o ${OBJECTDIR}/_ext/1119546267/fault_handlers.o ${OBJECTDIR}/_ext/1254915000/plib_tc0.o ${OBJECTDIR}/_ext/912969483/plib_dbgu.o ${OBJECTDIR}/_ext/2069146318/sys_int.o ${OBJECTDIR}/_ext/1916636916/sys_cache.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1119546267/tasks.o ${OBJECTDIR}/_ext/1414961624/sys_time.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1304349291/bsp.o.d ${OBJECTDIR}/_ext/812858308/plib_classd.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1119546267/initialization.o.d ${OBJECTDIR}/_ext/1119546267/interrupts.o.d ${OBJECTDIR}/_ext/666503263/xc32_monitor.o.d ${OBJECTDIR}/_ext/247653036/plib_mmu.o.d ${OBJECTDIR}/_ext/247643385/plib_clk.o.d ${OBJECTDIR}/_ext/247655789/plib_pio.o.d ${OBJECTDIR}/_ext/247641362/plib_aic.o.d ${OBJECTDIR}/_ext/1119546267/cstartup.o.d ${OBJECTDIR}/_ext/1119546267/fault_handlers.o.d ${OBJECTDIR}/_ext/1254915000/plib_tc0.o.d ${OBJECTDIR}/_ext/912969483/plib_dbgu.o.d ${OBJECTDIR}/_ext/2069146318/sys_int.o.d ${OBJECTDIR}/_ext/1916636916/sys_cache.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d ${OBJECTDIR}/_ext/1119546267/tasks.o.d ${OBJECTDIR}/_ext/1414961624/sys_time.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1304349291/bsp.o ${OBJECTDIR}/_ext/812858308/plib_classd.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1119546267/initialization.o ${OBJECTDIR}/_ext/1119546267/interrupts.o ${OBJECTDIR}/_ext/666503263/xc32_monitor.o ${OBJECTDIR}/_ext/247653036/plib_mmu.o ${OBJECTDIR}/_ext/247643385/plib_clk.o ${OBJECTDIR}/_ext/247655789/plib_pio.o ${OBJECTDIR}/_ext/247641362/plib_aic.o ${OBJECTDIR}/_ext/1119546267/cstartup.o ${OBJECTDIR}/_ext/1119546267/fault_handlers.o ${OBJECTDIR}/_ext/1254915000/plib_tc0.o ${OBJECTDIR}/_ext/912969483/plib_dbgu.o ${OBJECTDIR}/_ext/2069146318/sys_int.o ${OBJECTDIR}/_ext/1916636916/sys_cache.o ${OBJECTDIR}/_ext/1360937237/app.o ${OBJECTDIR}/_ext/1119546267/tasks.o ${OBJECTDIR}/_ext/1414961624/sys_time.o

# Source Files
SOURCEFILES=../src/config/sam_9x60_ek_poll/bsp/bsp.c ../src/config/sam_9x60_ek_poll/audio/peripheral/classd/plib_classd.c ../src/main.c ../src/config/sam_9x60_ek_poll/initialization.c ../src/config/sam_9x60_ek_poll/interrupts.c ../src/config/sam_9x60_ek_poll/stdio/xc32_monitor.c ../src/config/sam_9x60_ek_poll/peripheral/mmu/plib_mmu.c ../src/config/sam_9x60_ek_poll/peripheral/clk/plib_clk.c ../src/config/sam_9x60_ek_poll/peripheral/pio/plib_pio.c ../src/config/sam_9x60_ek_poll/peripheral/aic/plib_aic.c ../src/config/sam_9x60_ek_poll/cstartup.S ../src/config/sam_9x60_ek_poll/fault_handlers.c ../src/config/sam_9x60_ek_poll/peripheral/tc/plib_tc0.c ../src/config/sam_9x60_ek_poll/peripheral/dbgu/plib_dbgu.c ../src/config/sam_9x60_ek_poll/system/int/src/sys_int.c ../src/config/sam_9x60_ek_poll/system/cache/sys_cache.c ../src/app.c ../src/config/sam_9x60_ek_poll/tasks.c ../src/config/sam_9x60_ek_poll/system/time/src/sys_time.c



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
	${MAKE}  -f nbproject/Makefile-sam_9x60_ek_poll.mk ${DISTDIR}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=SAM9X60
MP_LINKER_FILE_OPTION=,--script="..\src\config\sam_9x60_ek_poll\ddram.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1119546267/cstartup.o: ../src/config/sam_9x60_ek_poll/cstartup.S  .generated_files/flags/sam_9x60_ek_poll/8fb78864a3e67b97453155b14622cdb364bb8d50 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1119546267" 
	@${RM} ${OBJECTDIR}/_ext/1119546267/cstartup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1119546267/cstartup.o 
	@${RM} ${OBJECTDIR}/_ext/1119546267/cstartup.o.ok ${OBJECTDIR}/_ext/1119546267/cstartup.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1119546267/cstartup.o.d"  -o ${OBJECTDIR}/_ext/1119546267/cstartup.o ../src/config/sam_9x60_ek_poll/cstartup.S  -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1119546267/cstartup.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1119546267/cstartup.o.d" "${OBJECTDIR}/_ext/1119546267/cstartup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1119546267/cstartup.o: ../src/config/sam_9x60_ek_poll/cstartup.S  .generated_files/flags/sam_9x60_ek_poll/307359e79e88e6fbbce6516a6d54b7a05d2c5145 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1119546267" 
	@${RM} ${OBJECTDIR}/_ext/1119546267/cstartup.o.d 
	@${RM} ${OBJECTDIR}/_ext/1119546267/cstartup.o 
	@${RM} ${OBJECTDIR}/_ext/1119546267/cstartup.o.ok ${OBJECTDIR}/_ext/1119546267/cstartup.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1119546267/cstartup.o.d"  -o ${OBJECTDIR}/_ext/1119546267/cstartup.o ../src/config/sam_9x60_ek_poll/cstartup.S  -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1119546267/cstartup.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1119546267/cstartup.o.d" "${OBJECTDIR}/_ext/1119546267/cstartup.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1304349291/bsp.o: ../src/config/sam_9x60_ek_poll/bsp/bsp.c  .generated_files/flags/sam_9x60_ek_poll/b26f01f99f7feeecbc1934ceadceaa8b05d7f1f8 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1304349291" 
	@${RM} ${OBJECTDIR}/_ext/1304349291/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1304349291/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1304349291/bsp.o.d" -o ${OBJECTDIR}/_ext/1304349291/bsp.o ../src/config/sam_9x60_ek_poll/bsp/bsp.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/812858308/plib_classd.o: ../src/config/sam_9x60_ek_poll/audio/peripheral/classd/plib_classd.c  .generated_files/flags/sam_9x60_ek_poll/669e62217b3fc0df102d6cc736709339a0639878 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/812858308" 
	@${RM} ${OBJECTDIR}/_ext/812858308/plib_classd.o.d 
	@${RM} ${OBJECTDIR}/_ext/812858308/plib_classd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/812858308/plib_classd.o.d" -o ${OBJECTDIR}/_ext/812858308/plib_classd.o ../src/config/sam_9x60_ek_poll/audio/peripheral/classd/plib_classd.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_9x60_ek_poll/918233d22397fbff848dcb123327cbed19f4b7df .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1119546267/initialization.o: ../src/config/sam_9x60_ek_poll/initialization.c  .generated_files/flags/sam_9x60_ek_poll/a792b038a984345183ef2835a590c875d791c82 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1119546267" 
	@${RM} ${OBJECTDIR}/_ext/1119546267/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1119546267/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1119546267/initialization.o.d" -o ${OBJECTDIR}/_ext/1119546267/initialization.o ../src/config/sam_9x60_ek_poll/initialization.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1119546267/interrupts.o: ../src/config/sam_9x60_ek_poll/interrupts.c  .generated_files/flags/sam_9x60_ek_poll/f8be71ad0c27d67a62d4aef5c37cbf1ea292b10 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1119546267" 
	@${RM} ${OBJECTDIR}/_ext/1119546267/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1119546267/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1119546267/interrupts.o.d" -o ${OBJECTDIR}/_ext/1119546267/interrupts.o ../src/config/sam_9x60_ek_poll/interrupts.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/666503263/xc32_monitor.o: ../src/config/sam_9x60_ek_poll/stdio/xc32_monitor.c  .generated_files/flags/sam_9x60_ek_poll/d2b2caaf76ea61c57498657c379906e8ac5a661e .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/666503263" 
	@${RM} ${OBJECTDIR}/_ext/666503263/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/666503263/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/666503263/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/666503263/xc32_monitor.o ../src/config/sam_9x60_ek_poll/stdio/xc32_monitor.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/247653036/plib_mmu.o: ../src/config/sam_9x60_ek_poll/peripheral/mmu/plib_mmu.c  .generated_files/flags/sam_9x60_ek_poll/18c56cd7639ce9f09c0af3e30c5c5d486ccc8a62 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/247653036" 
	@${RM} ${OBJECTDIR}/_ext/247653036/plib_mmu.o.d 
	@${RM} ${OBJECTDIR}/_ext/247653036/plib_mmu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/247653036/plib_mmu.o.d" -o ${OBJECTDIR}/_ext/247653036/plib_mmu.o ../src/config/sam_9x60_ek_poll/peripheral/mmu/plib_mmu.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/247643385/plib_clk.o: ../src/config/sam_9x60_ek_poll/peripheral/clk/plib_clk.c  .generated_files/flags/sam_9x60_ek_poll/e54da5becbcd666d50492b92d5128e542bb883c7 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/247643385" 
	@${RM} ${OBJECTDIR}/_ext/247643385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/247643385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/247643385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/247643385/plib_clk.o ../src/config/sam_9x60_ek_poll/peripheral/clk/plib_clk.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/247655789/plib_pio.o: ../src/config/sam_9x60_ek_poll/peripheral/pio/plib_pio.c  .generated_files/flags/sam_9x60_ek_poll/8b0b21188d6e778e087133472e1f72403c2b73ae .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/247655789" 
	@${RM} ${OBJECTDIR}/_ext/247655789/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/247655789/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/247655789/plib_pio.o.d" -o ${OBJECTDIR}/_ext/247655789/plib_pio.o ../src/config/sam_9x60_ek_poll/peripheral/pio/plib_pio.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/247641362/plib_aic.o: ../src/config/sam_9x60_ek_poll/peripheral/aic/plib_aic.c  .generated_files/flags/sam_9x60_ek_poll/9e7747257b91baa099170035a694cef4b3a5ec27 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/247641362" 
	@${RM} ${OBJECTDIR}/_ext/247641362/plib_aic.o.d 
	@${RM} ${OBJECTDIR}/_ext/247641362/plib_aic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/247641362/plib_aic.o.d" -o ${OBJECTDIR}/_ext/247641362/plib_aic.o ../src/config/sam_9x60_ek_poll/peripheral/aic/plib_aic.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1119546267/fault_handlers.o: ../src/config/sam_9x60_ek_poll/fault_handlers.c  .generated_files/flags/sam_9x60_ek_poll/dd1b301b610e431fef4e62001367a4bfa6d69a6 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1119546267" 
	@${RM} ${OBJECTDIR}/_ext/1119546267/fault_handlers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1119546267/fault_handlers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1119546267/fault_handlers.o.d" -o ${OBJECTDIR}/_ext/1119546267/fault_handlers.o ../src/config/sam_9x60_ek_poll/fault_handlers.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1254915000/plib_tc0.o: ../src/config/sam_9x60_ek_poll/peripheral/tc/plib_tc0.c  .generated_files/flags/sam_9x60_ek_poll/3427c0804ea811b633390bfe0cb5de864938fef5 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1254915000" 
	@${RM} ${OBJECTDIR}/_ext/1254915000/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1254915000/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1254915000/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/1254915000/plib_tc0.o ../src/config/sam_9x60_ek_poll/peripheral/tc/plib_tc0.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912969483/plib_dbgu.o: ../src/config/sam_9x60_ek_poll/peripheral/dbgu/plib_dbgu.c  .generated_files/flags/sam_9x60_ek_poll/c18c89449987331d8c2ce8a5170f9a47da3e5d13 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/912969483" 
	@${RM} ${OBJECTDIR}/_ext/912969483/plib_dbgu.o.d 
	@${RM} ${OBJECTDIR}/_ext/912969483/plib_dbgu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912969483/plib_dbgu.o.d" -o ${OBJECTDIR}/_ext/912969483/plib_dbgu.o ../src/config/sam_9x60_ek_poll/peripheral/dbgu/plib_dbgu.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2069146318/sys_int.o: ../src/config/sam_9x60_ek_poll/system/int/src/sys_int.c  .generated_files/flags/sam_9x60_ek_poll/7efa2dfadcc29dc8884c5623696ed6eb533e21c8 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/2069146318" 
	@${RM} ${OBJECTDIR}/_ext/2069146318/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/2069146318/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2069146318/sys_int.o.d" -o ${OBJECTDIR}/_ext/2069146318/sys_int.o ../src/config/sam_9x60_ek_poll/system/int/src/sys_int.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1916636916/sys_cache.o: ../src/config/sam_9x60_ek_poll/system/cache/sys_cache.c  .generated_files/flags/sam_9x60_ek_poll/8f94dc58d391043b43e0e074518a1d94bdc97cda .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1916636916" 
	@${RM} ${OBJECTDIR}/_ext/1916636916/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1916636916/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1916636916/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1916636916/sys_cache.o ../src/config/sam_9x60_ek_poll/system/cache/sys_cache.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_9x60_ek_poll/48c285fc8f10313f3b7e9b420ddd9f4fe87ba2be .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1119546267/tasks.o: ../src/config/sam_9x60_ek_poll/tasks.c  .generated_files/flags/sam_9x60_ek_poll/1dfacc8161f9014a7b06385281251ea9f70009 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1119546267" 
	@${RM} ${OBJECTDIR}/_ext/1119546267/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1119546267/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1119546267/tasks.o.d" -o ${OBJECTDIR}/_ext/1119546267/tasks.o ../src/config/sam_9x60_ek_poll/tasks.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1414961624/sys_time.o: ../src/config/sam_9x60_ek_poll/system/time/src/sys_time.c  .generated_files/flags/sam_9x60_ek_poll/3dcb250409b59aed2e6ae2a8cbb1987e38ac5c53 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1414961624" 
	@${RM} ${OBJECTDIR}/_ext/1414961624/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1414961624/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1414961624/sys_time.o.d" -o ${OBJECTDIR}/_ext/1414961624/sys_time.o ../src/config/sam_9x60_ek_poll/system/time/src/sys_time.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1304349291/bsp.o: ../src/config/sam_9x60_ek_poll/bsp/bsp.c  .generated_files/flags/sam_9x60_ek_poll/a451e12de4ffe4948b85d462e83af36d9c0ec3df .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1304349291" 
	@${RM} ${OBJECTDIR}/_ext/1304349291/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1304349291/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1304349291/bsp.o.d" -o ${OBJECTDIR}/_ext/1304349291/bsp.o ../src/config/sam_9x60_ek_poll/bsp/bsp.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/812858308/plib_classd.o: ../src/config/sam_9x60_ek_poll/audio/peripheral/classd/plib_classd.c  .generated_files/flags/sam_9x60_ek_poll/9ffde7ce68127a9362fd7154ff1288ede4c9e165 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/812858308" 
	@${RM} ${OBJECTDIR}/_ext/812858308/plib_classd.o.d 
	@${RM} ${OBJECTDIR}/_ext/812858308/plib_classd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/812858308/plib_classd.o.d" -o ${OBJECTDIR}/_ext/812858308/plib_classd.o ../src/config/sam_9x60_ek_poll/audio/peripheral/classd/plib_classd.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/sam_9x60_ek_poll/febdd0be553267bc9843b934e6c14e857efbcadb .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1119546267/initialization.o: ../src/config/sam_9x60_ek_poll/initialization.c  .generated_files/flags/sam_9x60_ek_poll/dd11b94dca247691fe67dc63fdbeab56519f9dd5 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1119546267" 
	@${RM} ${OBJECTDIR}/_ext/1119546267/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1119546267/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1119546267/initialization.o.d" -o ${OBJECTDIR}/_ext/1119546267/initialization.o ../src/config/sam_9x60_ek_poll/initialization.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1119546267/interrupts.o: ../src/config/sam_9x60_ek_poll/interrupts.c  .generated_files/flags/sam_9x60_ek_poll/3011ea2a4acf0544367415c1e6df25b24357510a .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1119546267" 
	@${RM} ${OBJECTDIR}/_ext/1119546267/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1119546267/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1119546267/interrupts.o.d" -o ${OBJECTDIR}/_ext/1119546267/interrupts.o ../src/config/sam_9x60_ek_poll/interrupts.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/666503263/xc32_monitor.o: ../src/config/sam_9x60_ek_poll/stdio/xc32_monitor.c  .generated_files/flags/sam_9x60_ek_poll/e54c6d24335aa51cfb151cb8252395b6ca4d2435 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/666503263" 
	@${RM} ${OBJECTDIR}/_ext/666503263/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/666503263/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/666503263/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/666503263/xc32_monitor.o ../src/config/sam_9x60_ek_poll/stdio/xc32_monitor.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/247653036/plib_mmu.o: ../src/config/sam_9x60_ek_poll/peripheral/mmu/plib_mmu.c  .generated_files/flags/sam_9x60_ek_poll/390a4d5ffc4a219e3226b4ce29e1acdf2b99f5a6 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/247653036" 
	@${RM} ${OBJECTDIR}/_ext/247653036/plib_mmu.o.d 
	@${RM} ${OBJECTDIR}/_ext/247653036/plib_mmu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/247653036/plib_mmu.o.d" -o ${OBJECTDIR}/_ext/247653036/plib_mmu.o ../src/config/sam_9x60_ek_poll/peripheral/mmu/plib_mmu.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/247643385/plib_clk.o: ../src/config/sam_9x60_ek_poll/peripheral/clk/plib_clk.c  .generated_files/flags/sam_9x60_ek_poll/eca833872fbf4ae0241d834d91af90a6f9ae7e02 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/247643385" 
	@${RM} ${OBJECTDIR}/_ext/247643385/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/247643385/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/247643385/plib_clk.o.d" -o ${OBJECTDIR}/_ext/247643385/plib_clk.o ../src/config/sam_9x60_ek_poll/peripheral/clk/plib_clk.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/247655789/plib_pio.o: ../src/config/sam_9x60_ek_poll/peripheral/pio/plib_pio.c  .generated_files/flags/sam_9x60_ek_poll/8e930a10c92fe0e6f1d471a0f1543549faddd120 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/247655789" 
	@${RM} ${OBJECTDIR}/_ext/247655789/plib_pio.o.d 
	@${RM} ${OBJECTDIR}/_ext/247655789/plib_pio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/247655789/plib_pio.o.d" -o ${OBJECTDIR}/_ext/247655789/plib_pio.o ../src/config/sam_9x60_ek_poll/peripheral/pio/plib_pio.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/247641362/plib_aic.o: ../src/config/sam_9x60_ek_poll/peripheral/aic/plib_aic.c  .generated_files/flags/sam_9x60_ek_poll/81f9a338c34d67814d410e30e31c1f80af2a3653 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/247641362" 
	@${RM} ${OBJECTDIR}/_ext/247641362/plib_aic.o.d 
	@${RM} ${OBJECTDIR}/_ext/247641362/plib_aic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/247641362/plib_aic.o.d" -o ${OBJECTDIR}/_ext/247641362/plib_aic.o ../src/config/sam_9x60_ek_poll/peripheral/aic/plib_aic.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1119546267/fault_handlers.o: ../src/config/sam_9x60_ek_poll/fault_handlers.c  .generated_files/flags/sam_9x60_ek_poll/faef1eee15c0f096a7a73b61b89ff1205e4fd46d .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1119546267" 
	@${RM} ${OBJECTDIR}/_ext/1119546267/fault_handlers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1119546267/fault_handlers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1119546267/fault_handlers.o.d" -o ${OBJECTDIR}/_ext/1119546267/fault_handlers.o ../src/config/sam_9x60_ek_poll/fault_handlers.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1254915000/plib_tc0.o: ../src/config/sam_9x60_ek_poll/peripheral/tc/plib_tc0.c  .generated_files/flags/sam_9x60_ek_poll/1a3659cee4b137b5fb5244a3b24a9b985acea2dc .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1254915000" 
	@${RM} ${OBJECTDIR}/_ext/1254915000/plib_tc0.o.d 
	@${RM} ${OBJECTDIR}/_ext/1254915000/plib_tc0.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1254915000/plib_tc0.o.d" -o ${OBJECTDIR}/_ext/1254915000/plib_tc0.o ../src/config/sam_9x60_ek_poll/peripheral/tc/plib_tc0.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/912969483/plib_dbgu.o: ../src/config/sam_9x60_ek_poll/peripheral/dbgu/plib_dbgu.c  .generated_files/flags/sam_9x60_ek_poll/13410c31632f52329cb9d6a8c8da719bc3a6cd3c .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/912969483" 
	@${RM} ${OBJECTDIR}/_ext/912969483/plib_dbgu.o.d 
	@${RM} ${OBJECTDIR}/_ext/912969483/plib_dbgu.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/912969483/plib_dbgu.o.d" -o ${OBJECTDIR}/_ext/912969483/plib_dbgu.o ../src/config/sam_9x60_ek_poll/peripheral/dbgu/plib_dbgu.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/2069146318/sys_int.o: ../src/config/sam_9x60_ek_poll/system/int/src/sys_int.c  .generated_files/flags/sam_9x60_ek_poll/6462fdccf7668cecd778a9c6d20b7678ec9c2a7d .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/2069146318" 
	@${RM} ${OBJECTDIR}/_ext/2069146318/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/2069146318/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/2069146318/sys_int.o.d" -o ${OBJECTDIR}/_ext/2069146318/sys_int.o ../src/config/sam_9x60_ek_poll/system/int/src/sys_int.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1916636916/sys_cache.o: ../src/config/sam_9x60_ek_poll/system/cache/sys_cache.c  .generated_files/flags/sam_9x60_ek_poll/128c63325144d8fecb942aa249603b23c8949474 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1916636916" 
	@${RM} ${OBJECTDIR}/_ext/1916636916/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1916636916/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1916636916/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1916636916/sys_cache.o ../src/config/sam_9x60_ek_poll/system/cache/sys_cache.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/sam_9x60_ek_poll/28edb6250f8551a2daab2bbea6e7568438e28b53 .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1119546267/tasks.o: ../src/config/sam_9x60_ek_poll/tasks.c  .generated_files/flags/sam_9x60_ek_poll/8d8207491a29ea8f7e1b603efd62113a3efb53cc .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1119546267" 
	@${RM} ${OBJECTDIR}/_ext/1119546267/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1119546267/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1119546267/tasks.o.d" -o ${OBJECTDIR}/_ext/1119546267/tasks.o ../src/config/sam_9x60_ek_poll/tasks.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1414961624/sys_time.o: ../src/config/sam_9x60_ek_poll/system/time/src/sys_time.c  .generated_files/flags/sam_9x60_ek_poll/5ba028ae5905c44ef293ba9d4d622dd2d4bee5d .generated_files/flags/sam_9x60_ek_poll/d562690f73ed3caa7548bdcbbc4e00a67c744c49
	@${MKDIR} "${OBJECTDIR}/_ext/1414961624" 
	@${RM} ${OBJECTDIR}/_ext/1414961624/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/1414961624/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -fdata-sections -O1 -fno-common -I"../src" -I"../src/config/sam_9x60_ek_poll" -I"../src/packs/SAM9X60_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1414961624/sys_time.o.d" -o ${OBJECTDIR}/_ext/1414961624/sys_time.o ../src/config/sam_9x60_ek_poll/system/time/src/sys_time.c    -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/config/sam_9x60_ek_poll/ddram.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/config/sam_9x60_ek_poll/ddram.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION) -mno-device-startup-code -o ${DISTDIR}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_sam_9x60_ek_poll=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--gc-sections,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/audio_sam_9x60_ek_classd.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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
