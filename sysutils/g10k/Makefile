# $FreeBSD$

PORTNAME=	g10k
PORTVERSION=	0.8.4
CATEGORIES=	sysutils

MAINTAINER=	puppet@FreeBSD.org
COMMENT=	r10k fork in Go

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go:modules
USE_GITHUB=	yes
GH_ACCOUNT=	xorpaul
GH_TAGNAME=	v${PORTVERSION}
GH_TUPLE=	\
		davecgh:go-spew:v1.1.1:davecgh_go_spew/vendor/github.com/davecgh/go-spew \
		fatih:color:2d684516a886:fatih_color/vendor/github.com/fatih/color \
		go-yaml:yaml:v2.2.1:go_yaml_yaml/vendor/gopkg.in/yaml.v2 \
		golang:crypto:a49355c7e3f8:golang_crypto/vendor/golang.org/x/crypto \
		golang:sys:a9d3bda3a223:golang_sys/vendor/golang.org/x/sys \
		gosuri:uilive:v0.0.1:gosuri_uilive/vendor/github.com/gosuri/uilive \
		gosuri:uiprogress:v0.0.1:gosuri_uiprogress/vendor/github.com/gosuri/uiprogress \
		kballard:go-shellquote:95032a82bc51:kballard_go_shellquote/vendor/github.com/kballard/go-shellquote \
		klauspost:compress:v1.3.0:klauspost_compress/vendor/github.com/klauspost/compress \
		klauspost:cpuid:v1.2.0:klauspost_cpuid/vendor/github.com/klauspost/cpuid \
		klauspost:crc32:v1.2.0:klauspost_crc32/vendor/github.com/klauspost/crc32 \
		klauspost:pgzip:90b2c57fba35:klauspost_pgzip/vendor/github.com/klauspost/pgzip \
		mattn:go-colorable:v0.1.2:mattn_go_colorable/vendor/github.com/mattn/go-colorable \
		mattn:go-isatty:v0.0.8:mattn_go_isatty/vendor/github.com/mattn/go-isatty \
		remeh:sizedwaitgroup:5582a674300c:remeh_sizedwaitgroup/vendor/github.com/remeh/sizedwaitgroup \
		tidwall:gjson:v1.1.2:tidwall_gjson/vendor/github.com/tidwall/gjson \
		tidwall:match:v1.0.0:tidwall_match/vendor/github.com/tidwall/match \
		xorpaul:uiprogress:d0567a9d84a1:xorpaul_uiprogress/vendor/github.com/xorpaul/uiprogress

PLIST_FILES=	bin/g10k

.include <bsd.port.mk>
