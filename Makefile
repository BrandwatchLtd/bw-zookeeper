ZOOKEEPER_VERSION := 3.4.14
BUILD := local
BUILD_TAG := ${ZOOKEEPER_VERSION}-bwbuild${BUILD}
RELEASE_TAG := releases/bw-zookeeper-build/${BUILD_TAG}

.PHONY: package
package:
	ant tar

.PHONY: clean
clean:
	ant clean

ifdef GITHUB_ENV
.PHONY: get-tag
get-tag:
	@echo "BUILD_TAG=${BUILD_TAG}"
	@echo "RELEASE_TAG=${RELEASE_TAG}"
endif
