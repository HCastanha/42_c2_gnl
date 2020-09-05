# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: hcastanh <hcastanh@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/05 14:44:29 by hcastanh          #+#    #+#              #
#    Updated: 2020/09/05 16:56:39 by hcastanh         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = 		GET_NEXT_LINE

SRC = 		get_next_line.c \
			get_next_line_utils.c

HEADER = 	get_next_line.h

BUFF = 32

all: $(NAME)

$(NAME):
	gcc -Wall -Wextra -Werror -D BUFFERSIZE=$(BUFF) $(NAME) $(SRC) $(HEADER)

clean:
	rm -f *.o

fclean: clean
	rm -f $(NAME)

re: fclean all