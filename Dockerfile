FROM squidfunk/mkdocs-material:latest
COPY requirements.txt ./
RUN apk add --no-cache \
  cairo-dev \
  font-noto \
  g++ \
  gcc \
  gobject-introspection \
  harfbuzz-subset \
  jpeg-dev \
  libffi-dev \
  musl-dev \
  openjpeg-dev \
  pango \
  pango-dev \
  py3-cffi \
  py3-pip \
  python3-dev \
  pydyf \
  ttf-dejavu \
  ttf-freefont \
  weasyprint \
  zlib-dev
RUN pip install -U -r requirements.txt
RUN addgroup -g 127 docker && adduser -h /docs -D -u 1001 runner -G docker
USER runner
