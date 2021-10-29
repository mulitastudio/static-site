run:
	podman run --rm -it -v $(shell pwd):/src -p 1313:1313 nodeshark hugo server -w --bind=0.0.0.0
build:
	podman build -t nodeshark .	
release:
	rm -rf docs && podman run --rm -it -v $(shell pwd):/src static hugo --minify -d docs

