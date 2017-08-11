# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit eutils git-r3 cmake-utils

DESCRIPTION="Radeon Open Compute Thunk Interface"
HOMEPAGE="https://rocm.github.io/"

EGIT_REPO_URI="https://github.com/RadeonOpenCompute/ROCT-Thunk-Interface.git"
EGIT_COMMIT="roc-${PV}"
LICENSE="MIT"
SLOT="0"

KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
