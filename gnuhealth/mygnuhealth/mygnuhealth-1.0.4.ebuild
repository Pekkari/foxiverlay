# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="MyGNUHealth personal medical record application"
HOMEPAGE="https://pypi.org/project/MyGNUHealth/"
SRC_URI="https://ftp.gnu.org/gnu/health/mygnuhealth/${P}.tar.gz"
LICENSE="GPL-3+"

SLOT="0"

KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=kde-frameworks/kirigami-5.85.0
	>=dev-python/pyside2-5.15.1-r1
	>=dev-python/python-dateutil-2.8.2
	>=dev-python/matplotlib-3.4.2
	>=dev-python/bcrypt-3.1.7-r2
	>=dev-python/requests-2.25.1-r2
	>=dev-db/tinydb-4.5.2
	"

PYTHON_COMPAT=( python{3_6,3_8,3_9} )
inherit distutils-r1
