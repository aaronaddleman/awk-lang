.PHONY: all hello-world total-column

all: hello-world total-column
	@echo "All"

hello-world:
	@awk -f hello-world.awk

total-column:
	@awk -F, '{print $2}' data/rows.csv

total-population:
	@awk -F, -f total.awk data/rows.csv
