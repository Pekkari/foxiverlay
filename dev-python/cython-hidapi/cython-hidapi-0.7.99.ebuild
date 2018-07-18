# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_{4,5,6} )

inherit distutils-r1 git-r3

MY_PV="${PV}.post21"
DESCRIPTION="Client side implementation for TREZOR-compatible Bitcoin hardware wallets."
HOMEPAGE="https://trezor.io/"
EGIT_REPO_URI="https://github.com/trezor/${PN}.git"
EGIT_COMMIT="${MY_PV}"
EGIT_SUBMODULES=("hidapi")

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/cython"
RDEPEND=""

