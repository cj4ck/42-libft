RED			=	\033[38;5;160m
RED_B		=	\033[48;5;160m
DELETED		=	\033[48;5;160m[DELETED]\033[0m
GREEN		=	\033[38;5;40m
GREEN_B		=	\033[48;5;40m
COMPILATION	=	\033[48;5;40m[COMPILATION]\033[0m $(GREEN)
BLUE		=	\033[38;5;123m
BLUE_B		=	\033[48;5;39m
INFO		=	\033[48;5;39m[INFORMATION]\033[0m $(BLUE)
RESET		=	\033[0m

CC = gcc
CFLAGS = -Wall -Wextra -Werror -Iinclude
NAME = libft.a
AR = ar rcs
SRC_DIR = src
OBJ_DIR = obj
SRC = ft_isalnum.c ft_isprint.c ft_memcmp.c ft_putchar_fd.c ft_split.c \
      ft_strlcat.c ft_strncmp.c ft_substr.c ft_atoi.c ft_isalpha.c \
      ft_itoa.c ft_memcpy.c ft_putendl_fd.c ft_strchr.c ft_strlcpy.c \
      ft_strnstr.c ft_tolower.c ft_bzero.c ft_isascii.c \
      ft_memmove.c ft_putnbr_fd.c ft_strdup.c ft_strlen.c ft_strrchr.c \
      ft_toupper.c ft_calloc.c ft_isdigit.c ft_memchr.c ft_memset.c \
      ft_putstr_fd.c ft_strjoin.c ft_strmapi.c ft_strtrim.c ft_striteri.c \
	  ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c \
	  ft_lstdelone.c ft_lstiter.c ft_lstlast.c \
	  ft_lstmap.c ft_lstnew.c ft_lstsize.c \
	  ft_printf.c get_next_line.c get_next_line_utils.c print_terminal_colors.c

OBJECTS = $(addprefix $(OBJ_DIR)/,$(SRC:.c=.o))

PROGRESS_WIDTH = 20
PROGRESS_DONE_CHAR = 🟩
PROGRESS_TODO_CHAR = ⬜️
CURRENT_PROGRESS = 0
TOTAL_PROGRESS = $(words $(OBJECTS))

.PHONY: all clean fclean re

all: ascii-art $(NAME)

$(NAME): $(OBJECTS)
	@$(AR) $(NAME) $(OBJECTS)
	@echo "$(INFO)$@ has been created$(RESET)"


$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(OBJ_DIR)
	@$(CC) $(CFLAGS) -c $< -o $@
	$(eval CURRENT_PROGRESS=$(shell echo $$(($(CURRENT_PROGRESS)+1))))
	$(eval PERCENTAGE=$(shell echo $$(($(CURRENT_PROGRESS)*100/$(TOTAL_PROGRESS)))))
	@if [ $(CURRENT_PROGRESS) -eq $(TOTAL_PROGRESS) ]; then \
		printf "\r\033[48;5;40m[COMPILATION]\033[0m \033[38;5;40m$(PERCENTAGE)%% [$$(printf '%*s' $$(($(CURRENT_PROGRESS)*$(PROGRESS_WIDTH)/$(TOTAL_PROGRESS))) | tr ' ' '$(PROGRESS_DONE_CHAR)')$$(printf '%*s' $$(($(PROGRESS_WIDTH)-($(CURRENT_PROGRESS)*$(PROGRESS_WIDTH)/$(TOTAL_PROGRESS)))) | tr ' ' '$(PROGRESS_TODO_CHAR)')] $<\033[0m ✅                   \n"; \
	else \
		printf "\r \033[48;5;40m[COMPILATION]\033[0m \033[38;5;51m$(PERCENTAGE)%% [$$(printf '%*s' $$(($(CURRENT_PROGRESS)*$(PROGRESS_WIDTH)/$(TOTAL_PROGRESS))) | tr ' ' '$(PROGRESS_DONE_CHAR)')$$(printf '%*s' $$(($(PROGRESS_WIDTH)-($(CURRENT_PROGRESS)*$(PROGRESS_WIDTH)/$(TOTAL_PROGRESS)))) | tr ' ' '$(PROGRESS_TODO_CHAR)')] $<"; \
	fi
	@sleep 0.01

clean:
	@printf "$(RED_B)[DELETED]$(RESET) $(RED)$(MLX_DIR)\n"
	@for obj in $(OBJECTS); do \
		rm -f $$obj; \
		printf "$(RED_B)[DELETED]$(RESET) $(RED)$$obj$(RESET)\n"; \
	done

fclean: clean
	@rm -f $(NAME)
	@echo "\033[48;5;160m[DELETED]\033[0m \033[38;5;160m$(NAME)\033[0m"

re: fclean all

git:
	@echo "$(BLUE)"
	git add *
	@read -p "Commit msg:" msg;\
	git commit -m "$$msg"
	git push
	@echo "$(INFO)$(GREEN)Git add, commit, push performed ✅$(RESET)"

ascii-art:
	@clear
	@echo "\033[38;5;51m   _____ ________           .____    ._____.    _____  __   "
	@echo "\033[38;5;87m  /  |  |\\_____  \\          |    |   |__\\_ |___/ ____\\/  |_ "
	@echo "\033[38;5;123m /   |  |_/  ____/   ______ |    |   |  || __ \\   __\\\\\   __\\"
	@echo "\033[38;5;159m/    ^   /       \\  /_____/ |    |___|  || \\_\\ \\  |   |  |  "
	@echo "\033[38;5;195m\\____   |\\_______ \\         |_______ \\__||___  /__|   |__|  "
	@echo "\033[38;5;231m     |__|        \\/                 \\/       \\/  "
	@echo

.PHONY: all clean fclean re bonus

# SUPER SIMPLE AND EASY MAKEFILE
# NAME = libft.a
# CC = gcc
# CFLAGS = -Wall -Wextra -Werror -I.

# src_dir = src
# obj_dir = obj

# src = ft_isalnum.c ft_isprint.c ft_memcmp.c ft_putchar_fd.c ft_split.c \
#       ft_strlcat.c ft_strncmp.c ft_substr.c ft_atoi.c ft_isalpha.c \
#       ft_itoa.c ft_memcpy.c ft_putendl_fd.c ft_strchr.c ft_strlcpy.c \
#       ft_strnstr.c ft_tolower.c ft_bzero.c ft_isascii.c \
#       ft_memmove.c ft_putnbr_fd.c ft_strdup.c ft_strlen.c ft_strrchr.c \
#       ft_toupper.c ft_calloc.c ft_isdigit.c ft_memchr.c ft_memset.c \
#       ft_putstr_fd.c ft_strjoin.c ft_strmapi.c ft_strtrim.c ft_striteri.c

# bonus = ft_lstadd_back.c ft_lstadd_front.c ft_lstclear.c \
#         ft_lstdelone.c ft_lstiter.c ft_lstlast.c \
#         ft_lstmap.c ft_lstnew.c ft_lstsize.c

# obj = $(addprefix $(obj_dir)/,$(src:.c=.o))
# b_obj = $(addprefix $(obj_dir)/,$(bonus:.c=.o))

# all: $(NAME)

# $(NAME): ascii-art $(obj)
# 	@ar rcs $(NAME) $(obj)
# 	@echo '$(NAME) created.'

# $(obj_dir)/%.o: $(src_dir)/%.c
# 	@$(CC) $(CFLAGS) -c $< -o $@

# ascii-art:
# 	@echo "\033[38;5;51m   _____ ________           .____    ._____.    _____  __   "
# 	@echo "\033[38;5;87m  /  |  |\\_____  \\          |    |   |__\\_ |___/ ____\\/  |_ "
# 	@echo "\033[38;5;123m /   |  |_/  ____/   ______ |    |   |  || __ \\   __\\\\\   __\\"
# 	@echo "\033[38;5;159m/    ^   /       \\  /_____/ |    |___|  || \\_\\ \\  |   |  |  "
# 	@echo "\033[38;5;195m\\____   |\\_______ \\         |_______ \\__||___  /__|   |__|  "
# 	@echo "\033[38;5;231m     |__|        \\/                 \\/       \\/  "

# clean:
# 	@rm -rf $(obj_dir)/*.o

# fclean: clean
# 	@rm -rf $(NAME)

# re: fclean all

# bonus: $(obj) $(b_obj)
# 	@ar rcs $(NAME) $(obj) $(b_obj)
# .PHONY: all clean fclean re bonus
