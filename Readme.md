# Presentation: OC ACM: Docker, Approaching the Holy Grail of Software Distribution Pipelines

## Introduction

These are slides given to the OC ACM about Docker and how it's an ideal technology for Software Distribution Pipelines

## Contents

- [Start Slides](#start-slides)
- [Convert to PDF](#convert-to-pdf)

## Start Slides

```bash
./start.sh
```

## Convert to PDF

```bash
brew install imagemagick
npm install -g decktape

rm -rf screenshots
mkdir screenshots
decktape reveal --screenshots http://localhost:8002/\#/ slides.pdf
for f in screenshots/*.png; do mv "$f" "${f//slides_}"; done
for f in screenshots/*.png; do mv "$f" "${f//_1280x720}"; done
for f in screenshots/[0-9].png; do mv "$f" "${f//screenshots\//screenshots/0}"; done
convert screenshots/*.png slides.pdf
```