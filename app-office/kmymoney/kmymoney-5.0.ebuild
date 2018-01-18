# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

KDE_LINGUAS="bs ca ca@valencia cs da de el en_GB es et eu fi fr gl
hu it kk nds nl pl pt pt_BR ro ru sk sv tr uk zh_CN zh_TW"
KDE_HANDBOOK="optional"
VIRTUALX_REQUIRED="test"
VIRTUALDBUS_TEST="true"
inherit cmake-utils kde5-functions git-r3

DESCRIPTION="Personal finance manager by KDE"
HOMEPAGE="https://kmymoney.org/"

EGIT_REPO_URI="git://anongit.kde.org/${PN}"
EGIT_BRANCH="5.0"

LICENSE="GPL-2"
SLOT="5"
KEYWORDS="~amd64 ~x86"
IUSE="calendar debug doc hbci ofx quotes weboob"

COMMON_DEPEND="
	>=app-crypt/gpgme-1.7.0[cxx]
	>=app-office/libalkimia-7.0.0
	dev-libs/gmp:0=
	dev-libs/libgpg-error
	x11-misc/shared-mime-info
	kde-frameworks/kdewebkit
	calendar? ( dev-libs/libical:= )
	hbci? (
		>=net-libs/aqbanking-5.5.1
		>=sys-libs/gwenhywfar-4.15.3
	)
	ofx? ( >=dev-libs/libofx-0.9.4 )
	weboob? ( www-client/weboob )
"
RDEPEND="${COMMON_DEPEND}
	quotes? ( dev-perl/Finance-Quote )
"
DEPEND="${COMMON_DEPEND}
	dev-libs/boost
	virtual/pkgconfig
	doc? ( app-doc/doxygen )
"

src_prepare() {
	cmake-utils_src_prepare
}

src_configure() {
	local mycmakeargs=(
	    -DCMAKE_INSTALL_PREFIX="/usr/"
		-DUSE_QT_DESIGNER=OFF
		-DENABLE_LIBICAL=$(usex calendar)
		-DUSE_DEVELOPER_DOC=$(usex doc)
		-DENABLE_KBANKING=$(usex hbci)
		-DENABLE_LIBOFX=$(usex ofx)
		-DENABLE_WEBOOB=$(usex weboob)
	)
	cmake-utils_src_configure
}

src_compile() {
	cmake-utils_src_compile
}

src_install() {
	use doc && HTML_DOCS=("${BUILD_DIR}/apidocs/html/")
	cmake-utils_src_install
}
