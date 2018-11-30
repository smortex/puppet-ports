# $FreeBSD$

PORTNAME=	choria
PORTVERSION=	0.8.0
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
		choria-io:go-client:54bcd877b6c6d9c8bc96863910f2f32b67b081d1:choriaiogoclient/src/github.com/choria-io/go-client \
		choria-io:go-confkey:634d2c41860498507b0c7eeb2f8a33b1aa6a809d:choriaiogoconfkey/src/github.com/choria-io/go-confkey \
		choria-io:go-lifecycle:6433dc8ede9dd3e3170dad048ef897e5088ecc66:choriaiogolifecycle/src/github.com/choria-io/go-lifecycle \
		choria-io:go-mcoshim:f92bd7733a5af67ff1e51bcb586f72464b7a3d12:choriaiogomcoshim/src/github.com/choria-io/go-mcoshim \
		choria-io:go-network-broker:5ee327018c41220008c20284067da610d0f6478e:choriaiogonetworkbroker/src/github.com/choria-io/go-network-broker \
		choria-io:go-protocol:c3117476636777d60c00a86b2d4b2b8fc56addb4:choriaiogoprotocol/src/github.com/choria-io/go-protocol \
		choria-io:go-security:75654ad2139b915791141ab172d0930bf024fec7:choriaiogosecurity/src/github.com/choria-io/go-security \
		choria-io:go-updater:8c484a7b2a2a8e4fb51b3db81ff5dad15c512523:choriaiogoupdater/src/github.com/choria-io/go-updater \
		choria-io:go-validator:4ce2ef25983faa873cc4bcea0f1ef2a4273d42cc:choriaiogovalidator/src/github.com/choria-io/go-validator \
		choria-io:mcorpc-agent-provider:c6aa986d8a0ca81fca4994b3ce3dea22fd5f63fc:choriaiomcorpcagentprovider/src/github.com/choria-io/mcorpc-agent-provider \
		choria-io:provisioning-agent:d7c49da1907a1de7751f7fe0ac5f9ad1156ea5ce:choriaioprovisioningagent/src/github.com/choria-io/provisioning-agent \
		ghodss:yaml:0ca9ea5df5451ffdf184b4428c902747c2c11cd7:ghodssyaml/src/github.com/ghodss/yaml \
		gofrs:uuid:7077aa61129615a0d7f45c49101cd011ab221c27:gofrsuuid/src/github.com/gofrs/uuid \
		gogo:protobuf:e87afe3c25daf6fa321fed3705938e53672b0a3b:gogoprotobuf/src/github.com/gogo/protobuf \
		golang:mock:8b2eeeb0ca5f56c78bec5efde9c4a21d9201126c:golangmock/src/github.com/golang/mock \
		golang:protobuf:52132540909e117f2b98b0694383dc0ab1e1deca:golangprotobuf/src/github.com/golang/protobuf \
		konsorten:go-windows-terminal-sequences:5c8c8bd35d3832f5d134ae1e1e375b69a4d25242:konsortengowindowsterminalsequences/src/github.com/konsorten/go-windows-terminal-sequences \
		matttproud:golang_protobuf_extensions:c12348ce28de40eed0136aa2b644d0ee0650e56c:matttproudgolang_protobuf_extensions/src/github.com/matttproud/golang_protobuf_extensions \
		nats-io:gnatsd:eed4fbc1458ce110ad1aa1adf904229bc8fda2a7:natsiognatsd/src/github.com/nats-io/gnatsd \
		nats-io:go-nats:fb0396ee0bdb8018b0fef30d6d1de798ce99cd05:natsiogonats/src/github.com/nats-io/go-nats \
		nats-io:go-nats-streaming:e15a53f85e4932540600a16b56f6c4f65f58176f:natsiogonatsstreaming/src/github.com/nats-io/go-nats-streaming \
		nats-io:nuid:28b996b57a46dd0c2aa3a3dc7fa8780878331d00:natsionuid/src/github.com/nats-io/nuid \
		onsi:ginkgo:2e1be8f7d90e9d3e3e58b0ce470f2f14d075406f:onsiginkgo/src/github.com/onsi/ginkgo \
		onsi:gomega:65fb64232476ad9046e57c26cd0bff3d3a8dc6cd:onsigomega/src/github.com/onsi/gomega \
		prometheus:client_golang:967789050ba94deca04a5e84cce8ad472ce313c1:prometheusclient_golang/src/github.com/prometheus/client_golang \
		prometheus:client_model:5c3871d89910bfb32f5fcab2aa4b9ec68e65a99f:prometheusclient_model/src/github.com/prometheus/client_model \
		prometheus:common:41aa239b4cce3c56ab88fc366ae8b0a6423fa239:prometheuscommon/src/github.com/prometheus/common \
		prometheus:procfs:185b4288413d2a0dd0806f78c90dde719829e5ae:prometheusprocfs/src/github.com/prometheus/procfs \
		sirupsen:logrus:bcd833dfe83d3cebad139e4a29ed79cb2318bf95:sirupsenlogrus/src/github.com/sirupsen/logrus \
		tidwall:gjson:081192fa2e471ddff3ec98a3cc04fecfd031ed57:tidwallgjson/src/github.com/tidwall/gjson \
		tidwall:match:1731857f09b1f38450e2c12409748407822dc6be:tidwallmatch/src/github.com/tidwall/match \
		xeipuuv:gojsonpointer:4e3ac2762d5f479393488629ee9370b50873b3a6:xeipuuvgojsonpointer/src/github.com/xeipuuv/gojsonpointer \
		xeipuuv:gojsonreference:bd5ef7bd5415a7ac448318e64f11a24cd21e594b:xeipuuvgojsonreference/src/github.com/xeipuuv/gojsonreference \
		xeipuuv:gojsonschema:f3a9dae5b19473510a3062802a98815f609ed747:xeipuuvgojsonschema/src/github.com/xeipuuv/gojsonschema \
		uber-go:atomic:1ea20fb1cbb1cc08cbd0d913a96dead89aa18289:atomic/src/go.uber.org/atomic/ \
		golang:crypto:9477e0b78b9ac3d0b03822fd95422e2fe07627cd:golangcrypto/src/golang.org/x/crypto \
		golang:net:adae6a3d119ae4890b46832a2e88a95adc62b8e7:golangnet/src/golang.org/x/net \
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
