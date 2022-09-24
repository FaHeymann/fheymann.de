build:
	rm -r public/* || true
	hugo -D

deploy: build
	aws s3 sync --delete public s3://fh-website-content
