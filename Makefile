.PHONY: all clean compile generate deps

all: clean deps compile generate
	echo "Done"
clean:
	rm -rf rel/testapp

deps:
	rebar get-deps

compile: 
	rebar compile

generate:
	(cd rel && rebar generate)

console:
	./rel/testapp/bin/node console
