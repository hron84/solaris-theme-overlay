# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2 autotools

DESCRIPTION="Sun Solaris branding"
HOMEPAGE="http://dlc.sun.com/osol/jds/downloads/extras/"
SRC_URI="http://dlc.sun.com/osol/jds/downloads/extras/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"
IUSE="gdm"

DEPEND="
	sys-devel/gettext
	>=dev-util/intltool-0.35

"
RDEPEND="
	x11-themes/gtk-engines-nimbus
	gdm? ( x11-themes/sun-gdm-themes )
"

src_unpack() {
	unpack ${A}
	cd ${S}
	ebegin "Running intltoolize --copy --force"
	intltoolize --copy --force > /dev/null 2>&1 || die "intltoolize failed"
	eend $?
	eautoreconf
}

src_install() {
	gnome2_src_install
	rm -rf ${D}/usr/share/gdm
}

pkg_postinst() {
	einfo "You can replace your splash image with Sun splash by"
	einfo "this command:"
	echo
	einfo "gconftool-2 --set /apps/gnome-session/options/splash_image --type" \
		  " string \"splash/sun-splash.png\""
}
