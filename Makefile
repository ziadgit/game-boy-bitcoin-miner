CC	= ../../../bin/lcc -Wa-l -Wl-m -Wl-j

BINS	= miner.gb
all:	$(BINS)

make.bat: Makefile
	@echo "REM Automatically generated from Makefile" > make.bat
	@make -sn | sed y/\\//\\\\/ | grep -v make >> make.bat

# Compile and link single file in one pass
%.gb:	%.c
	$(CC) -o $@ $< memzero.c sha2.c sprite.c

clean:
	rm -f *.o *.lst *.map *.gb *~ *.rel *.cdb *.ihx *.lnk *.sym *.asm *.noi

