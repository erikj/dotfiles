# manifest for dotfiles: shared task and variables

# http://docs.puppetlabs.com/learning/definedtypes.html
# http://stackoverflow.com/questions/6399922/are-there-iterators-and-loops-in-puppet

define dotfile ($filename=$title, $src_dir, $target_dir) {

  # http://docs.puppetlabs.com/references/latest/type.html#file
  file { "$target_dir/${filename}":
    ensure => 'present',
    mode   => 644,
    source => "${src_dir}/$filename"
  }

}

$shared_dotfiles = [ '.ackrc', '.gitconfig.aliases', '.gitignore-global', '.my.cnf', '.psqlrc', '.railsrc', 'bashrc.common.sh', '.emacs', '.gemrc', '.irbrc', '.rvmrc', '.wgetrc' ]

$shared_osx_dotfiles = [ 'bashrc.osx.sh', '.hushlogin' ]

# dotfile { $host_dotfiles :
#   src_dir => "$src_dir/air",
#   target_dir => $target_dir
# }
