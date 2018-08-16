# $FreeBSD$

PORTNAME=	choria
PORTVERSION=	0.5.1
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
		choria-io:go-client:9f8afdf705fdf1e08ed970d8a61a52936205119c:choriaiogoclient/src/github.com/choria-io/go-client \
		choria-io:go-confkey:634d2c41860498507b0c7eeb2f8a33b1aa6a809d:choriaiogoconfkey/src/github.com/choria-io/go-confkey \
		choria-io:go-mcoshim:f92bd7733a5af67ff1e51bcb586f72464b7a3d12:choriaiogomcoshim/src/github.com/choria-io/go-mcoshim \
		choria-io:go-network-broker:fb996d344cb1b1d368517bb2071ace03372da0ba:choriaiogonetworkbroker/src/github.com/choria-io/go-network-broker \
		choria-io:go-protocol:c3117476636777d60c00a86b2d4b2b8fc56addb4:choriaiogoprotocol/src/github.com/choria-io/go-protocol \
		choria-io:go-security:a221c72ee79ab400346d38837d7e8b289857247b:choriaiogosecurity/src/github.com/choria-io/go-security \
		choria-io:go-validator:4ce2ef25983faa873cc4bcea0f1ef2a4273d42cc:choriaiogovalidator/src/github.com/choria-io/go-validator \
		choria-io:mcorpc-agent-provider:98d3c43c6d31f93a0713c5cc03901d0afa8246e3:choriaiomcorpcagentprovider/src/github.com/choria-io/mcorpc-agent-provider \
		choria-io:provisioning-agent:8118f60f9f4f3ed3c3119bf2164519378d431dbe:choriaioprovisioningagent/src/github.com/choria-io/provisioning-agent \
		ghodss:yaml:0ca9ea5df5451ffdf184b4428c902747c2c11cd7:ghodssyaml/src/github.com/ghodss/yaml \
		gogo:protobuf:99cb9b23110011cc45571c901ecae6f6f5e65cd3:gogoprotobuf/src/github.com/gogo/protobuf \
		golang:mock:8b2eeeb0ca5f56c78bec5efde9c4a21d9201126c:golangmock/src/github.com/golang/mock \
		golang:protobuf:1643683e1b54a9e88ad26d98f81400c8c9d9f4f9:golangprotobuf/src/github.com/golang/protobuf \
		matttproud:golang_protobuf_extensions:c12348ce28de40eed0136aa2b644d0ee0650e56c:matttproudgolang_protobuf_extensions/src/github.com/matttproud/golang_protobuf_extensions \
		nats-io:gnatsd:6608e9ac3be979dcb0614b772cc86a87b71acaa3:natsiognatsd/src/github.com/nats-io/gnatsd \
		nats-io:go-nats:062418ea1c2181f52dc0f954f6204370519a868b:natsiogonats/src/github.com/nats-io/go-nats \
		nats-io:go-nats-streaming:e15a53f85e4932540600a16b56f6c4f65f58176f:natsiogonatsstreaming/src/github.com/nats-io/go-nats-streaming \
		nats-io:nuid:28b996b57a46dd0c2aa3a3dc7fa8780878331d00:natsionuid/src/github.com/nats-io/nuid \
		onsi:ginkgo:3774a09d95489ccaa16032e0770d08ea77ba6184:onsiginkgo/src/github.com/onsi/ginkgo \
		onsi:gomega:b6ea1ea48f981d0f615a154a45eabb9dd466556d:onsigomega/src/github.com/onsi/gomega \
		prometheus:client_golang:967789050ba94deca04a5e84cce8ad472ce313c1:prometheusclient_golang/src/github.com/prometheus/client_golang \
		prometheus:client_model:99fa1f4be8e564e8a6b613da7fa6f46c9edafc6c:prometheusclient_model/src/github.com/prometheus/client_model \
		prometheus:common:89604d197083d4781071d3c65855d24ecfb0a563:prometheuscommon/src/github.com/prometheus/common \
		prometheus:procfs:b15cd069a83443be3154b719d0cc9fe8117f09fb:prometheusprocfs/src/github.com/prometheus/procfs \
		satori:go.uuid:f58768cc1a7a7e77a3bd49e98cdd21419399b6a3:satorigouuid/src/github.com/satori/go.uuid \
		sirupsen:logrus:3e01752db0189b9157070a0e1668a620f9a85da2:sirupsenlogrus/src/github.com/sirupsen/logrus \
		tidwall:gjson:01f00f129617a6fe98941fb920d6c760241b54d2:tidwallgjson/src/github.com/tidwall/gjson \
		tidwall:match:1731857f09b1f38450e2c12409748407822dc6be:tidwallmatch/src/github.com/tidwall/match \
		xeipuuv:gojsonpointer:6fe8760cad3569743d51ddbb243b26f8456742dc:xeipuuvgojsonpointer/src/github.com/xeipuuv/gojsonpointer \
		xeipuuv:gojsonreference:e02fc20de94c78484cd5ffb007f8af96be030a45:xeipuuvgojsonreference/src/github.com/xeipuuv/gojsonreference \
		xeipuuv:gojsonschema:511d08a359d14c0dd9c4302af52ee9abb6f93c2a:xeipuuvgojsonschema/src/github.com/xeipuuv/gojsonschema \
		uber-go:atomic:1ea20fb1cbb1cc08cbd0d913a96dead89aa18289:atomic/src/go.uber.org/atomic/ \
		golang:crypto:9477e0b78b9ac3d0b03822fd95422e2fe07627cd:golangcrypto/src/golang.org/x/crypto \
		golang:net:5ccada7d0a7ba9aeb5d3aca8d3501b4c2a509fec:golangnet/src/golang.org/x/net \
		golang:sys:f7928cfef4d09d1b080aa2b6fd3ca9ba1567c733:golangsys/src/golang.org/x/sys \
		alecthomas:kingpin:947dcec5ba9c011838740e680966fd7087a71d0d:alecthomaskingpinv2/src/gopkg.in/alecthomas/kingpin.v2 \
		go-yaml:yaml:d670f9405373e636a5a2765eea47fac0c9bc91a4:yamlv2/src/gopkg.in/yaml.v2

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
