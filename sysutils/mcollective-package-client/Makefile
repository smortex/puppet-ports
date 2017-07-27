# $FreeBSD$

PORTNAME=	mcollective-package-client

COMMENT=	MCollective client to manage the OS Packages

# See MASTERDIR for MAINTAINER.

RUN_DEPENDS=	mcollective-package-common>=${PORTVERSION}:sysutils/mcollective-package-common

MASTERDIR=	${.CURDIR}/../mcollective-package-common

PLIST_FILES=	share/mcollective/application/package.rb

do-install:
	cd ${WRKSRC} && ${COPYTREE_SHARE} "application/*.rb" ${STAGEDIR}${PREFIX}/share/mcollective

.include "${MASTERDIR}/Makefile"
