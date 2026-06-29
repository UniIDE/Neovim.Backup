from_backup_volume(){
	rsync -av --progress --no-perms --no-owner --no-group $backup_volume/$tar_file $dir/
	echo "Synced to Backup Volume"
}

to_backup_volume(){
	rsync -av --progress --no-perms --no-owner --no-group $dir/$tar_file $backup_volume/
	echo "Synced to Backup Volume"
}
