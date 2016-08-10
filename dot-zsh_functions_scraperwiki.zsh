aws-env() {
    export AWS_REGION=$1 \
           AWS_DEFAULT_REGION=$1 \
           AWS_ACCESS_KEY_ID="$2" \
           AWS_SECRET_ACCESS_KEY="$3"
}

acquire-aws-creds() {
    aws-env eu-west-1 \
            $(secret-tool lookup scraperwiki aws-id) \
            $(secret-tool lookup scraperwiki aws-secret)
    echo -n "Enter token: "
    read TOKEN
    OUT=$(aws sts get-session-token \
              --serial-number $(secret-tool lookup scraperwiki aws-mfa-serial) \
              --token-code "$TOKEN")
    if [ -z "$OUT" ]; then
        return
    fi

    OUT=$(echo $OUT | jq -r '.Credentials as $c |
                           "AWS_ACCESS_KEY_ID="+$c.AccessKeyId+
                           " AWS_SECRET_ACCESS_KEY="+$c.SecretAccessKey+
                           " AWS_SESSION_TOKEN="+$c.SessionToken')
    # Lack of quotes intentional.
    eval "export $OUT"
}
