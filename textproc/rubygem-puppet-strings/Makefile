# $FreeBSD$

PORTNAME=	puppet-strings
PORTVERSION=	2.1.0
CATEGORIES=	textproc rubygems
MASTER_SITES=	RG

MAINTAINER=	puppet@FreeBSD.org
COMMENT=	Puppet documentation extraction and presentation tool

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USE_RUBY=	yes
USES=		gem

RUN_DEPENDS=	puppet6>=0:sysutils/puppet6 \
		rubygem-rgen>=0:devel/rubygem-rgen \
		rubygem-yard>=0:textproc/rubygem-yard

.include <bsd.port.mk>
