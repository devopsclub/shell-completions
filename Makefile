
completion:
	for script in tower-cli dzil cpanm jq lwp-request json_pp json_xs; do \
		echo $$script; \
		appspec completion specs/$$script.yaml --bash > bash/$$script.bash; \
		appspec completion specs/$$script.yaml --zsh > zsh/_$$script; \
	done

