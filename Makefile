default: clean file.pdf

clean:
	@echo "Cleaning file.pdf..."
	@rm -f file.pdf

file.pdf:
	@echo "Making an iso from minimal.pdf"
	@genisoimage -input-charset utf-8 -o $@ minimal.pdf 2>/dev/null
	@dd conv=notrunc of=file.pdf bs=1 seek=0 if=minimal.pdf
	@echo "Done...\n"
	@echo -n "  file.pdf created. file type = "
	@file file.pdf
