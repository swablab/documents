FROM docker.io/library/golang:alpine as server
WORKDIR /go/src/app
COPY ./server /go/src/app/
RUN go mod download
RUN go build -o /go/bin/server

FROM docker.io/library/alpine
WORKDIR /app
COPY . .
ENV TYPST_FONT_PATHS=.
RUN apk add --no-cache typst
RUN wget -O ubuntu.ttf https://cdn.jsdelivr.net/fontsource/fonts/ubuntu@latest/latin-400-normal.ttf &&\
    wget -O noto.ttf https://cdn.jsdelivr.net/fontsource/fonts/noto-sans@latest/latin-400-normal.ttf
RUN typst c 3d-druck-agb.typ &&\
    typst c beitragsordnung.typ &&\
    typst c beleg.typ &&\
    typst c datenschutz.typ &&\
    typst c haftungsausschluss.typ &&\
    typst c mitgliedsantrag.typ &&\
    typst c satzung.typ &&\
    typst c verschwiegenheitserklärung.typ &&\
    typst c werkstatt-agb.typ &&\
    typst c werkstatt-regeln.typ
RUN set -e; \
    for file in operating_instructions/*.typ; do \
    typst c --root . "$file"; \
    done

COPY --from=server /go/bin/server /bin/server
CMD ["/bin/server"]
