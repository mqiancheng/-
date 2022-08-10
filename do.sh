#每隔10秒循环执行命令
#!/bin/bash
while true
do 
curl --location --request POST 'http://127.0.0.1:9000/'     --header 'Content-Type: application/json'     --data-raw '{ "jsonrpc":"2.0", "id":1, "method":"sui_getRecentTransactions", "params":[5] }' 
sleep 10
done
# ubuntu中用while true ; do curl --location --request POST 'http://127.0.0.1:9000/'     --header 'Content-Type: application/json'     --data-raw '{ "jsonrpc":"2.0", "id":1, "method":"sui_getRecentTransactions", "params":[5] }' ; sleep 10 ; done可直接执行
#下载 sudo wget -O do.sh https://ghproxy.com/https://raw.githubusercontent.com/mqiancheng/tools/main/do.sh
#执行sh sudo sh do.sh
