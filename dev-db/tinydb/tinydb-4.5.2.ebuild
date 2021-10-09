# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="TinyDB is a lightweight document oriented database"
HOMEPAGE="https://pypi.org/project/tinydb/"
SRC_URI="https://files.pythonhosted.org/packages/83/8f/d4d9d4d320d4efb58d723992c32d1384aa6fa685897ee2ee8e90965aba4e/${P}.tar.gz"
LICENSE="MIT"
SLOT="0"

KEYWORDS="~amd64"
IUSE=""

#RDEPEND=""
#DEPEND="${RDEPEND}"
#BDEPEND="virtual/pkgconfig"

PYTHON_COMPAT=( python{3_6,3_8,3_9} )
inherit distutils-r1
