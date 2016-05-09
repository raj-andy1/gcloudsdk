include gcloudsdk

class { 'gcloudsdk':
  version   => '70',
  install_path => 'test'
}