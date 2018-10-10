# infrachallenge

Onan-asil tiny application for big impact.  Built upon two components linked to foundational development dating back to 1972.  Plus, shrink rays of course!

## Getting Started

Use the following steps to create your local dev environment. 

## Prerequisities

IDE of choice

Install local versions of the following:

- Python 3
- Postgres
- flask
- Node.js and React


## TL;DR - To quickly get up and running with minimal overhead
## Deploy on Ubuntu (18.04 supported)
Clone the repository locally and run the included shell scripts and artifacts.  (Wrapper for other environments will be considered based on developer demand)

### Install database
```
apt install -y postgresql postgresql-contrib
```
### Start postgres
```
/etc/init.d/postgresql start
```
(consider logs for help located here: /var/log/postgresql/postgresql*main.log)

