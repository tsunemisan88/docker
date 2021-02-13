FROM httpd:2.4-alpine
RUN apk update && apk upgrade
COPY custom.apache.conf /usr/local/apache2/conf/
RUN echo 'Include conf/custom.apache.conf' >> /usr/local/apache2/conf/httpd.conf

#実行するコマンド：
# ①イメージ作成： docker build -t myapache .
# ②実行：docker run -it --name website -p 80:80 -v "$(pwd)"/html:/var/www/html -d myapache
