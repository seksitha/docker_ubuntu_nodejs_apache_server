https://github.com/jcunanan05/express-es6-sample/tree/for-article

**re-build specific container**
`watch out .initializer`
`docker-compose build --no-cache web`
`docker-compose build [options] [--build-arg key=val...] [SERVICE...]`

`there is an error trying to build in mysqlphpmyadmin login ` it is just because the port set 3305 is not working.
and in phpmyadmin under environment need to add PMA_HOST = db