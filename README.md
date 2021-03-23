# Script facilitador de VPN

- Comando para copiar script para o diretório de arquivos binários.

```
sudo cp vpnwireguard.sh /usr/bin/vpnwireguard
```

- Comando para permitir executar o script

```
sudo chmod +x /usr/bin/vpnwireguard
```

- Verifique se o arquivo está no diretorio:

```
/etc/wireguard/
```

- Verifique se o nome do arquivo é:

```
wg0.conf
```

## Comandos para uso: 


### Iniciando a VPN

```
vpnwireguard start
```

### Parando a VPN

```
vpnwireguard stop
```

### Status da VPN

```
vpnwireguard status
```
