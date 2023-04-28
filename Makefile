build:
	cd contracts && daml build
	cd contracts && daml codegen js -o artifacts/daml.js .daml/dist/*.dar
	cd contracts && daml damlc visual .daml/dist/daml-jobs-0.0.1.dar --dot artifacts/daml-jobs.dot
	cd contracts && dot -Tpng artifacts/daml-jobs.dot > artifacts/daml-jobs.png

deploy: build
	mkdir -p deploy
	cp contracts/.daml/dist/*.dar deploy

clean:
	cd contracts && rm -rf .daml
	cd contracts && rm -rf artifacts/
	rm -rf deploy
