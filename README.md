# nxdev

Container with useful Development Tools

 - Python with commonly used Packages
 - NodeJS

## Run

```
docker run -it --rm nxware/nxdev
```

## Build (x64)

```
docker build . -t nxware/nxdev
```

```
docker push nxware/nxdev
```


### Raspberry Pi (arm64)

```
docker build . -t nxware/nxdev:arm64
```

```
docker push nxware/nxdev:arm64
```

## Systeme

 - rpi4