# Construcción de imagen con podman a partir de imagen base que contiene OSE Tools sobre RHEL 9

## Comandos de interes

### Descarga de imagen base
```
$ podman login registry.redhat.io
$ podman pull registry.redhat.io/openshift4/ose-tools-rhel9:latest
```

### Construcción de imagen
```
$ cd <path donde se encuentra este README.md + archivo Containerfile>
$ podman build -f Containerfile -t ose-tools-and-podman-rhel9:latest
$ podman images
```
### Etiquetado de imagen para subirla a otro registro
```
$ podman tag localhost/ose-tools-and-podman-rhel9:latest <registry>/ose-tools-and-podman-rhel9:latest
$ podman images
$ podman push <registry>/ose-tools-and-podman-rhel9:latest
```
