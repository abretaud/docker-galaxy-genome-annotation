# Galaxy - Genome Annotation Suite
FROM quay.io/bgruening/galaxy:20.05

WORKDIR /galaxy-central

# install-repository sometimes needs to be forced into updating the repo
ENV GALAXY_CONFIG_CONDA_AUTO_INSTALL=True \
	GALAXY_CONFIG_CONDA_AUTO_INIT=True \
	ENABLE_TTS_INSTALL=True \
	GALAXY_CONFIG_BRAND="Genome Annotation"

ENV GALAXY_WEBAPOLLO_URL="http://apollo:8080/apollo" \
    GALAXY_WEBAPOLLO_USER="admin@local.host" \
    GALAXY_WEBAPOLLO_PASSWORD=password \
    GALAXY_WEBAPOLLO_EXT_URL="/apollo" \
    GALAXY_SHARED_DIR="/apollo-data" \
    GALAXY_JBROWSE_SHARED_DIR="/jbrowse/data" \
    GALAXY_JBROWSE_SHARED_URL="/jbrowse" \
    GALAXY_TRIPAL_URL="http://tripal/tripal/" \
    GALAXY_TRIPAL_USER="admin" \
    GALAXY_TRIPAL_PASSWORD="changeme" \
    GALAXY_TRIPAL_SHARED_DIR="/tripal-data" \
    GALAXY_CHADO_DBHOST="chado" \
    GALAXY_CHADO_DBNAME="postgres" \
    GALAXY_CHADO_DBPASS="postgres" \
    GALAXY_CHADO_DBUSER="postgres" \
    GALAXY_CHADO_DBSCHEMA="public" \
    GALAXY_CHADO_DBPORT="5432" \
    ENABLE_FIX_PERMS=1
