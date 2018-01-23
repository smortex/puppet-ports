# $FreeBSD$

PORTNAME=	g10k
PORTVERSION=	0.4.4
CATEGORIES=	sysutils

MAINTAINER=	puppet@FreeBSD.org
COMMENT=	r10k fork in Go

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go
USE_GITHUB=	yes
GH_ACCOUNT=	xorpaul
GH_SUBDIR=	src/github.com/${GH_ACCOUNT_DEFAULT}/${GH_PROJECT}
GH_TAGNAME=	v${PORTVERSION}

GH_TUPLE+=	remeh:sizedwaitgroup:4b44541c93591ee0e73747d6081e61bd8c58b5c7:remehsizedwaitgroup/vendor/github.com/remeh/sizedwaitgroup

do-install:
	${INSTALL_PROGRAM} ${GO_WRKDIR_BIN}/g10k ${STAGEDIR}${PREFIX}/bin/g10k

PLIST_FILES=	bin/g10k

.include <bsd.port.mk>
