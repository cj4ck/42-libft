# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cjackows <cjackows@student.42wolfsburg.de> +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/05/26 11:34:09 by cjackows          #+#    #+#              #
#    Updated: 2022/05/26 11:34:09 by cjackows         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME =libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror -I.

SRC	:= $(shell find . -type f ! -name "ft_lst*.c" -name "ft_*.c")
OBJ		:= $(SRC:%.c=%.o)

B_SRC	:= $(wildcard ft_lst*.c)
B_OBJ	:= $(BSRC:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ)
	ar -rcs $(NAME) $(OBJ)

bonus: $(OBJ) $(B_OBJ)
	ar -rcs $(NAME) $(OBJ) $(B_OBJ)

clean:
	@rm -f *.o

fclean: clean
	@rm -f $(NAME)

re: fclean all

.PHONY:	all clean fclean re bonus
