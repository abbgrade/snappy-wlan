GOPATH=$(shell pwd)
CONFIG=$/github.com/abbgrade/snappy-wlan-config

config-dependencies:
        go get github.com/abbgrade/snappy-wlan-config
        go get github.com/stretchr/testify/assert

config: config-dependencies

test: config
        cd ./src/$(CONFIG) && GOPATH=$(GOPATH) go test ./config/

clean:
        rm -rf pkg
        rm -rf snappy-wlan-config
        rm -rf src
        rm -rf bin
