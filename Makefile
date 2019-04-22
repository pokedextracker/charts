DRY_RUN ?=

.PHONY: release
release:
ifndef chart
	$(error chart must be specified)
endif
ifndef version
	$(error version must be specified)
endif
	@echo "---> Creating v$(version) of $(chart)"
	sed -i "" "s/version: .*/version: $(version)/" src/$(chart)/Chart.yaml
	sed -i "" "s/appVersion: .*/appVersion: $(version)/" src/$(chart)/Chart.yaml
	helm package src/$(chart)
	helm repo index . --url https://pokedextracker.github.com/charts
ifndef DRY_RUN
	git add src/$(chart)/Chart.yaml $(chart)-$(version).tgz
	git commit -m 'release($(chart)): create v$(version)'
	git push origin master
else
	@echo "---> Would've run the following:"
	@echo "---> git add src/$(chart)/Chart.yaml $(chart)-$(version).tgz"
	@echo "---> git commit -m 'release($(chart)): create v$(version)'"
	@echo "---> git push origin master"
endif
