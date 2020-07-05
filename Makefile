build: build/Release/MinimalBug

build/Release/MinimalBug: MinimalBug/main.swift
	xcodebuild

app: build
	open MinimalBug.app

run: build
	./build/Release/MinimalBug

clean:
	rm -rf build
