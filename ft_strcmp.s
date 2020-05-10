# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: fgata-va <fgata-va@student.42madrid.c      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/05/02 18:54:04 by fgata-va          #+#    #+#              #
#    Updated: 2020/05/10 17:44:24 by fgata-va         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

				global ft_strcmp
				section .text

ft_strcmp:
				mov cl,byte [rdi]
				mov dl,byte [rsi]
				cmp dl, cl
				jl less
				jg greater
				add rdi, byte 1
				add rsi, byte 1
				cmp byte [rsi], 0x0
				je equal
				cmp byte [rdi], 0x0
				je equal
				jmp ft_strcmp
greater:
				mov rax, 1
				ret
less:
				mov rax, -1
				ret
equal:
				mov rax, 0
				ret
