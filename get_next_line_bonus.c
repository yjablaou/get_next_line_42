/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   get_next_line_bonus.c                              :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: yojablao <yojablao@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/17 15:29:04 by yojablao          #+#    #+#             */
/*   Updated: 2024/01/17 15:29:05 by yojablao         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "get_next_line_bonus.h"

char	*check_line(char	*old)
{
	char	*new;
	int		i;
	int		j;

	j = 0;
	i = 0;
	if (old[i] == '\0' || !old)
		return (NULL);
	while (old[i] != '\n' && old[i])
		i++;
	if (old[i] == '\n')
		i++;
	new = malloc(ft_strlen(old) - i + 1);
	while (old[i] != '\0')
	{
		new[j] = old[i];
		j++;
		i++;
	}
	new[j] = '\0';
	free(old);
	return (new);
}

char	*extract_line(char *rez)
{
	int		i;
	char	*line;
	int		j;

	i = 0;
	if (rez[i] == '\0' || !rez)
		return (NULL);
	while (rez[i] != '\0' && rez[i] != '\n')
		i++;
	if (rez[i] == '\n')
		i++;
	line = malloc(i + 1);
	j = -1;
	while (++j < i)
		line[j] = rez[j];
	line[i] = '\0';
	return (line);
}

char	*readfd(char **buffer, int fd)
{
	char	*r;
	size_t	l;

	l = 1;
	r = malloc(BUFFER_SIZE +1);
	if (!r)
		return (NULL);
	while (l && !ft_strchr(*buffer, '\n'))
	{
		l = read(fd, r, BUFFER_SIZE);
		r[l] = '\0';
		if (l < 0)
			return (free(*buffer), free(r), *buffer = NULL, NULL);
		*buffer = strjoin(*buffer, r);
		if (!*buffer)
			return (free(r), free(*buffer), NULL);
	}
	free(r);
	return (extract_line(*buffer));
}

char	*get_next_line(int fd)
{
	static char	*rest[OPEN_MAX];
	char		*line;

	if (BUFFER_SIZE < 1 || read(fd, 0, 0) < 0 || fd < 0)
		return (NULL);
	line = readfd(&rest[fd], fd);
	if (!line)
		return (free(rest[fd]), rest[fd] = NULL, NULL);
	rest[fd] = check_line(rest[fd]);
	return (line);
}
