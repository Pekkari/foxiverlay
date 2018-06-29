# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=1

inherit distutils-r1

DESCRIPTION="Client library for MSRP protocol and its relay extension"
HOMEPAGE="http://sipsimpleclient.org"
SRC_URI="https://github.com/AGProjects/${PN}/archive/release-${PV}.tar.gz"
S=${WORKDIR}/${PN}-release-${PV}

LICENSE="LGPL-2+"
SLOT="0"
IUSE=""

KEYWORDS="~amd64 ~x86"

RDEPEND="
	dev-python/python-application[${PYTHON_USEDEP}]
	dev-python/python-eventlib[${PYTHON_USEDEP}]
	dev-python/python-gnutls[${PYTHON_USEDEP}]
	dev-python/twisted[${PYTHON_USEDEP}]
"
src_compile() {
	python setup.py build_ext
}

src_install() {
	python setup.py install --home "${D}" --install-purelib="${D}"usr/lib64/python2.7/site-packages --install-platlib="${D}"usr/lib64/python2.7/site-packages --install-scripts="${D}"/usr/bin --install-data="${D}"usr
}
