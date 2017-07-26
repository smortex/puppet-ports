# $FreeBSD$

PORTNAME=	mcollective-package-client

PATCHFILES=	8ec4b7f4e6595e4af3d4079f6d0f50750e2f4534.patch
PATCH_SITES=	https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/commit/
PATCH_DIST_STRIP=-p1

COMMENT=	MCollective client to manage the OS Packages

# See MASTERDIR for MAINTAINER.

RUN_DEPENDS=	mcollective-package-common>=${PORTVERSION}:sysutils/mcollective-package-common

MASTERDIR=	${.CURDIR}/../mcollective-package-common

PLIST_FILES=	share/mcollective/application/package.rb

do-install:
	cd ${WRKSRC} && ${COPYTREE_SHARE} "application/*.rb" ${STAGEDIR}${PREFIX}/share/mcollective

.include "${MASTERDIR}/Makefile"
