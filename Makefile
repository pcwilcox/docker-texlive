TAG           = "latest"
USER          = "petewilcox"
REPO          = "texlive"

default: build

build:
	docker build --rm -t ${USER}/${REPO}:${TAG} .

update: build
	docker push ${USER}/${REPO}:${TAG}
