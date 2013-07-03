# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2

DESCRIPTION="OpenSolaris background themes"
HOMEPAGE="http://dlc.sun.com/osol/jds/downloads/extras"
SRC_URI="http://dlc.sun.com/osol/jds/downloads/extras/opensolaris-branding/${P}.tar.bz2"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"

DEPEND="
	sys-devel/gettext
	>=dev-util/intltool-0.35
"

src_unpack() {
	gnome2_src_unpack
	touch "${S}/po/LINGUAS"
}
