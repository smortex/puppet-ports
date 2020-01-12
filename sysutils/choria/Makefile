# $FreeBSD$

PORTNAME=	choria
PORTVERSION=	0.13.1
DISTVERSIONPREFIX=v
CATEGORIES=	sysutils

MAINTAINER=	romain@FreeBSD.org
COMMENT=	Server to host Choria agents, networks, federations and discovery

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		go:modules

USE_GITHUB=	yes
GH_ACCOUNT=	choria-io
GH_PROJECT=	go-choria

GH_TUPLE=	\
		AlecAivazis:survey:v1.7.0:alecaivazis_survey/vendor/github.com/AlecAivazis/survey \
		AlecAivazis:survey:v2.0.5:alecaivazis_survey_v2/vendor/github.com/AlecAivazis/survey/v2 \
		OneOfOne:xxhash:v1.2.3:oneofone_xxhash/vendor/github.com/OneOfOne/xxhash \
		alecthomas:kingpin:v2.2.6:alecthomas_kingpin/vendor/gopkg.in/alecthomas/kingpin.v2 \
		alecthomas:template:fb15b899a751:alecthomas_template/vendor/github.com/alecthomas/template \
		alecthomas:units:c3de453c63f4:alecthomas_units/vendor/github.com/alecthomas/units \
		beorn7:perks:v1.0.1:beorn7_perks/vendor/github.com/beorn7/perks \
		census-instrumentation:opencensus-go:v0.22.0:census_instrumentation_opencensus_go/vendor/go.opencensus.io \
		cespare:xxhash:v2.1.1:cespare_xxhash/vendor/github.com/cespare/xxhash/v2 \
		choria-io:go-client:v0.5.3:choria_io_go_client/vendor/github.com/choria-io/go-client \
		choria-io:go-config:v0.0.6:choria_io_go_config/vendor/github.com/choria-io/go-config \
		choria-io:go-confkey:v1.3.0:choria_io_go_confkey/vendor/github.com/choria-io/go-confkey \
		choria-io:go-lifecycle:v1.1.0:choria_io_go_lifecycle/vendor/github.com/choria-io/go-lifecycle \
		choria-io:go-network-broker:v1.3.2:choria_io_go_network_broker/vendor/github.com/choria-io/go-network-broker \
		choria-io:go-protocol:v1.4.0:choria_io_go_protocol/vendor/github.com/choria-io/go-protocol \
		choria-io:go-puppet:v0.0.1:choria_io_go_puppet/vendor/github.com/choria-io/go-puppet \
		choria-io:go-security:v0.6.0:choria_io_go_security/vendor/github.com/choria-io/go-security \
		choria-io:go-srvcache:v0.0.6:choria_io_go_srvcache/vendor/github.com/choria-io/go-srvcache \
		choria-io:go-validator:v1.1.1:choria_io_go_validator/vendor/github.com/choria-io/go-validator \
		choria-io:mcorpc-agent-provider:v0.10.0:choria_io_mcorpc_agent_provider/vendor/github.com/choria-io/mcorpc-agent-provider \
		cloudevents:sdk-go:v0.10.2:cloudevents_sdk_go/vendor/github.com/cloudevents/sdk-go \
		dgrijalva:jwt-go:v3.2.0:dgrijalva_jwt_go/vendor/github.com/dgrijalva/jwt-go \
		fatih:color:v1.9.0:fatih_color/vendor/github.com/fatih/color \
		fsnotify:fsnotify:v1.4.7:fsnotify_fsnotify/vendor/gopkg.in/fsnotify.v1 \
		ghodss:yaml:v1.0.0:ghodss_yaml/vendor/github.com/ghodss/yaml \
		go-tomb:tomb:dd632973f1e7:go_tomb_tomb/vendor/gopkg.in/tomb.v1 \
		go-yaml:yaml:v2.2.4:go_yaml_yaml/vendor/gopkg.in/yaml.v2 \
		gobwas:glob:v0.2.3:gobwas_glob/vendor/github.com/gobwas/glob \
		gofrs:uuid:v3.2.0:gofrs_uuid/vendor/github.com/gofrs/uuid \
		gogo:protobuf:v1.3.0:gogo_protobuf/vendor/github.com/gogo/protobuf \
		golang:crypto:4def268fd1a4:golang_crypto/vendor/golang.org/x/crypto \
		golang:lint:16217165b5de:golang_lint/vendor/golang.org/x/lint \
		golang:mock:v1.3.1:golang_mock/vendor/github.com/golang/mock \
		golang:net:ca1201d0de80:golang_net/vendor/golang.org/x/net \
		golang:protobuf:v1.3.2:golang_protobuf/vendor/github.com/golang/protobuf \
		golang:sys:04cbcbbfeed8:golang_sys/vendor/golang.org/x/sys \
		golang:text:v0.3.2:golang_text/vendor/golang.org/x/text \
		golang:tools:9cc4af7d6b2c:golang_tools/vendor/golang.org/x/tools \
		golang:xerrors:a985d3407aa7:golang_xerrors/vendor/golang.org/x/xerrors \
		google:shlex:e7afc7fbc510:google_shlex/vendor/github.com/google/shlex \
		google:uuid:v1.1.1:google_uuid/vendor/github.com/google/uuid \
		gosuri:uilive:v0.0.3:gosuri_uilive/vendor/github.com/gosuri/uilive \
		gosuri:uiprogress:v0.0.1:gosuri_uiprogress/vendor/github.com/gosuri/uiprogress \
		guptarohit:asciigraph:v0.4.1:guptarohit_asciigraph/vendor/github.com/guptarohit/asciigraph \
		hashicorp:golang-lru:v0.5.1:hashicorp_golang_lru/vendor/github.com/hashicorp/golang-lru \
		hpcloud:tail:v1.0.0:hpcloud_tail/vendor/github.com/hpcloud/tail \
		kballard:go-shellquote:95032a82bc51:kballard_go_shellquote/vendor/github.com/kballard/go-shellquote \
		konsorten:go-windows-terminal-sequences:v1.0.2:konsorten_go_windows_terminal_sequences/vendor/github.com/konsorten/go-windows-terminal-sequences \
		looplab:fsm:v0.1.0:looplab_fsm/vendor/github.com/looplab/fsm \
		mattn:go-colorable:v0.1.4:mattn_go_colorable/vendor/github.com/mattn/go-colorable \
		mattn:go-isatty:v0.0.11:mattn_go_isatty/vendor/github.com/mattn/go-isatty \
		matttproud:golang_protobuf_extensions:v1.0.1:matttproud_golang_protobuf_extensions/vendor/github.com/matttproud/golang_protobuf_extensions \
		mgutz:ansi:9520e82c474b:mgutz_ansi/vendor/github.com/mgutz/ansi \
		miekg:pkcs11:v1.0.3:miekg_pkcs11/vendor/github.com/miekg/pkcs11 \
		mitchellh:go-homedir:v1.1.0:mitchellh_go_homedir/vendor/github.com/mitchellh/go-homedir \
		mitchellh:go-wordwrap:v1.0.0:mitchellh_go_wordwrap/vendor/github.com/mitchellh/go-wordwrap \
		nats-io:cliprompts:ae8d3743105d:nats_io_cliprompts/vendor/github.com/nats-io/cliprompts \
		nats-io:jwt:v0.3.2:nats_io_jwt/vendor/github.com/nats-io/jwt \
		nats-io:nats-server:v2.1.2:nats_io_nats_server/vendor/github.com/nats-io/nats-server/v2 \
		nats-io:nats.go:v1.9.1:nats_io_nats_go/vendor/github.com/nats-io/nats.go \
		nats-io:nkeys:v0.1.3:nats_io_nkeys/vendor/github.com/nats-io/nkeys \
		nats-io:nsc:dc3fc58b4695:nats_io_nsc/vendor/github.com/nats-io/nsc \
		nats-io:nuid:v1.0.1:nats_io_nuid/vendor/github.com/nats-io/nuid \
		nats-io:stan.go:v0.6.0:nats_io_stan_go/vendor/github.com/nats-io/stan.go \
		onsi:ginkgo:v1.11.0:onsi_ginkgo/vendor/github.com/onsi/ginkgo \
		onsi:gomega:v1.8.1:onsi_gomega/vendor/github.com/onsi/gomega \
		open-policy-agent:opa:v0.16.0:open_policy_agent_opa/vendor/github.com/open-policy-agent/opa \
		pkg:errors:v0.9.0:pkg_errors/vendor/github.com/pkg/errors \
		prometheus:client_golang:v1.3.0:prometheus_client_golang/vendor/github.com/prometheus/client_golang \
		prometheus:client_model:v0.1.0:prometheus_client_model/vendor/github.com/prometheus/client_model \
		prometheus:common:v0.7.0:prometheus_common/vendor/github.com/prometheus/common \
		prometheus:procfs:v0.0.8:prometheus_procfs/vendor/github.com/prometheus/procfs \
		rcrowley:go-metrics:3113b8401b8a:rcrowley_go_metrics/vendor/github.com/rcrowley/go-metrics \
		robfig:cron:v1.2.0:robfig_cron/vendor/github.com/robfig/cron \
		sirupsen:logrus:v1.4.2:sirupsen_logrus/vendor/github.com/sirupsen/logrus \
		tidwall:gjson:v1.3.5:tidwall_gjson/vendor/github.com/tidwall/gjson \
		tidwall:match:v1.0.1:tidwall_match/vendor/github.com/tidwall/match \
		tidwall:pretty:v1.0.0:tidwall_pretty/vendor/github.com/tidwall/pretty \
		uber-go:atomic:v1.5.1:uber_go_atomic/vendor/go.uber.org/atomic \
		uber-go:multierr:v1.1.0:uber_go_multierr/vendor/go.uber.org/multierr \
		uber-go:zap:v1.10.0:uber_go_zap/vendor/go.uber.org/zap \
		xeipuuv:gojsonpointer:02993c407bfb:xeipuuv_gojsonpointer/vendor/github.com/xeipuuv/gojsonpointer \
		xeipuuv:gojsonreference:bd5ef7bd5415:xeipuuv_gojsonreference/vendor/github.com/xeipuuv/gojsonreference \
		xeipuuv:gojsonschema:v1.2.0:xeipuuv_gojsonschema/vendor/github.com/xeipuuv/gojsonschema \
		yashtewari:glob-intersection:5c77d914dd0b:yashtewari_glob_intersection/vendor/github.com/yashtewari/glob-intersection

# This one fails to be managed automagically
GH_TUPLE+=	\
		rsc:goversion:v1.2.0:rsc_goversion/vendor/rsc.io/goversion

USE_RC_SUBR=	choria-broker choria-server

post-patch:
	${MKDIR} ${WRKSRC}/vendor/gopkg.in/AlecAivazis
	${LN} -sf ${WRKSRC}/vendor/github.com/AlecAivazis/survey ${WRKSRC}/vendor/gopkg.in/AlecAivazis/survey.v1
	${LN} -sf ${WRKSRC}/vendor/github.com/nats-io/cliprompts/v2/open_linux.go ${WRKSRC}/vendor/github.com/nats-io/cliprompts/v2/open_freebsd.go
	${REINPLACE_CMD} -e 's/{{cpkg_name}}/choria-broker/' \
		${WRKSRC}/packager/templates/debian/global/broker.conf
	${REINPLACE_CMD} -e 's/{{cpkg_name}}/choria-server/' \
		${WRKSRC}/packager/templates/debian/global/server.conf

do-maintainer-stuff:
	cd ${GO_WRKSRC} && ${GO_CMD} generate
	@${ECHO_MSG} "-----------------------------------------------------------"
	@${ECHO_MSG} "Plugins generated.  Make sure they are provided as patches:"
	@${ECHO_MSG} "patchtool -a ${WRKSRC}/plugin_*.go"
	@${ECHO_MSG} "-----------------------------------------------------------"
	${FALSE}

post-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/etc/choria
	${INSTALL_DATA} ${WRKSRC}/packager/templates/debian/global/broker.conf ${STAGEDIR}${PREFIX}/etc/choria/broker.conf.sample
	${INSTALL_DATA} ${WRKSRC}/packager/templates/debian/global/server.conf ${STAGEDIR}${PREFIX}/etc/choria/server.conf.sample

.include <bsd.port.mk>
