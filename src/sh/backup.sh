. lib/var/var.sh
. lib/compress.sh

sync="rsync -avz --progress --delete"

locals(){
	mkdir -p $bac_dir/.local/{share,state}
	$sync ~/.local/share/nvim $bac_dir/.local/share/
	$sync ~/.local/state/nvim $bac_dir/.local/state/
}

cache(){
	mkdir -p $bac_dir/.cache
	$sync ~/.cache/nvim $bac_dir/.cache
}

config(){
	# Usually this is kept in Source Control, and doesn't need to be backed up.
	
	mkdir -p $bac_dir/.config
	$sync ~/.config/nvim $bac_dir/.config
}

main(){
	locals
	cache
	#config
	compress
}

main
