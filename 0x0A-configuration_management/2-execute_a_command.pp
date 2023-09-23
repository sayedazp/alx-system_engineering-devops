# puppet manifest to kill a process

exec { 'process kill killmenow':
  path    => '/usr/bin/',
  command => 'pkill -f killmenow',
}
