# $FreeBSD$

PORTNAME=	choria
PORTVERSION=	0.11.1
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
		choria-io:go-lifecycle:1abefec262bec96f9581d76f3270c86121356d02:choriaiogolifecycle/src/github.com/choria-io/go-lifecycle \
		choria-io:go-mcoshim:f92bd7733a5af67ff1e51bcb586f72464b7a3d12:choriaiogomcoshim/src/github.com/choria-io/go-mcoshim \
		choria-io:go-network-broker:c141921ee74adeb58a9312ae2ba4cbb54e8d5a0c:choriaiogonetworkbroker/src/github.com/choria-io/go-network-broker \
		choria-io:go-protocol:c3117476636777d60c00a86b2d4b2b8fc56addb4:choriaiogoprotocol/src/github.com/choria-io/go-protocol \
		choria-io:go-security:3bb3b37e23b5fa925edd54d17a7b90f5305885d8:choriaiogosecurity/src/github.com/choria-io/go-security \
		choria-io:go-updater:2e95f9965f469b7b1dcba5b3ea16033413e4273e:choriaiogoupdater/src/github.com/choria-io/go-updater \
		choria-io:go-validator:4ce2ef25983faa873cc4bcea0f1ef2a4273d42cc:choriaiogovalidator/src/github.com/choria-io/go-validator \
		choria-io:mcorpc-agent-provider:d2470e28440e64a4fce5ab45d50e0389e4efb559:choriaiomcorpcagentprovider/src/github.com/choria-io/mcorpc-agent-provider \
		choria-io:provisioning-agent:38d1a63e87497f4f5703b941f688144d9fa23e1d:choriaioprovisioningagent/src/github.com/choria-io/provisioning-agent \
		ghodss:yaml:0ca9ea5df5451ffdf184b4428c902747c2c11cd7:ghodssyaml/src/github.com/ghodss/yaml \
		gofrs:uuid:6b08a5c5172ba18946672b49749cde22873dd7c2:gofrsuuid/src/github.com/gofrs/uuid \
		gogo:protobuf:99cb9b23110011cc45571c901ecae6f6f5e65cd3:gogoprotobuf/src/github.com/gogo/protobuf \
		golang:mock:8b2eeeb0ca5f56c78bec5efde9c4a21d9201126c:golangmock/src/github.com/golang/mock \
		golang:protobuf:52132540909e117f2b98b0694383dc0ab1e1deca:golangprotobuf/src/github.com/golang/protobuf \
		google:shlex:c34317bd91bf98fab745d77b03933cf8769299fe:googleshlex/src/github.com/google/shlex \
		konsorten:go-windows-terminal-sequences:5c8c8bd35d3832f5d134ae1e1e375b69a4d25242:konsortengowindowsterminalsequences/src/github.com/konsorten/go-windows-terminal-sequences \
		looplab:fsm:84b5307469f859464403f80919467950a79de1b1:looplabfsm/src/github.com/looplab/fsm \
		matttproud:golang_protobuf_extensions:c12348ce28de40eed0136aa2b644d0ee0650e56c:matttproudgolang_protobuf_extensions/src/github.com/matttproud/golang_protobuf_extensions \
		nats-io:nats-server:f2bd68be4093f0c2ba3bd70dac8aac8011c6f393:natsiognatsd/src/github.com/nats-io/gnatsd \
		nats-io:go-nats:fb0396ee0bdb8018b0fef30d6d1de798ce99cd05:natsiogonats/src/github.com/nats-io/go-nats \
		nats-io:stan.go:7cd94c239033c0405a43454be55a0810d3a3ca89:natsiogonatsstreaming/src/github.com/nats-io/go-nats-streaming \
		nats-io:nuid:28b996b57a46dd0c2aa3a3dc7fa8780878331d00:natsionuid/src/github.com/nats-io/nuid \
		onsi:ginkgo:eea6ad008b96acdaa524f5b409513bf062b500ad:onsiginkgo/src/github.com/onsi/ginkgo \
		onsi:gomega:90e289841c1ed79b7a598a7cd9959750cb5e89e2:onsigomega/src/github.com/onsi/gomega \
		pkg:errors:ba968bfe8b2f7e042a574c888954fccecfa385b4:pkgerrors/src/github.com/pkg/errors \
		prometheus:client_golang:505eaef017263e299324067d40ca2c48f6a2cf50:prometheusclient_golang/src/github.com/prometheus/client_golang \
		prometheus:client_model:5c3871d89910bfb32f5fcab2aa4b9ec68e65a99f:prometheusclient_model/src/github.com/prometheus/client_model \
		prometheus:common:61f87aac8082fa8c3c5655c7608d7478d46ac2ad:prometheuscommon/src/github.com/prometheus/common \
		prometheus:procfs:185b4288413d2a0dd0806f78c90dde719829e5ae:prometheusprocfs/src/github.com/prometheus/procfs \
		robfig:cron:b41be1df696709bb6395fe435af20370037c0b4c:robfigcron/src/github.com/robfig/cron \
		sirupsen:logrus:e1e72e9de974bd926e5c56f83753fba2df402ce5:sirupsenlogrus/src/github.com/sirupsen/logrus \
		tidwall:gjson:eee0b6226f0d1db2675a176fdfaa8419bcad4ca8:tidwallgjson/src/github.com/tidwall/gjson \
		tidwall:match:1731857f09b1f38450e2c12409748407822dc6be:tidwallmatch/src/github.com/tidwall/match \
		tidwall:pretty:1166b9ac2b65e46a43d8618d30d1554f4652d49b:tidwallpretty/src/github.com/tidwall/pretty \
		xeipuuv:gojsonpointer:4e3ac2762d5f479393488629ee9370b50873b3a6:xeipuuvgojsonpointer/src/github.com/xeipuuv/gojsonpointer \
		xeipuuv:gojsonreference:bd5ef7bd5415a7ac448318e64f11a24cd21e594b:xeipuuvgojsonreference/src/github.com/xeipuuv/gojsonreference \
		xeipuuv:gojsonschema:f3a9dae5b19473510a3062802a98815f609ed747:xeipuuvgojsonschema/src/github.com/xeipuuv/gojsonschema \
		uber-go:atomic:df976f2515e274675050de7b3f42545de80594fd:atomic/src/go.uber.org/atomic/ \
		golang:crypto:22d7a77e9e5f409e934ed268692e56707cd169e5:golangcrypto/src/golang.org/x/crypto \
		golang:net:adae6a3d119ae4890b46832a2e88a95adc62b8e7:golangnet/src/golang.org/x/net \
		golang:sys:a5b02f93d862f065920dd6a40dddc66b60d0dec4:golangsys/src/golang.org/x/sys \
		alecthomas:kingpin:947dcec5ba9c011838740e680966fd7087a71d0d:alecthomaskingpinv2/src/gopkg.in/alecthomas/kingpin.v2 \
		go-yaml:yaml:5420a8b6744d3b0345ab293f6fcba19c978f1183:yamlv2/src/gopkg.in/yaml.v2

USE_RC_SUBR=	choria-broker choria-server

post-patch:
	${REINPLACE_CMD} -e 's/{{cpkg_name}}/choria-broker/' \
		${WRKSRC}/packager/templates/debian/global/broker.conf
	${REINPLACE_CMD} -e 's/{{cpkg_name}}/choria-server/' \
		${WRKSRC}/packager/templates/debian/global/server.conf

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
	${INSTALL_DATA} ${WRKSRC}/packager/templates/debian/global/server.conf ${STAGEDIR}${PREFIX}/etc/choria/server.conf.sample

.include <bsd.port.mk>
