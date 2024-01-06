/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_utils.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yojablao <yojablao@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/23 12:46:21 by yojablao          #+#    #+#             */
/*   Updated: 2024/01/05 21:53:38 by yojablao         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"


void	*kcalloc(size_t count, size_t size)
{
	void	*ptr;
	size_t			i;
	unsigned char	*p;


	ptr = malloc(count * size);
	if (!ptr)
		return (NULL);
	p = ptr;
	i = 0;
	while (i < (count * size))
	{
		p[i] = '\0';
		i++;
	}
	return (ptr);
}

char	*strjoin(char *s1, char  *s2)
{
    char *ret;

    if(!s1)
        return(s2);
	if(!s2)
		return(s1);
    ret = malloc(sizeof(char) * (ft_strlen(s1) + ft_strlen(s2) + 1));
    if(!ret)
        return(NULL);
    ft_strcpy(ret,s1);
    ft_strcat(ret,s2);
    free(s2);
    return(ret);
}
void	ft_strcpy(char *dest, const char *src)
{
	size_t	i;

	i = 0;
	if(!dest || !src)
		return;
	while (src [i] != '\0')
	{
		dest[i] = src[i];
		i++;
	}
	dest[i] = '\0';
}
size_t	ft_strlen(const char *str)
{
	size_t	i;
	if(!str)
		return(0);
	i = 0;
	while (str[i])
		i++;
	return (i);
}
void	ft_strcat(char *dst, const char *src)
{
	size_t	ls;
	size_t	ld;
	size_t	l;
	size_t	i;

	if(!dst || !src)
		return;
	ld = ft_strlen(dst);
	ls = ft_strlen(src);
	l = ld;
	i = 0;
	while ( src[i] != '\0')
		dst[l++] = src[i++];
	dst[l] = '\0';
}