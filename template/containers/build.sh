# will always build a container with the latest release of bitcoind
docker build bitcoind -t bitcoind:latest && \
# will build lnd 0.4 beta and cherry pick some commits to support communication over docker containers
docker build lnd -t lnd:0.4-beta && \
# will build a base image containing the lncli command
docker build lapp_base -t lapp_base:latest && \

# will build your lightning app
docker build lapp -t lapp:latest