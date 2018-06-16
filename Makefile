.PHONY: all hello-world

all: hello-world
	@echo "All"

hello-world:
	@awk -f hello-world.awk
