# server-buckup

A server application to create backups and basic audit in a Local Network

## Installation

The project is divided into 2 sections, one is a REST Api, for the api is supported by a project already created which is: https://github.com/antoniosarosi/home-cloud

For the script, you can: 
```
    $ clone https://github.com/rogelioTrejo1/server-backup.git
    $ cd server-backup
```

## Running
For the execution of the script, you will have the following form: 
```
    $ sh src/cp.sh [directory] [url server]
```
where: 
* directoy: directory to be backed up, this is taken from the User Box.
* url server: Rest API server, example: http:localhost:5000/upload
