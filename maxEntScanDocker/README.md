```bash
curl -L https://cpanmin.us | perl - -M https://cpan.metacpan.org -n Mojolicious --sudo
```


Default maximim connections 1000. 1000 will be handled concurrently.
```perl
my $max = $loop->max_connections;
$loop   = $loop->max_connections(100);
```

`hypnotoad test.pl`
