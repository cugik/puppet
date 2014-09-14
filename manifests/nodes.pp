node 'cookbook' {
  file  { '/tmp/hello':
    content => "Helloooo\n",
  }
}

