TERMUX_PKG_HOMEPAGE=https://github.com/xyproto/o
TERMUX_PKG_DESCRIPTION="Small, fast and limited text editor"
TERMUX_PKG_LICENSE="MIT"
TERMUX_PKG_MAINTAINER="Alexander F. Rødseth <xyproto@archlinux.org>"
TERMUX_PKG_VERSION=2.43.0
TERMUX_PKG_SRCURL=https://github.com/xyproto/o/archive/$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=163ca712594fd1c97426b6371f26426eed63ca86377b62d67faebb8f3c73a6db
TERMUX_PKG_BREAKS="o"
TERMUX_PKG_REPLACES="o"

termux_step_make() {
	termux_setup_golang

	export GOPATH=$TERMUX_PKG_BUILDDIR
	mkdir -p "$GOPATH"/src/github.com/xyproto
	ln -sf "$TERMUX_PKG_SRCDIR" "$GOPATH"/src/github.com/xyproto/o

	cd "$GOPATH"/src/github.com/xyproto/o
	go build
}

termux_step_make_install() {
	install -Dm700 -t "$TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX"/bin \
		"$GOPATH"/src/github.com/xyproto/o/o
	install -Dm600 -t "$TERMUX_PKG_MASSAGEDIR/$TERMUX_PREFIX"/share/man/man1 \
		"$TERMUX_PKG_SRCDIR"/o.1
}
