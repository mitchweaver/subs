PREFIX = /usr/local
NAME = subs

all:
	@>&2 echo "Use 'make install'"

install:
	install -D -m 0755 ${NAME} ${DESTDIR}${PREFIX}/bin/${NAME}

uninstall:
	rm ${DESTDIR}${PREFIX}/bin/${NAME}

test:
	shellcheck -s sh ${NAME}
