# $FreeBSD$

PORTNAME=	mcollective-package-agent

COMMENT=	MCollective agent to manage the OS Packages

# See MASTERDIR for MAINTAINER.

RUN_DEPENDS=	mcollective-package-common>=${PORTVERSION}:sysutils/mcollective-package-common

MASTERDIR=	${.CURDIR}/../mcollective-package-common

PLIST_FILES=	share/mcollective/agent/package.rb

do-install:
	cd ${WRKSRC} && ${COPYTREE_SHARE} "agent/*.rb" ${STAGEDIR}${PREFIX}/share/mcollective

.include "${MASTERDIR}/Makefile"
