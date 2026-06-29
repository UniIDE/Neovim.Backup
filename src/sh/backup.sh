. var/var.sh


sync="rsync -avz --progress --delete"

locals(){
	mkdir -p $dir/.local/{share,state}
	$sync ~/.local/share/nvim $dir/.local/share/
	$sync ~/.local/state/nvim $dir/.local/state/
}

cache(){
	mkdir -p $dir/.cache
	$sync ~/.cache/nvim $dir/.cache
}

config(){
	# Usually this is kept in Source Control, and doesn't need to be backed up.
	
	mkdir -p $dir/.config
	$sync ~/.config/nvim $dir/.config
}

main(){
	locals
	cache
	#config
}

main
