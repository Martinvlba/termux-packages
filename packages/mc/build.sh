TERMUX_PKG_HOMEPAGE=https://www.midnight-commander.org/
TERMUX_PKG_DESCRIPTION="Midnight Commander - a powerful file manager"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=4.8.27
TERMUX_PKG_SRCURL=http://ftp.midnight-commander.org/mc-${TERMUX_PKG_VERSION}.tar.xz
TERMUX_PKG_SHA256=31be59225ffa9920816e9a8b3be0ab225a16d19e4faf46890f25bdffa02a4ff4
TERMUX_PKG_DEPENDS="libandroid-support, libiconv, ncurses, glib, openssl, libssh2, zlib"
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
ac_cv_lib_util_openpty=no
ac_cv_path_PERL=$TERMUX_PREFIX/bin/perl
ac_cv_path_PYTHON=$TERMUX_PREFIX/bin/python
ac_cv_path_RUBY=$TERMUX_PREFIX/bin/ruby
ac_cv_path_UNZIP=$TERMUX_PREFIX/bin/unzip
ac_cv_path_ZIP=$TERMUX_PREFIX/bin/zip
--with-ncurses-includes=$TERMUX_PREFIX/include
--with-ncurses-libs=$TERMUX_PREFIX/lib
--with-screen=ncurses
"
