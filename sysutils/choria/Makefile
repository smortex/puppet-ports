# $FreeBSD$

PORTNAME=	choria
PORTVERSION=	0.0.11
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

GH_TUPLE+=	alecthomas:template:a0175ee3bccc567396460bf5acd36800cb10c49c:alecthomastemplate/src/github.com/alecthomas/template \
		alecthomas:units:2efee857e7cfd4f3d0138cc3cbb1b4966962b93a:alecthomasunits/src/github.com/alecthomas/units \
		beorn7:perks:4c0e84591b9aa9e6dcfdf3e020114cd81f89d5f9:beorn7perks/src/github.com/beorn7/perks \
		choria-io:go-confkey:3a0ddeafbca44f8cd05f594ec7a6788913f0c1dc:choriaiogoconfkey/src/github.com/choria-io/go-confkey \
		choria-io:go-protocol:72bc3ca9593e692e55a3f5dda61194803f54d619:choriaiogoprotocol/src/github.com/choria-io/go-protocol \
		choria-io:go-validator:99e0f793dd701e8cf45fd27624390ea43699e3b9:choriaiogovalidator/src/github.com/choria-io/go-validator \
		ghodss:yaml:0ca9ea5df5451ffdf184b4428c902747c2c11cd7:ghodssyaml/src/github.com/ghodss/yaml \
		gogo:protobuf:c0656edd0d9eab7c66d1eb0c568f9039345796f7:gogoprotobuf/src/github.com/gogo/protobuf \
		golang:protobuf:1643683e1b54a9e88ad26d98f81400c8c9d9f4f9:golangprotobuf/src/github.com/golang/protobuf \
		matttproud:golang_protobuf_extensions:c12348ce28de40eed0136aa2b644d0ee0650e56c:matttproudgolang_protobuf_extensions/src/github.com/matttproud/golang_protobuf_extensions \
		nats-io:gnatsd:02dd205a481e8f9957f15ec2667e8b80bafecc14:natsiognatsd/src/github.com/nats-io/gnatsd \
		nats-io:go-nats:d66cb54e6b7bdd93f0b28afc8450d84c780dfb68:natsiogonats/src/github.com/nats-io/go-nats \
		nats-io:go-nats-streaming:6e620057a207bd61e992c1c5b6a2de7b6a4cb010:natsiogonatsstreaming/src/github.com/nats-io/go-nats-streaming \
		nats-io:nuid:33c603157d6fd1b0ac2599bcc4a286b36479a06d:natsionuid/src/github.com/nats-io/nuid \
		onsi:ginkgo:77a8c1e5c40d6bb6c5eb4dd4bdce9763564f6298:onsiginkgo/src/github.com/onsi/ginkgo \
		onsi:gomega:003f63b7f4cff3fc95357005358af2de0f5fe152:onsigomega/src/github.com/onsi/gomega \
		prometheus:client_golang:967789050ba94deca04a5e84cce8ad472ce313c1:prometheusclient_golang/src/github.com/prometheus/client_golang \
		prometheus:client_model:99fa1f4be8e564e8a6b613da7fa6f46c9edafc6c:prometheusclient_model/src/github.com/prometheus/client_model \
		prometheus:common:89604d197083d4781071d3c65855d24ecfb0a563:prometheuscommon/src/github.com/prometheus/common \
		prometheus:procfs:b15cd069a83443be3154b719d0cc9fe8117f09fb:prometheusprocfs/src/github.com/prometheus/procfs \
		satori:go.uuid:f58768cc1a7a7e77a3bd49e98cdd21419399b6a3:satorigouuid/src/github.com/satori/go.uuid \
		sirupsen:logrus:d682213848ed68c0a260ca37d6dd5ace8423f5ba:sirupsenlogrus/src/github.com/sirupsen/logrus \
		tidwall:gjson:87033efcaec6215741137e8ca61952c53ef2685d:tidwallgjson/src/github.com/tidwall/gjson \
		tidwall:match:1731857f09b1f38450e2c12409748407822dc6be:tidwallmatch/src/github.com/tidwall/match \
		xeipuuv:gojsonpointer:6fe8760cad3569743d51ddbb243b26f8456742dc:xeipuuvgojsonpointer/src/github.com/xeipuuv/gojsonpointer \
		xeipuuv:gojsonreference:e02fc20de94c78484cd5ffb007f8af96be030a45:xeipuuvgojsonreference/src/github.com/xeipuuv/gojsonreference \
		xeipuuv:gojsonschema:511d08a359d14c0dd9c4302af52ee9abb6f93c2a:xeipuuvgojsonschema/src/github.com/xeipuuv/gojsonschema \
		golang:crypto:9477e0b78b9ac3d0b03822fd95422e2fe07627cd:golangcrypto/src/golang.org/x/crypto \
		golang:net:5ccada7d0a7ba9aeb5d3aca8d3501b4c2a509fec:golangnet/src/golang.org/x/net \
		golang:sys:f7928cfef4d09d1b080aa2b6fd3ca9ba1567c733:golangsys/src/golang.org/x/sys \
		alecthomas:kingpin:947dcec5ba9c011838740e680966fd7087a71d0d:alecthomaskingpinv2/src/gopkg.in/alecthomas/kingpin.v2 \
		go-yaml:yaml:d670f9405373e636a5a2765eea47fac0c9bc91a4:yamlv2/src/gopkg.in/yaml.v2

USE_RC_SUBR=	choria_broker choria_server

post-patch:
	${REINPLACE_CMD} -e 's/{{cpkg_name}}/choria_broker/' \
		${WRKSRC}/packager/templates/debian/global/broker.conf

do-build:
	@${MKDIR} ${WRKSRC}/out
	@cd ${GO_WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH=${WRKSRC} \
	    ${GO_CMD} build -v -x -ldflags '-X github.com/choria-io/go-choria/build.Version=${PORTVERSION}' \
	    -o ${WRKSRC}/out/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/out/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/choria
	${INSTALL_DATA} ${WRKSRC}/packager/templates/debian/global/broker.conf ${STAGEDIR}${PREFIX}/etc/choria/broker.conf.sample

.include <bsd.port.mk>
