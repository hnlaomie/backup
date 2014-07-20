Title: pelican 安装
Date: 2014-07-12 14:30
Category: python 
Tags: pelican, python, git 
Author: laomie
Summary: pelican的安装和github发布


pelican的安装
================

依赖包
---------

feedgenerator, jinja2, pygments, docutils, pytz, blinker, unidecode, six,
python-dateutil, markupsafe, markdown

安装
----------

    $ pip install -e git+https://github.com/getpelican/pelican.git#egg=pelican

使用
----------

    $ pelican-quickstart
    $ fab build
    $ fab serve

配置
----------
  pelicanconf.py中设置"THEME"，值为pelican-bootstrap3的路径


github使用
=========================

常用命令
------------

    $ git clone https://github.com/hnlaomie/backup
    $ cd backup
    $ git add .
    $ git commit -m 'first commit'
    $ git push origin master

http://blogs.skicelab.com/maurizio/unicode-common-pitfalls.html
