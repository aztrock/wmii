PROGS = ${TARG:=.O}

all: ${OFILES} ${PROGS}

install: ${TARG:=.install}
uninstall: ${TARG:=.uninstall}
depend: ${OFILES:.o=.depend} ${TARG:=.depend}
clean: manyclean

printinstall:
	echo 'Install directories:'
	echo '	Bin: ${BIN}'

manyclean:
	for i in ${TARG:=.o} ${TARG:=.O} ${OFILES}; do \
		rm -f $$i; \
	done 2>/dev/null || true

include ${ROOT}/mk/common.mk

