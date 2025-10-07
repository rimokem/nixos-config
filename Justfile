# just is a command runner, Justfile is very similar to Makefile, but simpler.

deploy:
  nixos-rebuild switch --flake .#desktop --sudo

debug:
  nixos-rebuild switch --flake . --use-remote-sudo --show-trace --verbose

up:
  sudo nix flake update

clean:
  # remove all generations older than 7 days
  sudo nix profile wipe-history --profile /nix/var/nix/profiles/system  --older-than 7d

gc:
  # garbage collect all unused nix store entries
  sudo nix-collect-garbage --delete-old
