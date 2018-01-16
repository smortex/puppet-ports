# $FreeBSD$

PORTNAME=	choria
PORTVERSION=	0.0.5
CATEGORIES=	sysutils

MAINTAINER=	romain@FreeBSD.org
COMMENT=	Server to host Choria agents, networks, federations and discovery

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go

USE_GITHUB=	yes
GH_ACCOUNT=	choria-io
GH_PROJECT=	go-choria
GH_SUBDIR=	src/github.com/${GH_ACCOUNT_DEFAULT}/${GH_PROJECT}

GH_TUPLE+=	alecthomas:template:a0175ee3bccc567396460bf5acd36800cb10c49c:alecthomastemplate/src/github.com/alecthomas/template
GH_TUPLE+=	alecthomas:units:2efee857e7cfd4f3d0138cc3cbb1b4966962b93a:alecthomasunits/src/github.com/alecthomas/units
GH_TUPLE+=	beorn7:perks:4c0e84591b9aa9e6dcfdf3e020114cd81f89d5f9:beorn7perks/src/github.com/beorn7/perks
GH_TUPLE+=	ghodss:yaml:0ca9ea5df5451ffdf184b4428c902747c2c11cd7:ghodssyaml/src/github.com/ghodss/yaml
GH_TUPLE+=	gogo:protobuf:41168f6614b7bb144818ec8967b8c702705df564:gogoprotobuf/src/github.com/gogo/protobuf
GH_TUPLE+=	golang:protobuf:1e59b77b52bf8e4b449a57e6f79f21226d571845:golangprotobuf/src/github.com/golang/protobuf
GH_TUPLE+=	matttproud:golang_protobuf_extensions:c12348ce28de40eed0136aa2b644d0ee0650e56c:matttproudgolang_protobuf_extensions/src/github.com/matttproud/golang_protobuf_extensions
GH_TUPLE+=	nats-io:gnatsd:12a5ced612f30aa511906c0de12a124233752f70:natsiognatsd/src/github.com/nats-io/gnatsd
GH_TUPLE+=	nats-io:go-nats:29f9728a183bf3fa7e809e14edac00b33be72088:natsiogonats/src/github.com/nats-io/go-nats
GH_TUPLE+=	nats-io:go-nats-streaming:43723aa09c43cec839e43583df07b1940c9f7651:natsiogonatsstreaming/src/github.com/nats-io/go-nats-streaming
GH_TUPLE+=	nats-io:nuid:289cccf02c178dc782430d534e3c1f5b72af807f:natsionuid/src/github.com/nats-io/nuid
GH_TUPLE+=	onsi:ginkgo:77a8c1e5c40d6bb6c5eb4dd4bdce9763564f6298:onsiginkgo/src/github.com/onsi/ginkgo
GH_TUPLE+=	onsi:gomega:334b8f472b3af5d541c5642701c1e29e2126f486:onsigomega/src/github.com/onsi/gomega
GH_TUPLE+=	prometheus:client_golang:661e31bf844dfca9aeba15f27ea8aa0d485ad212:prometheusclient_golang/src/github.com/prometheus/client_golang
GH_TUPLE+=	prometheus:client_model:99fa1f4be8e564e8a6b613da7fa6f46c9edafc6c:prometheusclient_model/src/github.com/prometheus/client_model
GH_TUPLE+=	prometheus:common:2e54d0b93cba2fd133edc32211dcc32c06ef72ca:prometheuscommon/src/github.com/prometheus/common
GH_TUPLE+=	prometheus:procfs:a6e9df898b1336106c743392c48ee0b71f5c4efa:prometheusprocfs/src/github.com/prometheus/procfs
GH_TUPLE+=	satori:go.uuid:879c5887cd475cd7864858769793b2ceb0d44feb:satorigouuid/src/github.com/satori/go.uuid
GH_TUPLE+=	sirupsen:logrus:d682213848ed68c0a260ca37d6dd5ace8423f5ba:sirupsenlogrus/src/github.com/sirupsen/logrus
GH_TUPLE+=	tidwall:gjson:be96719f990978a867f52c48f29d43f6b591da28:tidwallgjson/src/github.com/tidwall/gjson
GH_TUPLE+=	tidwall:match:173748da739a410c5b0b813b956f89ff94730b4c:tidwallmatch/src/github.com/tidwall/match
GH_TUPLE+=	xeipuuv:gojsonpointer:6fe8760cad3569743d51ddbb243b26f8456742dc:xeipuuvgojsonpointer/src/github.com/xeipuuv/gojsonpointer
GH_TUPLE+=	xeipuuv:gojsonreference:e02fc20de94c78484cd5ffb007f8af96be030a45:xeipuuvgojsonreference/src/github.com/xeipuuv/gojsonreference
GH_TUPLE+=	xeipuuv:gojsonschema:0c8571ac0ce161a5feb57375a9cdf148c98c0f70:xeipuuvgojsonschema/src/github.com/xeipuuv/gojsonschema
GH_TUPLE+=	golang:crypto:9477e0b78b9ac3d0b03822fd95422e2fe07627cd:golangcrypto/src/golang.org/x/crypto
GH_TUPLE+=	golang:net:dc871a5d77e227f5bbf6545176ef3eeebf87e76e:golangnet/src/golang.org/x/net
GH_TUPLE+=	golang:sys:f7928cfef4d09d1b080aa2b6fd3ca9ba1567c733:golangsys/src/golang.org/x/sys
GH_TUPLE+=	alecthomas:kingpin:1087e65c9441605df944fb12c33f0fe7072d18ca:alecthomaskingpinv2/src/gopkg.in/alecthomas/kingpin.v2
GH_TUPLE+=	go-yaml:yaml:287cf08546ab5e7e37d55a84f7ed3fd1db036de5:yamlv2/src/gopkg.in/yaml.v2

USE_RC_SUBR=	choria_broker

post-patch:
	${REINPLACE_CMD} -e 's/{{pkgname}}/choria_broker/' \
		${WRKSRC}/contrib/dist/broker.conf

do-build:
	@${MKDIR} ${WRKSRC}/out
	@cd ${GO_WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH=${WRKSRC} \
	    ${GO_CMD} build -v -x -ldflags '-X github.com/choria-io/go-choria/build.Version=${PORTVERSION}' \
	    -o ${WRKSRC}/out/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/out/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/choria
	${INSTALL_DATA} ${WRKSRC}/contrib/dist/broker.conf ${STAGEDIR}${PREFIX}/etc/choria/broker.conf.sample

.include <bsd.port.mk>
