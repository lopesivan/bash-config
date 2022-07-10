#ulimit -n 4096
source "$HOME/.bashrc"

if [ -e /home/ivan/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ivan/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# opam configuration
test -r /home/ivan/.opam/opam-init/init.sh && . /home/ivan/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
