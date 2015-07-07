
pushd .

if [ ! -f certs ]; then
	mkdir certs;
fi

cd certs

openssl req -x509 -batch -nodes -newkey rsa:2048 -keyout logstash-forwarder.key -out logstash-forwarder.crt -subj /CN=logstash;

cd .. 
cp -R certs ./logstash/run-container/.
cp -R certs ./logstash_forwarder/run-container/.


ls -la ./logstash/run-container/certs/.
ls -la ./logstash_forwarder/run-container/certs/.

popd

