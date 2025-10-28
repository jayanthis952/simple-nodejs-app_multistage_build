FROM ubuntu:24.04
RUN apt update -y && apt install curl unzip -y \
&& curl -fsSL https://fnm.vercel.app/install | bash -s -- --install-dir './fnm' \
&& cp ./fnm/fnm /usr/bin && fnm install $version
ENTRYPOINT tail -f /dev/null


