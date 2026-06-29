. lib/var/var.sh
. lib/decompress.sh
. lib/backup_volume.sh

sync="rsync -avz --progress --delete"

locals(){
	mkdir -p ~/.local/{share,state}
	$sync $bac_dir/.local/share/nvim ~/.local/share/
	$sync $bac_dir/.local/state/nvim ~/.local/state/ 
}

cache(){
	mkdir -p ~/.cache
	$sync $bac_dir/.cache/nvim ~/.cache
}

config(){
	# Usually this is kept in Source Control, and doesn't need to be backed up.
	
	mkdir -p ~/.config
	$sync $bac_dir/.config/nvim ~/.config
}

git_config(){
	mkdir -p $uni_src
	cd $uni_src
	if [ ! -d Neovim.Config.Template ];then
		git clone https://github.com/UniIDE/Neovim.Config.Template.git
	fi
	cd $uni_src/Neovim.Config.Template
	./init.sh
}

main(){
	from_backup_volume
	decompress
	locals
	cache
	git_config
	#config
}

main
