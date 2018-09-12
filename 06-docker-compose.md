<!-- .slide: data-background="img/background-green-orig.jpg" -->

## Docker Compose

---
<!-- .slide: data-background="img/background-green-orig.jpg" -->

### Docker Compose??

<div class="fragment">
  Docker Compose is a Python wrapper around Docker
  <img src="./img/docker-compose-github.png" style="background-color:white">
</div>

---
<!-- .slide: data-background="img/background-green-orig.jpg" -->

### What does this provide?

<div class="fragment">
  Ideal environment for developers to prototype against
  <img src="./img/proto-man.png" style="background-color:white">
</div>

---
<!-- .slide: data-background="img/background-green-orig.jpg" -->

### What does this look like?

<div class="fragment">
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
          - ./run.sh:/run.sh
</div>

---
<!-- .slide: data-background="img/background-green-orig.jpg" -->

### Demo

docker-compose-0

---
<!-- .slide: data-background="img/background-green-orig.jpg" -->

### Summary

- &#x1f604; Easy                             <!-- .element: class="fragment" -->
- &#x1f604; Great for collaboration          <!-- .element: class="fragment" -->
- &#x1f604; Great as precursor for DevOps    <!-- .element: class="fragment" -->
- &#x1f914; Only run locally (no clustering) <!-- .element: class="fragment" -->
