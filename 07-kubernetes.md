<!-- .slide: data-background="img/background-orange-orig.jpg" -->

## Kubernetes

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### What is Kubernetes?

<div class="fragment">
  <img src="./img/kubernetes-intro.png" style="background-color:white">
</div>

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### Kubernetes Origin

<div class="fragment">
  Kubernetes was birthed at Google as the third iteration of their container management systems<br>
  <img src="./img/borg-omega-kubernetes.png" style="background-color:white">
  <small>https://ai.google/research/pubs/pub44843</small>
</div>

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### Who uses Kubernetes?

<div class="fragment">
  <img src="./img/kubernetes-users.gif" style="background-color:white">
</div>

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### Pokémon Go

<img src="./img/pokemon-go-kubernetes-partial.png" style="background-color:white"> <!-- .element: class="fragment" -->

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### Pokémon Go

<img src="./img/pokemon-go-kubernetes-full.png" style="background-color:white">
<small>https://cloudplatform.googleblog.com/2016/09/bringing-Pokemon-GO-to-life-on-Google-Cloud.html</small>

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### Kubernetes System

<img src="./img/kubernetes-cluster-diagram.png" style="background-color:white"> <!-- .element: class="fragment" -->

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### Kubernetes Components

<img src="./img/kubernetes-components-1.jpeg" height=500 style="background-color:white"> <!-- .element: class="fragment" -->

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### Kubernetes Components

<img src="./img/kubernetes-components-2.jpeg" height=500 style="background-color:white"> <!-- .element: class="fragment" -->

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### Running Kubernetes in the Cloud

<img src="./img/k8s-clouds.png" style="background-color:white"> <!-- .element: class="fragment" -->

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### Running Kubernetes Locally

<div class="fragment">
  Just install Docker for Windows/OS X
  <img src="./img/k8s-docker-for-mac.png" height=500 style="background-color:white">
</div>

---
<!-- .slide: data-background="img/background-orange-orig.jpg" -->

### Kubernetes Configuration

    apiVersion: apps/v1
    kind: Deployment
    metadata:
      name: test-echo
    spec:
      selector:
        matchLabels:
          app: test-echo
      replicas: 2
      template:
        metadata:
          labels:
            app: test-echo
        spec:
          containers:
          - name: test-echo
            image: rms1000watt/dummy-golang-project
    --
    apiVersion: v1
    kind: Service
    metadata:
      name: test-echo
    spec:
      type: LoadBalancer
      ports:
      - port: 80
        targetPort: 9999
        protocol: TCP
      selector:
        app: test-echo

