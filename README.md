# README

This is an experimental prototype for indexing [ClinVar](https://www.ncbi.nlm.nih.gov/clinvar/) data into [Blacklight](http://projectblacklight.org)

This project takes data downloaded from the [NCBI FTP Site](ftp://ftp.ncbi.nlm.nih.gov/), indexes that data into solr, and provides a Blacklight based interface for interacting with the data.

## Getting the Data
`$ ftp ftp.ncbi.nlm.nih.gov/`
(enter 'anonymous' for the login and your email address for the password)
```
ftp > cd pub/clinvar/xml
ftp > get ClinVarFullRelease_00-latest.xml.gz
ftp > exit
$ gunzip ClinVarFullRelease_00-latest.xml.gz
```
## Requirements
* Ruby 2.3
* Blacklight 6
* Ruby gems documented via Gemfile

## Tests
* Run `rake spec` to run tests
* CI build via travis-ci.org

To do:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
