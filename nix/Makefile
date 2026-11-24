.PHONY: all clean

all: update

update:
	home-manager switch --flake .#cjcocokrisp

clean:
	nix-collect-garbage -d
