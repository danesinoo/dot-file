CC = g++
CFLAGS = -target arm64-apple-macos11 -mmacosx-version-min=11.0 -std=c++2a

compile: print
	@$(CC) $(CFLAGS) $(arg) -o $(basename $(arg))

help: print
	echo "Help:\n"
	cat /Users/carlorosso/.config/Makefile

run: print
	@$(basename $(arg))
	@rm $(basename $(arg))

%.o: %.cpp print 
	@$(CC) $< $(CFLAGS) -o $@

clear: print
	rm *.o

test: $(basename $(arg)).in print
	@cat $(basename $(arg)).in | $(basename $(arg))

print:
	@echo "\n"
