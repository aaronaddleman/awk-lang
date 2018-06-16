data := data/rows.csv

.PHONY: all hello-world total-column stats

all: hello-world total-column total-population stats
	@echo "All"

hello-world:
	@awk -f hello-world.awk

total-column:
	@awk -F, '{print $2}' $(data)

total-population:
	@awk -F, -f total.awk $(data)

stats:
	@awk -F, -f stats.awk $(data)
