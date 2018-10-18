HOSTOS:=$(shell go env GOHOSTOS)

SRC_DIR=./src
DEPS_C = $(SRC_DIR)/*.h $(SRC_DIR)/*.hpp $(SRC_DIR)/*.c
DEPS_GO = $(SRC_DIR)/*.go gen_header.go vendor

BUILD_MODE=-buildmode=c-shared
GO_BUILD=go build
CC_WIN64=x86_64-w64-mingw32-gcc
CC_WIN32=i686-w64-mingw32-gcc

GEN_HEADER=go run gen_header.go -o

ifeq ("$(HOSTOS)", 'windows')
CP_HEADERS=copy $(SRC_DIR)/libuast.hpp

else
CP_HEADERS=cp $(SRC_DIR)/libuast.hpp

endif

OUT_NAME=libuast
OUT_HEADER=$(OUT_NAME).h
OUT_DIR=build

DIR_LINUX=linux-amd64
DIR_OSX=darwin-amd64
DIR_WINDOWS=windows-amd64

OUT_LINUX=$(OUT_DIR)/$(DIR_LINUX)
OUT_OSX=$(OUT_DIR)/$(DIR_OSX)
OUT_WINDOWS=$(OUT_DIR)/$(DIR_WINDOWS)

ifeq ("$(HOSTOS)", "windows")
OUT_WINDOWS=$(OUT_DIR)\\$(DIR_WINDOWS)
endif

build: build-$(HOSTOS)

.PHONY: build-all
ifeq ("$(HOSTOS)", "linux")
build-all: build-linux build-windows

else ifeq ("$(HOSTOS)", "windows")
build-all: build-windows

else ifeq ("$(HOSTOS)", "darwin")
build-all: build-darwin

endif

.PHONY: vendor
vendor: Gopkg.*
	dep ensure --vendor-only

build-linux: $(DEPS_C) $(DEPS_GO)
	mkdir -p $(OUT_LINUX) && \
	GOOS=linux GOARCH=amd64 $(GO_BUILD) $(BUILD_MODE) -o=$(OUT_LINUX)/$(OUT_NAME).so $(SRC_DIR)/ && \
	$(GEN_HEADER) $(OUT_LINUX)/$(OUT_HEADER) && \
	$(CP_HEADERS) $(OUT_LINUX)/

build-darwin: $(DEPS_C) $(DEPS_GO)
	mkdir -p $(OUT_OSX) && \
	GOOS=darwin GOARCH=amd64 CGO_ENABLED=1 $(GO_BUILD) $(BUILD_MODE) -o=$(OUT_OSX)/$(OUT_NAME).so $(SRC_DIR)/ && \
	$(GEN_HEADER) $(OUT_OSX)/$(OUT_HEADER) && \
	$(CP_HEADERS) $(OUT_OSX)/


ifneq ("$(HOSTOS)", "windows")
build-windows: $(DEPS_C) $(DEPS_GO)
	mkdir -p $(OUT_WINDOWS)
	GOOS=windows GOARCH=amd64 CGO_ENABLED=1 CC=$(CC_WIN64) $(GO_BUILD) $(BUILD_MODE) -o=$(OUT_WINDOWS)/$(OUT_NAME).dll $(SRC_DIR)/
	$(GEN_HEADER) $(OUT_WINDOWS)/$(OUT_HEADER)
	$(CP_HEADERS) $(OUT_WINDOWS)/

else
build-windows: $(DEPS_C) $(DEPS_GO)
	mkdir -p $(OUT_WINDOWS)
	set GOOS=windows
	set GOARCH=amd64
	$(GO_BUILD) $(BUILD_MODE) -o=$(OUT_WINDOWS)\\$(OUT_NAME).dll $(SRC_DIR)/
	$(GEN_HEADER) $(OUT_WINDOWS)\\$(OUT_HEADER)
	$(CP_HEADERS) $(OUT_WINDOWS)\\

endif

package: package-$(HOSTOS)

ifeq ("$(HOSTOS)", "linux")
package-all: build-all package-linux package-windows

else ifeq ("$(HOSTOS)", "windows")
package-all: build-all package-windows

else ifeq ("$(HOSTOS)", "darwin")
package-all: build-all package-darwin

endif

package-linux: build-linux
	cd $(OUT_DIR) && \
	tar -czf libuast-linux-amd64.tar.gz $(DIR_LINUX)

package-darwin: build-darwin
	cd $(OUT_DIR) && \
	tar -czf libuast-darwin-amd64.tar.gz $(DIR_OSX)

package-windows: build-windows
	cd $(OUT_DIR) && \
	tar -czf libuast-windows-amd64.tar.gz $(DIR_WINDOWS)

.PHONY: gotest
gotest: $(DEPS_GO)
	go test -v $(SRC_DIR)/...

ifneq ("$(HOSTOS)", "darwin")
test: gotest
	cd tests && cmake . && make && CTEST_OUTPUT_ON_FAILURE=1 make test
else
test: gotest
	ln -s ../$(OUT_OSX)/libuast.so ./tests/libuast.so && \
	cd tests && cmake . && make && CTEST_OUTPUT_ON_FAILURE=1 make test
endif

all: build-all package-all

.PHONY: clean build test install

clean:
	rm -rf $(OUT_DIR)
