NAME = libft.a

BLUE = \033[38;2;200;200;250m
DEFAULT = \033[0;0m

HEADER = ./include

SRC = ft_putnbr_fd.c ft_putendl_fd.c ft_putstr_fd.c ft_putchar_fd.c\
ft_putnbr.c ft_putendl.c ft_putstr.c ft_putchar.c ft_itoa.c ft_strsplit.c\
ft_strtrim.c ft_strjoin.c ft_strsub.c ft_strnequ.c ft_strequ.c ft_strmapi.c\
ft_strmap.c ft_striteri.c ft_striter.c ft_strclr.c ft_strdel.c ft_strnew.c\
ft_memdel.c ft_memalloc.c ft_tolower.c ft_toupper.c ft_isprint.c ft_isascii.c\
ft_isalnum.c ft_isdigit.c ft_isalpha.c ft_strnstr.c ft_strstr.c ft_strrchr.c\
ft_strchr.c ft_strlcat.c ft_strncat.c ft_strcat.c ft_memcmp.c ft_memchr.c\
ft_memmove.c ft_memcpy.c ft_memccpy.c ft_bzero.c ft_atoi.c ft_strlen.c \
ft_strcpy.c ft_strncpy.c ft_strcmp.c ft_strncmp.c ft_strdup.c ft_memset.c\
ft_lstnew.c ft_lstdelone.c ft_lstdel.c ft_lstadd.c ft_lstiter.c ft_lstmap.c \
ft_print_memory.c ft_printhex.c

OBJ_FILES = $(SRC:%.c=%.o)
DEPS = $(OBJ_FILES:.o=.d)


FLAGS = -Wall -Wextra -Werror -MMD -MP

all: announce $(NAME)  

announce:
	@echo "$(BLUE)" 'making libft' "$(DEFAULT)"

$(NAME): $(OBJ_FILES)
	ar rc $(NAME) $(OBJ_FILES)

-include $(DEPS)
%.o: %.c
	gcc -o $@ $(FLAGS) -c $< -I $(HEADER)

clean:
	rm -f $(OBJ_FILES) $(DEPS)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re 
