. var/var.sh

compress(){
	cd $dir
	if [ ! -f $bac.tgz ];then
		tar cfvz $bac.tgz $bac
		echo "Backup Compressed"
	else
		echo "Existing Backup.tgz Delete to Recompress"
	fi
}
