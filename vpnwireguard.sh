#!/bin/bash

case $1 in
start) 
    sudo timeout 5s systemctl start wg-quick@wg0 1>/dev/null 2>/dev/null
        SUCCESS=$?

        if [ $SUCCESS -eq 0 ]
        then
            echo "Funcionou, pode trabalhar"
        else
            echo "Nao Funcionou, vou parar a vpn, tente novamente"
            sudo systemctl stop wg-quick@wg0
        fi ;;
stop) 
    sudo timeout 5s systemctl stop wg-quick@wg0 1>/dev/null 2>/dev/null
        SUCCESS=$?

        if [ $SUCCESS -eq 0 ]
        then
            echo "VPN desligada, pode descansar"
        else
            echo "Nao Funcionou, vou tentar parar a vpn novamente"
            sudo systemctl stop wg-quick@wg0
        fi ;;
status) sudo wg show ;;
*) echo "*) echo "Argumento Inválido. Use stop, start ou status" ;;" ;;
esac


