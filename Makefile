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

CC		=	gcc
CFLAGS 	=	-Wall -Wextra -Werror -Iinclude
NAME	=	libft.a
AR		=	ar rcs
SRC		=	$(shell find src -iname "*.c")
OBJ		=	$(SRC:.c=.o)

$(NAME): $(OBJ)
	@$(AR) $(NAME) $(OBJ)
	@echo '$(NAME) created.'

# ar rcs $(NAME) $(OBJ)
ascii-art:
	@echo "\033[38;5;51m   _____ ________           .____    ._____.    _____  __   "
	@echo "\033[38;5;87m  /  |  |\\_____  \\          |    |   |__\\_ |___/ ____\\/  |_ "
	@echo "\033[38;5;123m /   |  |_/  ____/   ______ |    |   |  || __ \\   __\\\\\   __\\"
	@echo "\033[38;5;159m/    ^   /       \\  /_____/ |    |___|  || \\_\\ \\  |   |  |  "
	@echo "\033[38;5;195m\\____   |\\_______ \\         |_______ \\__||___  /__|   |__|  "
	@echo "\033[38;5;231m     |__|        \\/                 \\/       \\/  "

all: $(NAME)

clean:
	rm -rf $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY:	all clean fclean re test
