## Description
This project is a library of useful functions implemented in C. It includes various string manipulation functions, memory management functions, character checking functions, and additional bonus functions. The library is created as part of the 42 school curriculum.
# Compilation & Usage
#### To compile the library, you can use the following commands:
- `make` or `make all` - Compiles the library.
- `make clean` - Removes the object files generated during compilation.
- `make fclean` - Removes the compiled library and the object files.
- `make re` - Performs a clean recompilation of the library.
- `make bonus` - Compiles the library including the bonus part.
#### To include the libft library in your project and use it in your code, follow these steps:
1. Compile the libft library using the provided Makefile. This will generate the libft.a file.
2. Place the libft.a file in a directory of your choice, for example, lib.
3. In your project directory, create a directory called include if it doesn't already exist.
4. Copy the header files from the libft library into the include directory. These header files typically have a .h extension, such as libft.h.
5. In your source code files where you want to use the libft library functions, include the corresponding header file using the following directive:
```c
#include "libft.h"
```

6. During compilation, you need to link your project with the libft library. Add the following flag to your compilation command:
```shell
-L/path/to/lib -lft
Replace /path/to/lib with the actual path to the directory where you placed the libft.a file.
```
7. For example, if you placed the libft.a file in a directory called lib inside your project directory, the compilation command would look like this:
```shell
gcc your_program.c -L./lib -lft -o your_program
Now you can use the functions provided by the libft library in your code.
```
8. For example, if you want to use the strlen function from the library, you can call it like this:
```c
size_t length = ft_strlen("Hello, world!");
Make sure to prefix the library functions with ft_ to differentiate them from standard library functions.
```
9. That's it! You have successfully included the libft library in your project and can use its functions in your code. 🎉
### Default Compilation Flags
The Makefile uses the following compilation flags:
- `-Wall -Wextra -Werror` - Enables additional warnings and treats warnings as errors.
- `-I.` - Specifies the include directory for header files.

# Functions included in library
> ℹ️ You can click the function prototype to see the code
## Functions from `<ctype.h>`
- [`int ft_isalpha(int c);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_isalpha.c) - Check if a character is an alphabetic character.
- [`int ft_isdigit(int c);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_isdigit.c) - Check if a character is a digit.
- [`int ft_isalnum(int c);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_isalnum.c) - Check if a character is alphanumeric.
- [`int ft_isascii(int c);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_isascii.c) - Check if a character is within the ASCII range.
- [`int ft_isprint(int c);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_isprint.c) - Check if a character is printable.
- [`int ft_toupper(int c);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_toupper.c) - Convert a lowercase character to uppercase.
- [`int ft_tolower(int c);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_tolower.c) - Convert an uppercase character to lowercase.
## Functions from `<string.h>`
- [`size_t ft_strlen(const char *s);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strlen.c) - Calculate the length of a string.
- [`size_t ft_strlcpy(char *dst, const char *src, size_t dstsize);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strlcpy.c) - Copy a string from src to dst with size limiting.
- [`size_t ft_strlcat(char *dst, const char *src, size_t dstsize);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strlcat.c) - Concatenate two strings with size limiting.
- [`char *ft_strchr(const char *s, int c);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strchr.c) - Locate the first occurrence of a character in a string.
- [`char *ft_strrchr(const char *s, int c);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strrchr.c) - Locate the last occurrence of a character in a string.
- [`int ft_strncmp(const char *str1, const char *str2, size_t n);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strncmp.c) - Compare two strings up to a specified number of characters.
- [`char *ft_strnstr(const char *haystack, const char *needle, size_t len);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strnstr.c) - Locate a substring within a string, limited to a certain length.
- [`char *ft_strdup(const char *s1);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strdup.c) - Duplicate a string.
- [`char *ft_substr(char const *s, unsigned int start, size_t len);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_substr.c) - Extract a substring from a string.

## Functions from `<stdlib.h>`
- [`void *ft_memset(void *b, int c, size_t len);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_memset.c) - Fill a block of memory with a specific byte value.
- [`void ft_bzero(void *s, size_t n);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_bzero.c) - Set the first n bytes of memory to zero.
- [`void *ft_memcpy(void *dst, const void *src, size_t n);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_memcpy.c) - Copy n bytes from src to dst.
- [`void *ft_memmove(void *dst, const void *src, size_t len);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_memmove.c) - Copy len bytes from src to dst, handling overlapping memory regions.
- [`void *ft_memchr(const void *s, int c, size_t n);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_memchr.c) - Locate the first occurrence of a byte in a memory block.
- [`int ft_memcmp(const void *s1, const void *s2, size_t n);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_memcmp.c) - Compare two memory blocks up to a specified number of bytes.
- [`int ft_atoi(const char *str);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_atoi.c) - Convert a string to an integer.
- [`void *ft_calloc(size_t count, size_t size);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_calloc.c) - Allocate and zero-initialize memory.
- [`char *ft_strjoin(char const *s1, char const *s2);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strjoin.c) - Concatenate two strings.
- [`char *ft_strtrim(char const *s1, char const *set);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strtrim.c) - Trim specified characters from the beginning and end of a string.
- [`char **ft_split(char const *s, char c);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_split.c) - Split a string into an array of substrings based on a delimiter character.
- [`char *ft_itoa(int n);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_itoa.c) - Convert an integer to a string.
- [`char *ft_strmapi(char const *s, char (*f)(unsigned int, char));`](https://github.com/cj4ck/42-libft/blob/master/src/ft_strmapi.c) - Apply a function to each character of a string, creating a new string.
- [`void ft_striteri(char *s, void (*f)(unsigned int, char*));`](https://github.com/cj4ck/42-libft/blob/master/src/ft_striteri.c) - Apply a function to each character of a string with its index.
- [`void ft_putchar_fd(char c, int fd);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_putchar_fd.c) - Write a character to a file descriptor.
- [`void ft_putstr_fd(char *s, int fd);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_putstr_fd.c) - Write a string to a file descriptor.
- [`void ft_putendl_fd(char *s, int fd);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_putendl_fd.c) - Write a string followed by a newline to a file descriptor.
- [`void ft_putnbr_fd(int n, int fd);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_putnbr_fd.c) - Write an integer to a file descriptor.

### ⭐ Bonus part - Linked lists functions `<stdlib.h>`
- [`t_list *ft_lstnew(void *content);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_lstnew.c) - Create a new linked list node.
- [`void ft_lstadd_front(t_list **lst, t_list *new);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_lstadd_front.c) - Add a new node to the beginning of a linked list.
- [`int ft_lstsize(t_list *lst);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_lstsize.c) - Count the number of elements in a linked list.
- [`t_list *ft_lstlast(t_list *lst);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_lstlast.c) - Get the last node of a linked list.
- [`void ft_lstadd_back(t_list **lst, t_list *new);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_lstadd_back.c) - Add a new node to the end of a linked list.
- [`void ft_lstdelone(t_list *lst, void (*del)(void *));`](https://github.com/cj4ck/42-libft/blob/master/src/ft_lstdelone.c) - Delete a node from a linked list, freeing its memory.
- [`void ft_lstclear(t_list **lst, void (*del)(void *content));`](https://github.com/cj4ck/42-libft/blob/master/src/ft_lstclear.c) - Delete all nodes from a linked list, freeing their memory.
- [`void ft_lstiter(t_list *lst, void (*f)(void *));`](https://github.com/cj4ck/42-libft/blob/master/src/ft_lstiter.c) - Apply a function to each node of a linked list.
- [`t_list *ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *));`](https://github.com/cj4ck/42-libft/blob/master/src/ft_lstmap.c) - Apply a function to each node of a linked list, creating a new list based on the results.

### Functions from project [`ft_printf`](https://github.com/cj4ck/42-ft_printf) `printf()` from `<stdio.h>`
- [`int ft_printf(const char *str, ...);`](https://github.com/cj4ck/42-libft/blob/master/src/ft_printf.c) - Format and print data to the standard output.

### Functions from project [`get_next_line`](https://github.com/cj4ck/42-get_next_line) 
- [`char	*get_next_line(int fd);`](https://github.com/cj4ck/42-libft/blob/master/src/get_next_line.c) - Read buffer size from fd (up untill string end) and returns a line.

### Functions from project [`42-color`](https://github.com/cj4ck/42-color) 
- [`void print_terminal_colors(void);`](https://github.com/cj4ck/42-libft/blob/master/src/print_terminal_colors.c) - Prints possible printf colors in temrinal
