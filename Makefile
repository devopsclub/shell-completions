
completion:
	for script in tower-cli dzil; do \
		echo $$script; \
		appspec completion specs/$$script.yaml --bash > bash/$$script.bash; \
		appspec completion specs/$$script.yaml --zsh > zsh/_$$script; \
	done
