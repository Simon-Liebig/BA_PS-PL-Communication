################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
LD_SRCS += \
../src/lscript.ld 

C_SRCS += \
../src/cplx_data.c \
../src/dma_accel.c \
../src/fft.c \
../src/helloworld.c \
../src/platform.c 

OBJS += \
./src/cplx_data.o \
./src/dma_accel.o \
./src/fft.o \
./src/helloworld.o \
./src/platform.o 

C_DEPS += \
./src/cplx_data.d \
./src/dma_accel.d \
./src/fft.d \
./src/helloworld.d \
./src/platform.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../dma_ex_fft_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


