# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils git-r3

DESCRIPTION="Library with common classes and functionality used by KDE finance applications"
HOMEPAGE="https://community.kde.org/Alkimia/libalkimia"
EGIT_REPO_URI="git://anongit.kde.org/alkimia.git"
EGIT_BRANCH="7.0"

LICENSE="LGPL-2.1+"
KEYWORDS="~amd64 ~x86"
SLOT="6"
IUSE=""

RDEPEND="
	dev-libs/gmp:0=[cxx]
	dev-qt/qtcore:5
	dev-qt/qtdbus:5
"
DEPEND="${RDEPEND}
	virtual/pkgconfig
"
