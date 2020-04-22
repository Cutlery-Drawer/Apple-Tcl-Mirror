all:
	wget --no-server-response --no-adjust-extension -nv -x -i files.txt
	mv opensource*/source .
	rmdir opensource*
