# $FreeBSD$

PORTNAME?=	mcollective-package-common
PORTVERSION=	4.5.0
CATEGORIES=	sysutils

MAINTAINER=	puppet@FreeBSD.org
COMMENT?=	MCollective common files to manage the OS Packages

LICENSE=	APACHE20

RUN_DEPENDS?=	mcollective>=2:sysutils/mcollective

USE_GITHUB=	yes
GH_ACCOUNT=	puppetlabs
GH_PROJECT=	mcollective-package-agent

NO_BUILD=	yes
NO_ARCH=	yes

PLIST_FILES?=	share/mcollective/agent/package.ddl \
		share/mcollective/util/package/yumHelper.py \
		share/mcollective/util/package/base.rb \
		share/mcollective/util/package/packagehelpers.rb \
		share/mcollective/util/package/puppetpackage.rb \
		share/mcollective/util/package/yumpackage.rb \

.if !target(do-install)
do-install:
	cd ${WRKSRC} && ${COPYTREE_SHARE} "agent/*.ddl util" ${STAGEDIR}${PREFIX}/share/mcollective
.endif

.include <bsd.port.mk>
