        GET reg_stml053r8.inc
		
	AREA	SERVICECODE, CODE, READONLY, ALIGN=2
        EXPORT	__main


__main
        BL   GPIO_Init
loop
        B    loop

GPIO_Init

        ;; C code to be converted to assembly ;;
         ;; RCC->IOPENR |= GPIOA_EN; // Enable GPIOA clock

        LDR  R0, =RCC_IOPENR  ; LOAD RCC_IOPENR ADDRESS
        LDR  R1, [R0]          ; LOAD RCC_IOPENR VALUE
        ORR  R1, R1, GPIOA_EN  ; SET GPIOA_EN BIT IN RCC_IOPENR
        STR  R1, [R0]          ; STORE RCC_IOPENR VALUE in RCC_IOPENR ADDRESS

        ;; C code to be converted to assembly ;;
        ;; GPIOA->MODER |= GPIOA_MODER_5_OUT; // Set GPIOA pin 5 as output

        LDR  R0, =GPIOA_MODER  ; LOAD GPIOA_MODER ADDRESS
        LDR  R1, [R0]          ; LOAD GPIOA_MODER VALUE
        ORR  R1, R1, GPIOA_MODER_5_OUT  ; SET GPIOA_MODER_5_OUT BIT IN GPIOA_MODER
        STR  R1, [R0]          ; STORE GPIOA_MODER VALUE in GPIOA_MODER ADDRESS

        ;; C code to be converted to assembly ;;
        ;; GPIOA->ODR = LED_ON; // Turn on LED

        LDR  R0, =GPIOA_ODR  ; LOAD GPIOA_ODR ADDRESS
        LDR  R1, =LED_ON     ; LOAD LED_ON VALUE
        STR  R1, [R0]        ; STORE LED_ON VALUE in GPIOA_ODR ADDRESS

        BX
        ALIGN
        END



       
