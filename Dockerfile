FROM lipanski/docker-static-website:2.6.0

# 静态文件路径 /home/static
COPY . /home/static/

ENTRYPOINT ["/busybox-httpd", "-f", "-v"]
CMD [ "-p", "5147" ]

# 暴露端口
EXPOSE 5147

LABEL 镜像制作者="https://space.bilibili.com/17547201"
LABEL GitHub主页="https://github.com/Firfr/relationship"
LABEL Gitee主页="https://gitee.com/firfe/relationship"

# 构建镜像之前运行命令设置权限 chmod -R 777 ./
# docker build -t firfe/relationship:1.2.0 .
