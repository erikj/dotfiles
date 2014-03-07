# manifest for host air

import '../dotfile.pp'

$src_dir    = '/Users/molecule/Dropbox/projects/dotfiles'
$target_dir = '/Users/molecule'

dotfile { $shared_dotfiles :
  src_dir    => $src_dir,
  target_dir => $target_dir
}

$host_dotfiles = [ '.bashrc', '.gitconfig', '.powconfig' ]

dotfile { $host_dotfiles :
  src_dir => "$src_dir/air",
  target_dir => $target_dir
}
