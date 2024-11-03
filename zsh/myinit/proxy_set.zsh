change_proxy() {
    if [ -z "$http_proxy" ] || [ -z "$https_proxy" ]; then
        export http_proxy='http://localhost:7890'
        export https_proxy='http://localhost:7890'
        echo 'proxy set at localhost:7890.'
    else
        http_proxy=''
        https_proxy=''
        echo 'proxy removed.'
    fi
}

# system must have proxy, if we don't need we can use change function to cancel.
if [[ -z "$http_proxy" || -z "$https_proxy" ]]; then
    export http_proxy='http://localhost:7890'
    export https_proxy='http://localhost:7890'
fi