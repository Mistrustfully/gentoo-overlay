# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2
EAPI=8
inherit git-r3

DESCRIPTION="MSDF font atlas generator"
HOMEPAGE="https://github.com/Chlumsky/msdf-atlas-gen"
EGIT_REPO_URI="https://github.com/Chlumsky/msdf-atlas-gen.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND="dev-util/cmake sys-devel/make"
# S="${WORKDIR}"

src_configure() {
	cmake CMakeLists.txt
}

src_compile() {
	make all "${MAKEOPTS}"	
}

src_install() {
	dobin "${S}/bin/msdf-atlas-gen"
	# cp -R "${S}/bin/msdf-atlas-gen" "${D}/" || die "Install failed!"
}
