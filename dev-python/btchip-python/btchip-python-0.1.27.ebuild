# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python2_7 python3_{4,5,6} )

inherit distutils-r1

DESCRIPTION="Python communication library for Ledger Hardware Wallet products."
HOMEPAGE="http://www.ledger.co"
SRC_URI="https://github.com/LedgerHQ/${PN}/archive/v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/unzip
		dev-python/setuptools[${PYTHON_USEDEP}]
		dev-libs/hidapi"
RDEPEND=""
