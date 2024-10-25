FROM squidfunk/mkdocs-material:latest
COPY requirements.txt ./
RUN apk add --no-cache g++ gobject-introspection pango-dev cairo-dev py3-cffi
RUN pip install -U -r requirements.txt
RUN addgroup -g 127 docker && adduser -h /docs -D -u 1001 runner -G docker
USER runner
