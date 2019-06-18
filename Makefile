

calculator: calculator.l calculator.y
	bison -d calculator.y
	flex -o calculator.lex.yy.c calculator.l
	cc -o $@ calculator.tab.c calculator.lex.yy.c

clean:
	rm -f *.tab.h *.tab.c calculator.lex.yy.c calculator
