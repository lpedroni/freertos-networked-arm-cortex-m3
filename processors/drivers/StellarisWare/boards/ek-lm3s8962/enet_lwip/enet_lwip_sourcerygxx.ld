/******************************************************************************
 *
 * enet_lwip_sourcerygxx.ld - Scatter file for Sourcery G++
 *
 * Copyright (c) 2007-2010 Texas Instruments Incorporated.  All rights reserved.
 * Software License Agreement
 * 
 * Texas Instruments (TI) is supplying this software for use solely and
 * exclusively on TI's microcontroller products. The software is owned by
 * TI and/or its suppliers, and is protected under applicable copyright
 * laws. You may not combine this software with "viral" open-source
 * software in order to form a larger program.
 * 
 * THIS SOFTWARE IS PROVIDED "AS IS" AND WITH ALL FAULTS.
 * NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, INCLUDING, BUT
 * NOT LIMITED TO, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
 * A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE. TI SHALL NOT, UNDER ANY
 * CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
 * DAMAGES, FOR ANY REASON WHATSOEVER.
 * 
 * This is part of revision 6075 of the EK-LM3S8962 Firmware Package.
 *
 *****************************************************************************/

/******************************************************************************
 *
 * Define the end of the heap space, which determines the beginning of the
 * stack space.
 *
 *****************************************************************************/
__cs3_heap_end = __cs3_region_end_ram - 1024;

/******************************************************************************
 *
 * Define the interrupt handlers used by the application.
 *
 *****************************************************************************/
EXTERN(SysTickIntHandler)
__cs3_isr_systick = SysTickIntHandler;
EXTERN(lwIPEthernetIntHandler)
__cs3_isr_ethernet0 = lwIPEthernetIntHandler;
