## MaxEntScan Server to get MaxEntScores
The files to compute score are taken from [mit.edu](http://hollywood.mit.edu/burgelab/maxent/download/fordownload/)
<br>
I have modified them slightly to make them work asynchrnously while integrating with mojolicious.

### Usage
* Make sure Docker is installed in your machine or you can see the Docker file to see the build and run commands
* Build the image using build.sh
* Start the server/docker using run.sh
* The server start in port 1211. But can be changes while running the docker in `run.sh`

### Testing
Use `curl` or `httpclient` or `browser`
<br>
`curl http://localhost:1211/score5?sequence=CCAgtacaa`  --> returns __-4.94209399585755__
`curl http://localhost:1211/score3?sequence=ctctactactatctatctagatc`  --> returns __6.70694694535309__

<br>
> Routes: score3 and score5<br>
> parameters: sequence
