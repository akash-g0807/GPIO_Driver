; ******* Register definitions *******

;As per STM32L053R8 datasheet and reference manual 
; STM32L053R8 datasheet: https://www.st.com/resource/en/datasheet/stm32l053r8.pdf
; STM32L053R8 reference manual: https://www.st.com/resource/en/reference_manual/dm00108282.pdf
; STM32L053R8 uses ARM Cortex-M0+ core


;GPIOA_BASE 0x50000000

;RCC_IOPENR 0x2C
;RCC_IOPENR_GPIOA 0x1

;MODER5_OUT 1<<10
;MODER_OFFSET 0x00

;ODR_OFFSET 0x14
;ODR5 1<<5   ;;; LED ON BIT TO PIN 5 on PORT A
RCC_IOPENR                 EQU 0x2C
RCC_IOPENR_GPIOA           EQU 0x1   ;;;GPIOA ENABLE BIT

GPIOA_BASE                 EQU 0x50000000
GPIOA_MODER_OFFEST         EQU 0x00
GPIOA_MODER                EQU GPIOA_BASE + GPIOA_MODER_OFFEST

GPIOA_ODR_OFFSET           EQU 0x14
GPIOA_ODR                  EQU GPIOA_BASE + GPIOA_ODR_OFFSET

MODER5_OUT                 EQU 1<<10
LED_ON                       EQU 1<<5
GPIOA_EN                     EQU 1<<0
