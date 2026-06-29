rsync_volume="rsync -av --checksum --progress --no-perms --no-owner --no-group" 

from_backup_volume(){
	$rsync_volume $backup_volume/$tar_file $dir/
	echo "Synced to Backup Volume"
}

to_backup_volume(){
	$rsync_volume $dir/$tar_file $backup_volume/
	echo "Synced to Backup Volume"
}
