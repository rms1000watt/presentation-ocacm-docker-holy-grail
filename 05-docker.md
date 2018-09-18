<!-- .slide: data-background="img/background-violet-orig.jpg" -->

## Docker

---
<!-- .slide: data-background="img/background-violet-orig.jpg" -->

### Abstractions

- Circuits abstracted away the physics of electrons in condensed matter <!-- .element: class="fragment" -->
- Hardware abstracted away circuits and their components <!-- .element: class="fragment" -->
- Operating systems abstracted away hardware             <!-- .element: class="fragment" -->
- Docker abstracts away operating systems                <!-- .element: class="fragment" -->

---
<!-- .slide: data-background="img/background-violet-orig.jpg" -->

### Docker

<img src="./img/docker-anywhere.png" height=600 style="background-color:white"> <!-- .element: class="fragment" -->

---
<!-- .slide: data-background="img/background-violet-orig.jpg" -->

### Why is this Important?

<div class="fragment">
  <img src="./img/bezos-stubborn-flexible.png" height=500 style="background-color:white">
  <small>https://curiosity.com/topics/these-are-the-5-keys-to-success-in-business-according-to-billionaire-jeff-bezos-curiosity/</small>
</div>

---
<!-- .slide: data-background="img/background-violet-orig.jpg" -->

### Flexibility

- Business requirements are going to fluctuate, so your engineering practices have to be adept at handling these changes  <!-- .element: class="fragment" -->
- With abstractions at the proper places, changes can occur to sub systems and not affect your distribution pipeline  <!-- .element: class="fragment" -->
- With Docker, you can write your code once and feel comfortable it will work in a majority of environments <!-- .element: class="fragment" -->

---
<!-- .slide: data-background="img/background-violet-orig.jpg" -->

### How do I get started?

<div class="fragment">
<br/>
- Download: [docker.com/get-started](https://www.docker.com/get-started)
</div>

<div class="fragment">
<br/>
- Play: [katacoda.com/courses/docker](https://www.katacoda.com/courses/docker)
</div>

---
<!-- .slide: data-background="img/background-violet-orig.jpg" -->

### Demos

    docker run hello-world

---
<!-- .slide: data-background="img/background-violet-orig.jpg" -->

### Demos

    docker run -p 5678:5678 hashicorp/http-echo -text="hello world"

---
<!-- .slide: data-background="img/background-violet-orig.jpg" -->

### Demos

    GOOS=linux go build -o hello-world
    docker build -t hello-world-server .
    docker run -it --rm -p 8080:8080 hello-world-server

`Dockerfile`

    FROM scratch
    COPY hello-world /hello-world
    CMD ["/hello-world"]

---
<!-- .slide: data-background="img/background-violet-orig.jpg" -->

### Docker

<div class="fragment">
    Docker helps teams across the board develop, manage, and deploy their applications<br>
    <img src="./img/docker-all-the-things.png" style="background-color:white">
</div>
