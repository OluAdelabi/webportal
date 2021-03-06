## Overview

This is the public repo for the Detroit Black Tech website.  The staging branch is rebuilt each time a pull request is approved.  
The web address to the staging server is [http://staging.detroitblacktech.org](http://staging.detroitblacktech.org).  Note, once a rebuild is triggered, it may take a few minutes
for the web address to be re-assigned to the web address.  We are using a concept called immutable infrastructure.  This basically means that
we rebuild the server each time a new change is committed versus trying to upgrade or migrate the existing version.

## Setting up a Development Environment

Please ensure docker is installed on your computer

### Clone the repo
```
git clone https://github.com/detroitblacktech/webportal -b staging
cd webportal

```

#### Using on Mac  
```
./deploy.sh Docker dev
```

#### Using on PC (haven't tested on PC - please fix)
```
docker build -t dsiprouter .
docker rm -f dsiprouter-app
docker run -p 80:80 -dit --restart always -v $PATH:/usr/src/dbt --name dsiprouter-app  dsiprouter
```

### Access the Website Local

- Open a Web Browser
- Enter http://localhost


### Making Changes

Use your favorite editor to open up the files under the webportal directory.  Any change you make should show up when you access it via
your local browser

The application is built using the Python Flask Architecture.  Here are couple of tip about the files/directories

- static: all static content is located here (images, css, js)
- templates: all of the HTML that makes up the site is there.  The main layout is in a file called layout.html.  All new pages should inherit from that pages
- app.py:  the main Python script that handles the routing of requests
- terraform: contains the terraform scripts to provision to DigitalOcean, which is where our servers exists


### Commit Changes

Once changes are committed and approved the staging server will automatically be rebuilt within a few minutes.
You can check [http://staging.detroitblacktech.org](http://staging.detroitblacktech.org)

### Promotion to production

We will start rebuilding production every night starting Nov 1, 2019.  This means, any approved pull requests in staging will be integrated into
production every night.

Please don't confuse this with staging.  The staging server will be rebuilt each time an approved pull requests occurs.  Pull requests in staging will
have to be approved by another member of the group.  

To be clear, pull requests on the master branch will not be accepted.  We only accept pull requests on the staging branch.


### Issues or Questions

Join the Detroit Black Tech #website_dev_team

Have Fun - This is a great way to learn and contribute to the group.
