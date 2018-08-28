# curl -v -H "X-Papertrail-Token: abc123" https://papertrailapp.com/api/v1/events/search.json?q=
# PAPERTRAIL_API_TOKEN=ffPbp3E11lyO98J17dGa papertrail handleerror
# https://github.com/papertrail/papertrail-cli#multiple-api-tokens

alias -r pt='pt-logs'
alias -r pta='pt-archive'

function pt-logs() {
    APP=$1
    shift
    PAPERTRAIL_API_TOKEN=$(heroku config:get PAPERTRAIL_API_TOKEN -a $APP) papertrail $*
}

function pt-archive() {
    APP=$1
    DATE=$2
    API_TOKEN=$(heroku config:get PAPERTRAIL_API_TOKEN -a $APP)
    curl --progress-bar -f --no-include -o ${APP}_${DATE}.tsv.gz -L -H "X-Papertrail-Token: $API_TOKEN" https://papertrailapp.com/api/v1/archives/$DATE/download
}
