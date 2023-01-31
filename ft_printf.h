/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cvan-oot <cvan-oot@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/01/31 13:09:30 by cvan-oot          #+#    #+#             */
/*   Updated: 2023/01/31 15:19:35 by cvan-oot         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <unistd.h>
# include <stdarg.h>

int	ft_printf(const char *format, ...);
int	print_hex(int x, char format);
int	print_nbr(int nbr);
int	print_int(char c);
int	print_string(char *s);
int	hex_len(unsigned long x);
int	print_void(unsigned long long ptr);
int	print_unsigned(unsigned int nbr);

#endif