# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI="7"

IUSE=""
MODS="dbus-extra"
BASEPOL="2.20210203-r1"
POLICY_FILES="dbus-extra.fc dbus-extra.if dbus-extra.te"

inherit selinux-policy-2

DESCRIPTION="SELinux policy for dbus-extra"

if [[ ${PV} != 9999* ]] ; then
        KEYWORDS="amd64 ~arm ~arm64 ~mips x86"
fi

DEPEND="${DEPEND}
        sec-policy/selinux-xserver
"
RDEPEND="${RDEPEND}
        sec-policy/selinux-xserver
"
