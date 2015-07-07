# lelk-docker

This is an example of running the following with docker: 

- logstash forward
- elasticsearch
- logstash
- kibana

I did this project as I had a heck of a time setting it up. I tried several different dockerfiles out there and most of them were out of date or not working. I especially suffered with the TLS issues caused by a change in go in version 1.3. Then I suffered because there is no offical docker repository for logstash forwarder. I tried several different dockerfiles out on github and none of them worked. Mostly because they were a year or so out of date. Also, the people who setup docker-compose to create it, didn't add in logstash forward. 

I decided that after working so hard to set it up, it'd be worth it to share in case anyone wants to take a look. 

A few differences in my version are: 

Docker services are split between data-containers and run-containers. 

Data containers are ment to hold persistant data, where as run-containers are ment to be restarted as needed.

There should be no links to the host once the data is created (though some port forwards are there which could be done away with).

If you have any questions, just let me know. 

