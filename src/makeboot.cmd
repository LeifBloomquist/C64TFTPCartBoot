@cls
@del *.o
@del *.prg

@cc65\ca65 cartboot.s
@cc65\ld65 cartboot.o -C cfg/c64prg-cart-boot.cfg ip65/ip65/ip65.lib  ip65/drivers/c64rrnet.lib -o cartboottemp.prg

@exo\exomizer.exe sfx basic cartboottemp.prg -o cartboot.prg

@dir cartboot.prg
@copy cartboot.prg p:\rogue\