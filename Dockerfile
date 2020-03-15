FROM ubuntu:xenial
MAINTAINER Pete Wilcox <petercwilcox@gmail.com>

RUN apt-get -yq update && \
    apt-get install -qy --fix-missing \
        texlive-generic-extra \
        texlive-fonts-extra \
        chktex \
        texlive \
        texlive-latex-extra \
        texlive-math-extra \
        texlive-science \
        python-pygments \
        texlive-xetex \
        texlive-pictures \
        texlive-publishers \
        texlive-bibtex-extra make && \
    apt-get -yq autoremove && \
    apt-get clean -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
