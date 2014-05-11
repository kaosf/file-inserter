# File inserter

```bash
cat <<EOS > src.txt
d
e
f
EOS

cat <<EOS > target.txt
a
b
c
EOS

./insert-file-to-file src.txt target.txt 2

cat target.txt
# a
# d
# e
# f
# b
# c
```

## License

[MIT](http://opensource.org/licenses/MIT)

Copyright &copy; 2014 ka
