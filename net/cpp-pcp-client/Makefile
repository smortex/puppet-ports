# $FreeBSD$

PORTNAME=	cpp-pcp-client
PORTVERSION=	1.6.0
CATEGORIES=	net

MAINTAINER=	puppet@FreeBSD.org
COMMENT=	Client libraries for the PCP protocol

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libboost_filesystem.so:devel/boost-libs \
		libleatherman_json_container.so:devel/leatherman

USES=		cmake ssl
USE_GITHUB=	yes
USE_LDCONFIG=	yes

GH_ACCOUNT=	puppetlabs

CMAKE_OFF=	ENABLE_CXX_WERROR

.include <bsd.port.mk>
