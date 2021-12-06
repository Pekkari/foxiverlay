# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

IUSE=""
MODS="qtquickcontrols2"
BASEPOL="2.20210203-r1"
POLICY_FILES="qtquickcontrols2.fc qtquickcontrols2.if qtquickcontrols2.te"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for qtquickcontrols2"

if [[ ${PV} != 9999* ]] ; then
        KEYWORDS="amd64 ~arm ~arm64 ~mips x86"
fi

DEPEND="${DEPEND}
        sec-policy/selinux-xserver
"
RDEPEND="${RDEPEND}
        sec-policy/selinux-xserver
"
