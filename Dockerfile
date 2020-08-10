FROM ubuntu

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y --no-install-recommends install texlive-latex-base make python3 texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra
