FROM ocaml/opam

# update opam
RUN cd /home/opam/opam-repository && git pull origin master
RUN opam update

# switch ocaml version
RUN opam init
RUN eval `opam config env`
