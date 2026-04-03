run: kill
	python3 -m http.server $(PORT) & open -a "Google Chrome" http://localhost:$(PORT)/play.html

kill:
	lsof -nti:$(PORT) | xargs kill -9



PORT := 4242
ifeq (run, $(firstword $(MAKECMDGOALS)))
  RUN_ARGS := $(wordlist 2,$(words $(MAKECMDGOALS)),$(MAKECMDGOALS))
  $(eval $(RUN_ARGS):;@:)
endif
