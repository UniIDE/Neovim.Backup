. var/var.sh

compress(){
	cd $dir
	if [ ! -f $tar_file ];then
		tar cfvz $tar_file $bac
		echo "Backup Compressed"
	else
		echo "Existing Backup.tgz Delete to Recompress"
	fi
}
