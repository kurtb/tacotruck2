Simpler way to build the [tacotron2](https://github.com/NVIDIA/tacotron2) Dockerfile

Pulls in apex and tacotron2 as submodules and provides a Dockerfile that enables building and developing of both of them

## Building

1. `git submodule update --init --recursive`
2. Download the published [Tacotron 2] model
3. Download the published [WaveGlow] model
4. Copy both into the root tacotruck2 directory
5. `docker build -t tacotruck2 .`

## Jupyter

docker run --rm -it --gpus all -p 3000:3000 tacotruck2 jupyter notebook --ip=0.0.0.0 --port=3000 --allow-root

## TODO

Would be great if could wget/curl the google doc links, or possibly even check them in to the repo

[WaveGlow]: https://drive.google.com/open?id=1rpK8CzAAirq9sWZhe9nlfvxMF1dRgFbF
[Tacotron 2]: https://drive.google.com/file/d/1c5ZTuT7J08wLUoVZ2KkUs_VdZuJ86ZqA/view?usp=sharing
