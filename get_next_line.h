/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.h                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yojablao <yojablao@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/22 11:10:04 by yojablao          #+#    #+#             */
/*   Updated: 2024/01/05 21:20:06 by yojablao         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

# ifndef GET_NEXT_LINE_H
#define  GET_NEXT_LINE_H

#ifndef  BUFFER_SIZE
#define BUFFER_SIZE 10000000
#endif


#include <unistd.h>
# include  <fcntl.h>
# include <stdlib.h>
#include <stdio.h>
char    *get_next_line(int fd);
void	*freeit(void *k);
void	*kcalloc(size_t count, size_t size);
char	*strjoin(char *s1, char  *s2);
void	ft_strcpy(char *dest, const char *src);
size_t	ft_strlen(const char *str);
void	ft_strcat(char *dst, const char *src);


#endif