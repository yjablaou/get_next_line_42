/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yojablao <yojablao@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/22 11:14:29 by yojablao          #+#    #+#             */
/*   Updated: 2024/01/06 01:16:41 by yojablao         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line.h"

char	*get_rest(char *sat)
{
	int i;
	char *re;
	i = 0;
	if(!sat)
		return(NULL);
	while(sat[i] != '\n' && sat[i])
		i++;
	if(sat[i] == '\n')
		i++;
	re = malloc(i+1);
	if(!re)
	{
		free(sat);
		return(NULL);
	}
	ft_strcpy(re,sat+i);
	free(sat);
	return(re);
}
char	*get__line(char	*sat)
{
	int i;
	char *re;
	int c;

	if(!sat)
		return(NULL);
	i =0;
	c = -1;
	while(sat[i] && sat[i] != '\n')
		i++;
	if(sat[i] == '\n')
		i++;
	re = malloc(i+1);
	if(!re)
		return (NULL);
	while(++c<i)
		re[c] = sat[c];
	re[c] = '\0';
	if(!*re)
        return(free(re),free(sat),NULL);
	return(re);
}
int	find_line(char *buffer)
{
	int i;
	i = 0;
	if(!buffer)
        return(1);
	while(buffer[i])
	{
		if(buffer[i] == '\n')
				return(0);
		i++;
	}
	return(1);
}
char *get_next_line(int fd)
{
	static char *sat;
    char *ret;
    char *temp;
    ssize_t l;

    l = 1;
	if(fd < 0 || BUFFER_SIZE < 1)
		return(NULL);
    while(l && find_line(sat) &&  l != 0)
    {
        temp = malloc(sizeof(char) * BUFFER_SIZE + 1);
        if(!temp)
            return(NULL);
        l = read(fd,temp,BUFFER_SIZE);
        if(!l)
		{
			free(temp);
           break;
		}
        if(l == -1)
            return(free(temp),NULL);
        temp[l] = '\0';
        sat = strjoin(sat, temp);
		if(!sat)
			return(NULL);
    }
    ret = get__line(sat);
	if(!ret)
		return(NULL);
    sat = get_rest(sat);
	if(!sat)
		return(NULL);
    return(ret);
}
int main() {
	int file_descriptor;
	const char *file_name = "game.txt";

	file_descriptor = open(file_name, O_RDONLY);
	printf("%s",get_next_line(file_descriptor));
	printf("%s",get_next_line(file_descriptor));
	printf("%s",get_next_line(file_descriptor));
	printf("%s",get_next_line(file_descriptor));
	printf("%s",get_next_line(file_descriptor));
	printf("%s",get_next_line(file_descriptor));
	printf("%s",get_next_line(file_descriptor));
	printf("%s",get_next_line(file_descriptor));
	
	return 0;
}