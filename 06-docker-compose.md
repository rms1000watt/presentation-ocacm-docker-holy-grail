<!-- .slide: data-background="img/background-green-orig.jpg" -->

## Docker Compose

---
<!-- .slide: data-background="img/background-green-orig.jpg" -->

### What is Docker Compose?

Docker Compose lets your organize and manage a collection of Docker Containers on your machine   <!-- .element: class="fragment" -->
<img src="./img/docker-compose-github.png" style="background-color:white">   <!-- .element: class="fragment" -->

---
<!-- .slide: data-background="img/background-green-orig.jpg" -->

### Why is this Important?

<div class="fragment">
  Ideal environment for developers to prototype against (no bash scripts) <br>
  <img src="./img/proto-man.png" height="500" style="background-color:white">
</div>

---
<!-- .slide: data-background="img/background-green-orig.jpg" -->

### What does this look like?

    version: '3'
    services:
      hello-world:
        environment:
          KEY1: val1
          KEY2: val2
        image: hello-world-server
        ports:
          - 8080:8080
        volumes:
          - /tmp:/tmp

---
<!-- .slide: data-background="img/background-green-orig.jpg" -->

### Demo

Docker Compose

---
<!-- .slide: data-background="img/background-green-orig.jpg" -->

### Docker Compose

The only catch is.. Docker Compose only runs locally
![Docker Compose locally](./img/containers-fall-over.jpg) <!-- .element: class="fragment" -->
