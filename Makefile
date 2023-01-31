# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cvan-oot <cvan-oot@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/15 18:32:23 by cvan-oot          #+#    #+#              #
#    Updated: 2023/01/31 15:15:31 by cvan-oot         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libftprintf.a
INCLUDE		= ft_printf.h
CC = gcc
CFLAGS = -Wall -Wextra -Werror

SRC = src/ft_print_hex.c \
		src/ft_printf.c \
		src/ft_print_int.c \
		src/ft_print_uns.c \
		src/ft_print_void.c \
		src/ft_print_nbr.c 

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME) : $(OBJ)
		ar rcs $(NAME) $(OBJ)

%.o: %.c  $(INCLUDE)
		@echo "Compiling: $<"
		$(CC) $(CFLAGS) -c $< -o $@

clean :
			rm -rf $(OBJ)

fclean: clean
			rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re