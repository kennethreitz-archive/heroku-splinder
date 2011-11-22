build:
	curl -O http://rsync.samba.org/ftp/rsync/rsync-3.0.9.tar.gz
	tar xvfz rsync-3.0.9.tar.gz
	cd rsync-3.0.9 && ./configure --prefix=/app/ && make && make install

	./get-wget-warc.sh


run:
	./dld-streamer.sh kennethreitz 60

upload:
	PATH=bin:/usr/local/bin:/usr/bin:/bin:/app/bin/ ./upload-finished.sh batcave.textfiles.com::kenneth/splinder/

all: build run upload
