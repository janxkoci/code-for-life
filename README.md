# codes-for-life
> a toy repository for testing coding concepts in several languages of interest, focusing on problems in life sciences

This repo is my playground to explore programming languages I want to learn. The idea is to code solutions to common toy problems and see how the different languages feel.

At the moment, I'm fluent in `R` and intermediate in several flavours of `awk`. I also use `bash` a lot and increasingly [miller](https://miller.readthedocs.io/). Coding in `awk` in particular helped me to look beyond simple languages like `R`, and to understand (and appreciate) the relationship between software and hardware a little better. But `awk` is still quite limited in this regard, so I want to explore a few "real" languages - currently I'm looking at Julia and Lua and I really like what I see. I didn't "click" with the typical languages used in bioinformatics, like Python, Perl, or Ruby, but I may try them here and see how it goes - maybe they have a chance to convince me ;)

## the "hello world" problem
The first toy problem I nowadays try in a new language is to calculate a **mean sequence length in a FASTA file**, inspired by a [code golf contest at Biostars](https://www.biostars.org/p/1758/).

The problem is simple enough, but tests a few important aspects of a language:

- reading a file / stdin
- matching patterns
- counting things and simple math

An example solution in `awk` could look like this:

```awk
/>/ {n++}
!/>/ {l += length}
END {print l/n}
```

It is even able to handle so-called "folded" FASTA files, where sequences can be wrapped on multiple lines.
