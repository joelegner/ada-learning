# Introduction

This is Joe Legner's foray into Ada 2012 programming.

# Embed

## Engineering Units

<https://blog.marbu.eu/posts/2022-04-03-physicsal-units-in-programming/>

## Usage

```bash
$ ./bin/embed
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
$ ./bin/embed < input.txt
...
```

# Roll_Dice

This will roll the dice 100,000 times and tell you the percent that each number is rolled and the cumulative percent of the numbers up to and including that one.

```bash
$ .roll_dice
 100000 random numbers between  2 and  12:
Combo  2:  2.8%  2.8%
Combo  3:  5.5%  8.3%
Combo  4:  8.1% 16.4%
Combo  5: 11.1% 27.6%
Combo  6: 14.0% 41.6%
Combo  7: 16.8% 58.3%
Combo  8: 13.9% 72.2%
Combo  9: 11.2% 83.4%
Combo 10:  8.3% 91.7%
Combo 11:  5.6% 97.3%
Combo 12:  2.7% 100.0%
```

As you can see, these compare favorably with the theoretical values I computed.

| Roll | Num | Prob. | Cum. Prob. |
|---|---|---|---|
| 2 | 1 | 2.8% | 2.8% |
| 3 | 2 | 6% | 8.3% |
| 4 | 3 | 8% | 17% |
| 5 | 4 | 11% | 28% |
| 6 | 5 | 14% | 42% |
| 7 | 6 | 17% | 58% |
| 8 | 5 | 14% | 72% |
| 9 | 4 | 11% | 83% |
| 10 | 3 | 8% | 92% |
| 11 | 2 | 6% | 97% |
| 12 | 1 | 2.8% | 100% |


This little trick is fun. It runs the program every second so you can see how the percentages range over time.

```bash
$ watch .roll_dice
```
