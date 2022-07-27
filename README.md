![](img/sbom128x128.png)

# sbom-release-example

[![Go Report Card](https://goreportcard.com/badge/github.com/djschleen/sbom-release-example)](https://goreportcard.com/report/github.com/djschleen/sbom-release-example)

An example project that demonstrates how to automate a release with SBOM generation using Syft.

## Tutorial

There is a tutorial video available on my Youtube channel. Check it out for a step-by-step walk through on how to create an automated release with SBOM Generation.

## Quickstart

After cloning this repository, you should be good to go and can just run ```make build``` to make the ```sbom-release-example``` binary. 

To test, run the following in your local repository folder:

``` bash
./sbom-release-example hello
```

## Initializing Hookz

This repository has a pre-commit action pipeline in it that can be used with [Hookz](https://github.com/devops-kung-fu/hookz). Use the instructions there to install the ```hookz``` command and then execute the following in your local repository folder:

``` bash
hookz init --verbose --verbose-output
```
Now you will have a pre-commit action pipeline that checks go code quality, lints, runs cyclomatic complexity checks, and runs test cases before any code gets committed to the remote repository. If there is a problem, ```hookz``` will stop the commit process and let you address issues.

## Credits

A big thank-you to our friends at [Freepik](https://www.flaticon.com/authors/freepik) for the ```bomb``` logo.
