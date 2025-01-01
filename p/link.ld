OUTPUT_ARCH( "riscv" )
ENTRY(_start)

SECTIONS
{
  . = 0x80000000;
  .text.init : { *(.text.init) }
  .data : { *(.data) }
  . = 0x80400000;
  .tohost : { *(.tohost) }
  .bss : { *(.bss) }
  _end = .;
}

