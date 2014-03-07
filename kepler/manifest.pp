# manifest for host kepler

import '../dotfile.pp'

$src_dir    = '/Users/ej/Dropbox/projects/dotfiles'
$target_dir = '/Users/ej'

dotfile { $shared_dotfiles :
  src_dir    => $src_dir,
  target_dir => $target_dir
}

$host_dotfiles = [ '.bashrc', '.gitconfig', '.powconfig' ]

dotfile { $host_dotfiles :
  src_dir => "$src_dir/kepler",
  target_dir => $target_dir
}
