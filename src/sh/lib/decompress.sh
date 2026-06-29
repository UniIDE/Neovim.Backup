. var/var.sh

decompress(){
	cd $dir
	tar xfvz $tar_file $bac
	echo "Backup Decompressed"
}
