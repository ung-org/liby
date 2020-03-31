#include <stdio.h>

extern int yyparse(void);

int yyerror(const char *s)
{
	return fprintf(stderr, "%s\n", s);
}

int main(int argc, char *argv[])
{
	(void)argc;
	(void)argv;
	return yyparse();
}
