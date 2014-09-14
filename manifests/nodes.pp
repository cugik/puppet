node 'cookbook', 'ubuntu-client' {
  file  { '/tmp/hello':
    content => "Helloooo\n",
  }
}

