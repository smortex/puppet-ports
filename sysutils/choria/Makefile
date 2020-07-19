# $FreeBSD$

PORTNAME=	choria
PORTVERSION=	0.16.0
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

# To update:
#  1. Remove GH_TUPLE ; GH_TUPLE+= ; post-patch ; files/patch-plugin_*
#  2. Follow porter handbook instructions
#     https://www.freebsd.org/doc/en_US.ISO8859-1/books/porters-handbook/book.html#using-go
#  3. Fix GH_TUPLE (GH_TUPLE+= has a bunch of fixes, remove relevant lines in GH_TUPLE)
#  4. Run `make do-maintainer-stuff`
#  5. Clean, build, fix

GH_TUPLE=	\
		AlecAivazis:survey:v2.0.7:alecaivazis_survey/vendor/github.com/AlecAivazis/survey/v2 \
		Freman:eventloghook:e4d803b6b48b:freman_eventloghook/vendor/github.com/Freman/eventloghook \
		Masterminds:goutils:v1.1.0:masterminds_goutils/vendor/github.com/Masterminds/goutils \
		Masterminds:semver:v1.5.0:masterminds_semver/vendor/github.com/Masterminds/semver \
		Masterminds:sprig:v2.22.0:masterminds_sprig/vendor/github.com/Masterminds/sprig \
		OneOfOne:xxhash:v1.2.7:oneofone_xxhash/vendor/github.com/OneOfOne/xxhash \
		achanda:go-sysctl:6be7678c45d2:achanda_go_sysctl/vendor/github.com/achanda/go-sysctl \
		aelsabbahy:GOnetstat:edf89f784e08:aelsabbahy_gonetstat/vendor/github.com/aelsabbahy/GOnetstat \
		aelsabbahy:go-ps:443386855ca1:aelsabbahy_go_ps/vendor/github.com/aelsabbahy/go-ps \
		aelsabbahy:goss:v0.3.13:aelsabbahy_goss/vendor/github.com/aelsabbahy/goss \
		alecthomas:kingpin:v2.2.6:alecthomas_kingpin/vendor/gopkg.in/alecthomas/kingpin.v2 \
		alecthomas:template:fb15b899a751:alecthomas_template/vendor/github.com/alecthomas/template \
		alecthomas:units:c3de453c63f4:alecthomas_units/vendor/github.com/alecthomas/units \
		awesome-gocui:gocui:v0.6.0:awesome_gocui_gocui/vendor/github.com/awesome-gocui/gocui \
		awesome-gocui:termbox-go:c0aef3d18bcc:awesome_gocui_termbox_go/vendor/github.com/awesome-gocui/termbox-go \
		beorn7:perks:v1.0.1:beorn7_perks/vendor/github.com/beorn7/perks \
		blang:semver:v3.5.1:blang_semver/vendor/github.com/blang/semver \
		census-instrumentation:opencensus-go:v0.22.0:census_instrumentation_opencensus_go/vendor/go.opencensus.io \
		cespare:xxhash:v2.1.1:cespare_xxhash/vendor/github.com/cespare/xxhash/v2 \
		cheekybits:genny:v1.0.0:cheekybits_genny/vendor/github.com/cheekybits/genny \
		choria-io:go-updater:v0.0.3:choria_io_go_updater/vendor/github.com/choria-io/go-updater \
		choria-io:provisioning-agent:v0.8.0:choria_io_provisioning_agent/vendor/github.com/choria-io/provisioning-agent \
		cloudevents:sdk-go:v1.2.0:cloudevents_sdk_go/vendor/github.com/cloudevents/sdk-go \
		dgrijalva:jwt-go:v3.2.0:dgrijalva_jwt_go/vendor/github.com/dgrijalva/jwt-go \
		dustin:go-humanize:v1.0.0:dustin_go_humanize/vendor/github.com/dustin/go-humanize \
		fatih:color:v1.9.0:fatih_color/vendor/github.com/fatih/color \
		fsnotify:fsnotify:v1.4.9:fsnotify_fsnotify/vendor/github.com/fsnotify/fsnotify \
		ghodss:yaml:v1.0.0:ghodss_yaml/vendor/github.com/ghodss/yaml \
		go-errors:errors:v1.0.1:go_errors_errors/vendor/github.com/go-errors/errors \
		go-tomb:tomb:dd632973f1e7:go_tomb_tomb/vendor/gopkg.in/tomb.v1 \
		go-yaml:yaml:v2.3.0:go_yaml_yaml/vendor/gopkg.in/yaml.v2 \
		gobwas:glob:v0.2.3:gobwas_glob/vendor/github.com/gobwas/glob \
		gofrs:uuid:v3.3.0:gofrs_uuid/vendor/github.com/gofrs/uuid \
		gogo:protobuf:v1.3.1:gogo_protobuf/vendor/github.com/gogo/protobuf \
		golang:crypto:70a84ac30bf9:golang_crypto/vendor/golang.org/x/crypto \
		golang:mock:v1.4.3:golang_mock/vendor/github.com/golang/mock \
		golang:mod:v0.2.0:golang_mod/vendor/golang.org/x/mod \
		golang:net:59133d7f0dd7:golang_net/vendor/golang.org/x/net \
		golang:protobuf:v1.4.2:golang_protobuf/vendor/github.com/golang/protobuf \
		golang:sys:f1bc736245b1:golang_sys/vendor/golang.org/x/sys \
		golang:text:v0.3.2:golang_text/vendor/golang.org/x/text \
		golang:tools:1fdcbd130028:golang_tools/vendor/golang.org/x/tools \
		golang:xerrors:9bdfabe68543:golang_xerrors/vendor/golang.org/x/xerrors \
		google:shlex:e7afc7fbc510:google_shlex/vendor/github.com/google/shlex \
		google:uuid:v1.1.1:google_uuid/vendor/github.com/google/uuid \
		gosuri:uilive:v0.0.3:gosuri_uilive/vendor/github.com/gosuri/uilive \
		gosuri:uiprogress:v0.0.1:gosuri_uiprogress/vendor/github.com/gosuri/uiprogress \
		guptarohit:asciigraph:v0.5.0:guptarohit_asciigraph/vendor/github.com/guptarohit/asciigraph \
		hashicorp:golang-lru:v0.5.1:hashicorp_golang_lru/vendor/github.com/hashicorp/golang-lru \
		huandu:xstrings:v1.3.0:huandu_xstrings/vendor/github.com/huandu/xstrings \
		imdario:mergo:v0.3.8:imdario_mergo/vendor/github.com/imdario/mergo \
		kballard:go-shellquote:95032a82bc51:kballard_go_shellquote/vendor/github.com/kballard/go-shellquote \
		konsorten:go-windows-terminal-sequences:v1.0.3:konsorten_go_windows_terminal_sequences/vendor/github.com/konsorten/go-windows-terminal-sequences \
		lightstep:tracecontext.go:1757c391b1ac:lightstep_tracecontext_go/vendor/github.com/lightstep/tracecontext.go \
		looplab:fsm:v0.1.0:looplab_fsm/vendor/github.com/looplab/fsm \
		mattn:go-colorable:v0.1.4:mattn_go_colorable/vendor/github.com/mattn/go-colorable \
		mattn:go-isatty:v0.0.11:mattn_go_isatty/vendor/github.com/mattn/go-isatty \
		mattn:go-runewidth:v0.0.4:mattn_go_runewidth/vendor/github.com/mattn/go-runewidth \
		matttproud:golang_protobuf_extensions:v1.0.1:matttproud_golang_protobuf_extensions/vendor/github.com/matttproud/golang_protobuf_extensions \
		mgutz:ansi:9520e82c474b:mgutz_ansi/vendor/github.com/mgutz/ansi \
		miekg:dns:v1.1.27:miekg_dns/vendor/github.com/miekg/dns \
		miekg:pkcs11:v1.0.3:miekg_pkcs11/vendor/github.com/miekg/pkcs11 \
		minio:highwayhash:v1.0.0:minio_highwayhash/vendor/github.com/minio/highwayhash \
		mitchellh:copystructure:v1.0.0:mitchellh_copystructure/vendor/github.com/mitchellh/copystructure \
		mitchellh:go-homedir:v1.1.0:mitchellh_go_homedir/vendor/github.com/mitchellh/go-homedir \
		mitchellh:go-wordwrap:v1.0.0:mitchellh_go_wordwrap/vendor/github.com/mitchellh/go-wordwrap \
		mitchellh:reflectwalk:v1.0.0:mitchellh_reflectwalk/vendor/github.com/mitchellh/reflectwalk \
		nats-io:jsm.go:v0.0.17:nats_io_jsm_go/vendor/github.com/nats-io/jsm.go \
		nats-io:jwt:473d698956ed:nats_io_jwt/vendor/github.com/nats-io/jwt \
		nats-io:nats-server:774da7f02108:nats_io_nats_server/vendor/github.com/nats-io/nats-server/v2 \
		nats-io:nats.go:fc6fed82929a:nats_io_nats_go/vendor/github.com/nats-io/nats.go \
		nats-io:nkeys:v0.2.0:nats_io_nkeys/vendor/github.com/nats-io/nkeys \
		nats-io:nsc:2aca79c9d220:nats_io_nsc/vendor/github.com/nats-io/nsc \
		nats-io:nuid:v1.0.1:nats_io_nuid/vendor/github.com/nats-io/nuid \
		nats-io:stan.go:v0.7.0:nats_io_stan_go/vendor/github.com/nats-io/stan.go \
		nxadm:tail:v1.4.4:nxadm_tail/vendor/github.com/nxadm/tail \
		oleiade:reflections:0e86b3c98b2f:oleiade_reflections/vendor/github.com/oleiade/reflections \
		onsi:ginkgo:v1.14.0:onsi_ginkgo/vendor/github.com/onsi/ginkgo \
		onsi:gomega:v1.10.1:onsi_gomega/vendor/github.com/onsi/gomega \
		open-policy-agent:opa:v0.21.0:open_policy_agent_opa/vendor/github.com/open-policy-agent/opa \
		opencontainers:runc:8779fa57eb4a:opencontainers_runc/vendor/github.com/opencontainers/runc \
		patrickmn:go-cache:v2.1.0:patrickmn_go_cache/vendor/github.com/patrickmn/go-cache \
		pkg:errors:v0.9.1:pkg_errors/vendor/github.com/pkg/errors \
		prometheus:client_golang:v1.7.1:prometheus_client_golang/vendor/github.com/prometheus/client_golang \
		prometheus:client_model:v0.2.0:prometheus_client_model/vendor/github.com/prometheus/client_model \
		prometheus:common:v0.10.0:prometheus_common/vendor/github.com/prometheus/common \
		prometheus:procfs:v0.1.3:prometheus_procfs/vendor/github.com/prometheus/procfs \
		rcrowley:go-metrics:3113b8401b8a:rcrowley_go_metrics/vendor/github.com/rcrowley/go-metrics \
		robfig:cron:v1.2.0:robfig_cron/vendor/github.com/robfig/cron \
		sirupsen:logrus:v1.6.0:sirupsen_logrus/vendor/github.com/sirupsen/logrus \
		tidwall:gjson:v1.6.0:tidwall_gjson/vendor/github.com/tidwall/gjson \
		tidwall:match:v1.0.1:tidwall_match/vendor/github.com/tidwall/match \
		tidwall:pretty:v1.0.1:tidwall_pretty/vendor/github.com/tidwall/pretty \
		uber-go:atomic:v1.6.0:uber_go_atomic/vendor/go.uber.org/atomic \
		uber-go:multierr:v1.1.0:uber_go_multierr/vendor/go.uber.org/multierr \
		uber-go:zap:v1.10.0:uber_go_zap/vendor/go.uber.org/zap \
		xeipuuv:gojsonpointer:02993c407bfb:xeipuuv_gojsonpointer/vendor/github.com/xeipuuv/gojsonpointer \
		xeipuuv:gojsonreference:bd5ef7bd5415:xeipuuv_gojsonreference/vendor/github.com/xeipuuv/gojsonreference \
		xeipuuv:gojsonschema:v1.2.0:xeipuuv_gojsonschema/vendor/github.com/xeipuuv/gojsonschema \
		yashtewari:glob-intersection:5c77d914dd0b:yashtewari_glob_intersection/vendor/github.com/yashtewari/glob-intersection

# These fails to be managed automagically

# Missing for some reason
GH_TUPLE+=	AlecAivazis:survey:v1.7.0:alecaivazis_survey_v1/vendor/github.com/AlecAivazis/survey \
		protocolbuffers:protobuf-go:v1.23.0:protocolbuffers_protobuf_go/vendor/google.golang.org/protobuf \
		rsc:goversion:v1.2.0:rsc_goversion/vendor/rsc.io/goversion
# Replaces docker/docker
GH_TUPLE+=	moby:moby:v1.13.1:moby_moby/vendor/github.com/moby/moby
# Extra /v2 at end of path
GH_TUPLE+=	nats-io:cliprompts:372d79b36768:nats_io_cliprompts/vendor/github.com/nats-io/cliprompts \
		nats-io:jwt:v1.0.1:nats_io_jwt_1/vendor/github.com/nats-io/jwt \

USE_RC_SUBR=	choria-broker choria-server

post-patch:
	${MKDIR} ${WRKSRC}/vendor/gopkg.in/AlecAivazis
	${LN} -sf ${WRKSRC}/vendor/github.com/AlecAivazis/survey ${WRKSRC}/vendor/gopkg.in/AlecAivazis/survey.v1

	# docker/docker is not moby/moby
	${MKDIR} ${WRKSRC}/vendor/github.com/docker
	${LN} -sf ${WRKSRC}/vendor/github.com/moby/moby ${WRKSRC}/vendor/github.com/docker/docker

	#${LN} -sf ${WRKSRC}/vendor/github.com/nats-io/cliprompts/v2/open_linux.go ${WRKSRC}/vendor/github.com/nats-io/cliprompts/v2/open_freebsd.go
	${REINPLACE_CMD} -e 's/{{cpkg_name}}/choria-broker/' \
		${WRKSRC}/packager/templates/debian/global/broker.conf
	${REINPLACE_CMD} -e 's/{{cpkg_name}}/choria-server/' \
		${WRKSRC}/packager/templates/debian/global/server.conf

do-maintainer-stuff: extract
	[ ! -d ${HOME}/go ]
	[ -z "$$(find files -name 'patch-plugin*')" ]
	cd ${GO_WRKSRC} && rm -r vendor && ${GO_CMD} generate
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
