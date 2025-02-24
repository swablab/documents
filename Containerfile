FROM docker.io/library/alpine AS build
ENV TYPST_FONT_PATHS=.
RUN apk add typst
RUN wget -O ubuntu.ttf https://cdn.jsdelivr.net/fontsource/fonts/ubuntu@latest/latin-400-normal.ttf &&\
    wget -O noto.ttf https://cdn.jsdelivr.net/fontsource/fonts/noto-sans@latest/latin-400-normal.ttf
RUN typst c 3d-druck-agb.typ &&\
    typst c beitragsordnung.typ &&\
    typst c beleg.typ &&\
    typst c datenschutz.typ &&\
    typst c haftungsausschluss.typ &&\
    typst c mitgliedsantrag.typ &&\
    typst c satzung.typ &&\
    typst c werkstatt-agb.typ &&\
    typst c werkstatt-regeln.typ

FROM scratch
COPY --from=build *.pdf .