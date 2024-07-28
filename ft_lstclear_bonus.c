/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: aolabarr <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/01/14 15:20:09 by aolabarr          #+#    #+#             */
/*   Updated: 2024/01/14 16:46:30 by aolabarr         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	t_list	*follow;

	if (!lst || !del || !(*lst))
		return ;
	while (*lst != NULL)
	{
		follow = (*lst)->next;
		ft_lstdelone(*lst, del);
		*lst = follow;
	}
	lst = NULL;
	return ;
}
