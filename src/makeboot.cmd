@cls
@del *.o
@del *.prg

@cc65\ca65 cartboot.s
@cc65\ld65 cartboot.o -C cfg/c64prg-cart-boot.cfg ip65/ip65/ip65.lib  ip65/drivers/c64rrnet.lib -o cartboot.prg

@dir *.prg
@copy *.prg p:\rogue\