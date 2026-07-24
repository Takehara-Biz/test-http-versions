# --http3-onlyオプションが使えない場合は、以下のWebページを参考にインストールする。
# https://ik.am/entries/792

#curl -v -k --http3-only "https://localhost:8080"

SSLKEYLOGFILE=./sslkey222.log curl -v -k --http3-only "https://localhost:8080"