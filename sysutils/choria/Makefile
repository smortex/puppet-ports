# $FreeBSD$

PORTNAME=	choria
PORTVERSION=	0.4.0
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
		beorn7:perks:3a771d992973f24aa725d07868b467d1ddfceafb:beorn7perks/src/github.com/beorn7/perks \
		choria-io:go-confkey:634d2c41860498507b0c7eeb2f8a33b1aa6a809d:choriaiogoconfkey/src/github.com/choria-io/go-confkey \
		choria-io:go-network-broker:0e0b495828d2193713cb9758cdceaf493b43d0d8:choriaiogonetworkbroker/src/github.com/choria-io/go-network-broker \
		choria-io:go-protocol:b7292acc12958de22c268a49883e565aa667b402:choriaiogoprotocol/src/github.com/choria-io/go-protocol \
		choria-io:go-security:615ff9a3ca0cabc08289e491ef8f57b6a51031a7:choriaiogosecurity/src/github.com/choria-io/go-security \
		choria-io:go-validator:4ce2ef25983faa873cc4bcea0f1ef2a4273d42cc:choriaiogovalidator/src/github.com/choria-io/go-validator \
		ghodss:yaml:0ca9ea5df5451ffdf184b4428c902747c2c11cd7:ghodssyaml/src/github.com/ghodss/yaml \
		gogo:protobuf:30cf7ac33676b5786e78c746683f0d4cd64fa75b:gogoprotobuf/src/github.com/gogo/protobuf \
		golang:mock:8b2eeeb0ca5f56c78bec5efde9c4a21d9201126c:golangmock/src/github.com/golang/mock \
		golang:protobuf:3a3da3a4e26776cc22a79ef46d5d58477532dede:golangprotobuf/src/github.com/golang/protobuf \
		matttproud:golang_protobuf_extensions:c12348ce28de40eed0136aa2b644d0ee0650e56c:matttproudgolang_protobuf_extensions/src/github.com/matttproud/golang_protobuf_extensions \
		nats-io:gnatsd:add6d7930ae6d4bff8823b28999ea87bf1bfd23d:natsiognatsd/src/github.com/nats-io/gnatsd \
		nats-io:go-nats:062418ea1c2181f52dc0f954f6204370519a868b:natsiogonats/src/github.com/nats-io/go-nats \
		nats-io:go-nats-streaming:6e620057a207bd61e992c1c5b6a2de7b6a4cb010:natsiogonatsstreaming/src/github.com/nats-io/go-nats-streaming \
		nats-io:nuid:3e58d42c9cfe5cd9429f1a21ad8f35cd859ba829:natsionuid/src/github.com/nats-io/nuid \
		onsi:ginkgo:fa5fabab2a1bfbd924faf4c067d07ae414e2aedf:onsiginkgo/src/github.com/onsi/ginkgo \
		onsi:gomega:62bff4df71bdbc266561a0caee19f0594b17c240:onsigomega/src/github.com/onsi/gomega \
		prometheus:client_golang:967789050ba94deca04a5e84cce8ad472ce313c1:prometheusclient_golang/src/github.com/prometheus/client_golang \
		prometheus:client_model:99fa1f4be8e564e8a6b613da7fa6f46c9edafc6c:prometheusclient_model/src/github.com/prometheus/client_model \
		prometheus:common:7600349dcfe1abd18d72d3a1770870d9800a7801:prometheuscommon/src/github.com/prometheus/common \
		prometheus:procfs:fe93d378a6b03758a2c1b65e86cf630bf78681c0:prometheusprocfs/src/github.com/prometheus/procfs \
		satori:go.uuid:f58768cc1a7a7e77a3bd49e98cdd21419399b6a3:satorigouuid/src/github.com/satori/go.uuid \
		sirupsen:logrus:c155da19408a8799da419ed3eeb0cb5db0ad5dbc:sirupsenlogrus/src/github.com/sirupsen/logrus \
		tidwall:gjson:3cd3a1192327ac5e24f7e87824be578b0b07c604:tidwallgjson/src/github.com/tidwall/gjson \
		tidwall:match:1731857f09b1f38450e2c12409748407822dc6be:tidwallmatch/src/github.com/tidwall/match \
		xeipuuv:gojsonpointer:4e3ac2762d5f479393488629ee9370b50873b3a6:xeipuuvgojsonpointer/src/github.com/xeipuuv/gojsonpointer \
		xeipuuv:gojsonreference:bd5ef7bd5415a7ac448318e64f11a24cd21e594b:xeipuuvgojsonreference/src/github.com/xeipuuv/gojsonreference \
		xeipuuv:gojsonschema:9ff6d6c47f3f5de55acc6f464d6e3719b02818ae:xeipuuvgojsonschema/src/github.com/xeipuuv/gojsonschema \
		golang:crypto:9477e0b78b9ac3d0b03822fd95422e2fe07627cd:golangcrypto/src/golang.org/x/crypto \
		golang:net:89e543239a64caf31d3a6865872ea120b41446df:golangnet/src/golang.org/x/net \
		golang:sys:f7928cfef4d09d1b080aa2b6fd3ca9ba1567c733:golangsys/src/golang.org/x/sys \
		alecthomas:kingpin:947dcec5ba9c011838740e680966fd7087a71d0d:alecthomaskingpinv2/src/gopkg.in/alecthomas/kingpin.v2 \
		go-yaml:yaml:5420a8b6744d3b0345ab293f6fcba19c978f1183:yamlv2/src/gopkg.in/yaml.v2

USE_RC_SUBR=	choria-broker choria-server

post-patch:
	${REINPLACE_CMD} -e 's/{{cpkg_name}}/choria-broker/' \
		${WRKSRC}/packager/templates/debian/global/broker.conf

do-build:
	@${MKDIR} ${WRKSRC}/out
	@cd ${GO_WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH=${WRKSRC} \
	    ${GO_CMD} generate
	@cd ${GO_WRKSRC} && \
	    ${SETENV} ${MAKE_ENV} ${GO_ENV} GOPATH=${WRKSRC} \
	    ${GO_CMD} build -v -x -ldflags '-X github.com/choria-io/go-choria/build.Version=${PORTVERSION}' \
	    -o ${WRKSRC}/out/${PORTNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/out/${PORTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/choria
	${INSTALL_DATA} ${WRKSRC}/packager/templates/debian/global/broker.conf ${STAGEDIR}${PREFIX}/etc/choria/broker.conf.sample

.include <bsd.port.mk>
