# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aolabarr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/17 15:08:51 by aolabarr          #+#    #+#              #
#    Updated: 2024/01/18 13:08:58 by aolabarr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
NOLINKER = -c
CFLAGS = -Wall -Wextra -Werror

SRC =	ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c \
		ft_bzero.c ft_memcpy.c ft_memmove.c ft_memset.c ft_memchr.c\
		ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strchr.c ft_strrchr.c \
		ft_strncmp.c ft_strnstr.c ft_memcmp.c ft_tolower.c ft_toupper.c \
		ft_atoi.c ft_calloc.c ft_strdup.c \
		ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
		ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c \
		ft_putendl_fd.c ft_putnbr_fd.c

SRC_BNS = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c \
		  ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstdelone_bonus.c \
		  ft_lstclear_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

OBJS = $(SRC:.c=.o)
OBJS_BNS = $(SRC_BNS:.c=.o)
NAME = libft.a

$(NAME): $(OBJS)
	ar -cr $(NAME) $(OBJS)

all: $(NAME)

%.o: %.c
	$(CC) $(NOLINKER) $(CFLAGS) $< -o $@

fclean: clean
	rm -f $(NAME) *.out

clean:
	rm -f *.o

re: fclean all

bonus: $(OBJS) $(OBJS_BNS)
	ar -cr $(NAME) $(OBJS) $(OBJS_BNS) 

.PHONY: all fclean clean re bonus


.SILENT:
