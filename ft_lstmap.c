/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: joaoalme <joaoalme@student.42porto.co      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/11 20:33:59 by joaoalme          #+#    #+#             */
/*   Updated: 2022/11/22 18:43:49 by joaoalme         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*result;
	t_list	*tmp;

	result = NULL;
	while (lst)
	{
		tmp = ft_lstnew(f(lst->content));
		if (!tmp)
		{
			ft_lstclear(&result, del);
			return (NULL);
		}
		ft_lstadd_back(&result, tmp);
		lst = lst->next;
	}		
	return (result);
}
/*
#include <stdio.h>
void    ft_func(int *content)
{
	*content = (*content) + 15;
}

void    ft_print_list(t_list * head)
{
    t_list * current = head;
    while (current != NULL)
    {
            printf("%d\n", *(int *)current->content);
            current = current->next;
    }
}



int     main(void)
{       
        int i = 10;
        int j = 20;
        int k = 30;
	t_list	*new_list;

        t_list *head = ft_lstnew(&i);
        t_list *second  = ft_lstnew(&j);
        t_list *third  = ft_lstnew(&k);
        ft_lstadd_back(&head, second); 
        ft_lstadd_back(&second, third);
        ft_print_list(head);
        new_list = ft_lstmap(head, (void*)&ft_func, (void *)&ft_lstdelone);
        ft_print_list(new_list);
	ft_print_list(head);
}*/
