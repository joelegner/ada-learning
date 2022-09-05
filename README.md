# ada-learning

## Engineering Units

<https://blog.marbu.eu/posts/2022-04-03-physicsal-units-in-programming/>

## Usage

```bash
$ ./bin/main
Pole Embedment Calculator in Ada 2012
=====================================
Enter force in kips: 24.3
24.30 kips
Enter height to force in feet: 30
30.00 feet
Ground-line moment: 729.0 kip-ft
```

You can also use it with an input file. Here is the contents of `input.txt`.

```
2
21
31
200
```

The usage changes to this:
```bash
$ ./bin/main < input.txt
...
```