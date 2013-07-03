# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2

DESCRIPTION="Sun Solaris GDM themes"
HOMEPAGE="http://dlc.sun.com/osol/jds/downloads/extras"
SRC_URI="http://dlc.sun.com/osol/jds/downloads/extras/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha ~amd64 ~hppa ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd"

DEPEND="
	sys-devel/gettext
	>=dev-util/intltool-0.35
"

RDEPEND="gnome-base/gdm"
