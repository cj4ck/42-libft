# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cjackows <cjackows@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/05/23 15:45:22 by cjackows          #+#    #+#              #
#    Updated: 2023/05/23 16:08:39 by cjackows         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

# SUPER SIMPLE AND EASY MAKEFILE
NAME = libft.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror -I.

src_dir = src
obj_dir = obj

src = ft_isalnum.c ft_isprint.c ft_memcmp.c ft_putchar_fd.c ft_split.c \
      ft_strlcat.c ft_strncmp.c ft_substr.c ft_atoi.c ft_isalpha.c \
      ft_itoa.c ft_memcpy.c ft_putendl_fd.c ft_strchr.c ft_strlcpy.c \
      ft_strnstr.c ft_tolower.c ft_bzero.c ft_isascii.c \
      ft_memmove.c ft_putnbr_fd.c ft_strdup.c ft_strlen.c ft_strrchr.c \
      ft_toupper.c ft_calloc.c ft_isdigit.c ft_memchr.c ft_memset.c \
      ft_putstr_fd.c ft_strjoin.c ft_strmapi.c ft_strtrim.c ft_striteri.c

bonus = ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c \
        ft_lstdelone.c ft_lstiter.c ft_lstlast.c \
        ft_lstmap.c ft_lstnew.c ft_lstsize.c

obj = $(addprefix $(obj_dir)/,$(src:.c=.o))
b_obj = $(addprefix $(obj_dir)/,$(bonus:.c=.o))

all: $(NAME)

$(NAME): ascii-art $(obj)
	@ar rcs $(NAME) $(obj)
	@echo '$(NAME) created.'

$(obj_dir)/%.o: $(src_dir)/%.c
	@$(CC) $(CFLAGS) -c $< -o $@

ascii-art:
	@echo "\033[38;5;51m   _____ ________           .____    ._____.    _____  __   "
	@echo "\033[38;5;87m  /  |  |\\_____  \\          |    |   |__\\_ |___/ ____\\/  |_ "
	@echo "\033[38;5;123m /   |  |_/  ____/   ______ |    |   |  || __ \\   __\\\\\   __\\"
	@echo "\033[38;5;159m/    ^   /       \\  /_____/ |    |___|  || \\_\\ \\  |   |  |  "
	@echo "\033[38;5;195m\\____   |\\_______ \\         |_______ \\__||___  /__|   |__|  "
	@echo "\033[38;5;231m     |__|        \\/                 \\/       \\/  "

clean:
	@rm -rf $(obj_dir)/*.o

fclean: clean
	@rm -rf $(NAME)

re: fclean all

bonus: $(obj) $(b_obj)
	@ar rcs $(NAME) $(obj) $(b_obj)

.PHONY: all clean fclean re bonus
