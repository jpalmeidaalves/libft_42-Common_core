NAME	= libft.a
GC	= clang
CFLAGS	= -Wall -Werror -Wextra
LIB	= libft.h 
SRCS	= ft_atoi.c     ft_isascii.c  ft_memmove.c  ft_strlcpy.c  ft_tolower.c \
	ft_bzero.c    ft_isdigit.c  ft_memset.c   ft_strlen.c   ft_toupper.c \
	ft_calloc.c   ft_isprint.c  ft_strchr.c   ft_strncmp.c \
	ft_isalnum.c  ft_memcmp.c   ft_strdup.c   ft_strnstr.c  ft_memchr.c \
	ft_isalpha.c  ft_memcpy.c   ft_strlcat.c  ft_strrchr.c  ft_substr.c \
	ft_strtrim.c  ft_strjoin.c  ft_split.c	  ft_itoa.c     ft_strmapi.c \
	ft_striteri.c ft_putchar_fd.c  ft_putstr_fd.c  ft_putendl_fd.c \
       	ft_putnbr_fd.c  
OBJS	= $(SRCS:.c=.o)
BONUS	= ft_lstnew.c  ft_lstadd_front.c  ft_lstsize.c  ft_lstlast.c \
          ft_lstadd_back.c  ft_lstdelone.c  ft_lstmap.c  ft_lstclear.c  ft_lstiter.c
B_OBJS	= $(BONUS:.c=.o)
RM	= rm -f
AR	= ar rc
RAN	= ranlib

$(NAME): $(OBJS) 
	$(AR) $(NAME) $(OBJS)

bonus: $(OBJS) $(B_OBJS)
	$(AR) $(NAME) $(OBJS) $(B_OBJS)

%.o : %.c 
	$(GC) $(CFLAGS) -c $< -o $@

all: 	$(NAME)

clean:
	$(RM) $(OBJS) $(B_OBJS)

fclean:	clean
	$(RM) $(NAME)

re:	fclean $(NAME)

.PHONY:	all clean fclean re bonus
