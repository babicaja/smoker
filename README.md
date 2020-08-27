# Smoker

Simple smoke test framework with Docker support based on [asm89/smoke.sh](https://github.com/asm89/smoke.sh)

## Introduction

Basic functionality from the original [asm89/smoke.sh](https://github.com/asm89/smoke.sh/blob/master/README.md) is extended by an ability to scrape relative `src` and `href` html tags by passing the [`-S`] and [`-H`] flag to the command

## Usage

You can run the `./smoker` script localy or using the docker image. In both cases the available options can be seen by passing the help [`-h`] flag

```
Run smoke tests against a resource.

Syntax: ./smoker [-h] [-d] [-S|H] <baseUrl> <page>

Options:

h     Print this help.
d     Output response body of base page and exit [debug]
S     Scrap all src html tags. Only relative paths will be scraped.
H     Scrap all href html tags. Only relative paths will be scraped.

Arguments:

baseUrsl    Root url used in smoke tests e.g. https://sectigo.com [required]
page        Specific page that needs to be scraped e.g. enterprise [default /]
```

## Example

For a manual run execute `./smoker -SH example.com page`  
Docker command `docker run --rm babicaja/smoker -SH example.com page`

This will test the `example.com/page` page for 2xx code and scrap all the `src` and `href` html tags and run 2xx checks on each of them.

\* Currently only the relative tags are scrapped
