#include <stdio.h>
#include "libft.h"

int		main(void)
{
	char *s = "**abc**defg*hijk***lmn**";
	char **a;
//	char *s = "";

	a = ft_strsplit(s, '*');
	while (*a)
	{
		printf("%s\n", *a);
		a++;
	}
	return (0);
}
