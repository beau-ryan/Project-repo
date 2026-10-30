#OUTPUT_FORMAT()
ENTRY(_start)


SECTIONS {
	. = 0x08000;
 
	.text : { *(.text) }
	
	. = 0x80000;
	.data : { *(.data) }

	.bss : { *(.bss) }

}
