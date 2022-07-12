
export SPARROW_LAB_NAME="Sparrow Test Lab"

# Change the SPARROW_ENV to production for smaller development bundles
export SPARROW_ENV="development"
export COMPOSE_PROJECT_NAME="sparrow_test"

# Find plugins and overrides
export SPARROW_PLUGIN_DIR="$SPARROW_CONFIG_DIR/backend-plugins"
export SPARROW_SITE_CONTENT="$SPARROW_CONFIG_DIR/frontend-plugins"

export SPARROW_SECRET_KEY="testkey"
export SPARROW_ENV="production"
# Required for default maps. Mapbox's APIs have a generous free tier.
export MAPBOX_API_TOKEN="pk.eyJ1IjoiamN6YXBsZXdza2kiLCJhIjoiY2tnaHM0NW9rMWVlZDJ5cGQ2cmNxM3V0NSJ9.GRNBlLxE_7SBXFFvzJdv4w"

export SPARROW_DB_PORT=54391
export SPARROW_HTTP_PORT=5099

export SPARROW_COMPOSE_OVERRIDES="/projects/sparrow-data.org/test-lab-override.yaml:$SPARROW_CONFIG_DIR/addons/docker-compose.pgweb.yaml"
# Disable broker and worker because of networking conflicts
export SPARROW_TASK_WORKER=0
export SPARROW_BASE_URL="/labs/basic-test/"

# Get "secret" config values from an overrides file, if applicable.
overrides="$SPARROW_CONFIG_DIR/sparrow-config.overrides.sh"
[ -f "$overrides" ] && source "$overrides"
