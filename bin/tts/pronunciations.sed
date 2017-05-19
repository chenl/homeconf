#!/bin/sed -rf

# valid alpha/non-ascii combinations
s,ØMQ,Zero M Q,g

## Specail Caracters: moved to asciify.py script
s,➊,number 1,g
s,➋,number 2,g
s,➌,number 3,g
s,➍,number 4,g
s,➎,number 5,g
s,➏,number 6,g
s,➐,number 7,g
s,➑,number 8,g
s,➒,number 9,g
s,➓,number 10,g
s,`,',g
s,’,',g
s,“,",g
s,”,",g
s,ä,a,g
s,á,a,g
s,ß,b,g
s,ç,c,g
s,é,e,g
s,λ, lambda ,g
s,ö,o,g
s,ø,o,g
s,ü,u,g

s,!=,not =,g

# E-mail quating
s,^[[:space:];#|>]*,,
# Code comments
s,^[[:space:]]*//,,

# unrecognized characters
s:([a-z])\?([a-z]):\1\2:g

# emacs: C- control; M- meta; S- shift; s- super; h- hyper
s,\bC-M-S-H-s-(.)\b,control alt shift hyper super \1,g
s,\bC-M-S-s-H-(.)\b,control alt shift super hyper \1,g
s,\bC-M-H-S-s-(.)\b,control alt hyper shift super \1,g
s,\bC-M-H-s-S-(.)\b,control alt hyper super shift \1,g
s,\bC-M-s-S-H-(.)\b,control alt super shift hyper \1,g
s,\bC-M-s-H-S-(.)\b,control alt super hyper shift \1,g
s,\bC-S-M-H-s-(.)\b,control shift alt hyper super \1,g
s,\bC-S-M-s-H-(.)\b,control shift alt super hyper \1,g
s,\bC-S-H-M-s-(.)\b,control shift hyper alt super \1,g
s,\bC-S-H-s-M-(.)\b,control shift hyper super alt \1,g
s,\bC-S-s-M-H-(.)\b,control shift super alt hyper \1,g
s,\bC-S-s-H-M-(.)\b,control shift super hyper alt \1,g
s,\bC-H-M-S-s-(.)\b,control hyper alt shift super \1,g
s,\bC-H-M-s-S-(.)\b,control hyper alt super shift \1,g
s,\bC-H-S-M-s-(.)\b,control hyper shift alt super \1,g
s,\bC-H-S-s-M-(.)\b,control hyper shift super alt \1,g
s,\bC-H-s-M-S-(.)\b,control hyper super alt shift \1,g
s,\bC-H-s-S-M-(.)\b,control hyper super shift alt \1,g
s,\bC-s-M-S-H-(.)\b,control super alt shift hyper \1,g
s,\bC-s-M-H-S-(.)\b,control super alt hyper shift \1,g
s,\bC-s-S-M-H-(.)\b,control super shift alt hyper \1,g
s,\bC-s-S-H-M-(.)\b,control super shift hyper alt \1,g
s,\bC-s-H-M-S-(.)\b,control super hyper alt shift \1,g
s,\bC-s-H-S-M-(.)\b,control super hyper shift alt \1,g
s,\bM-C-S-H-s-(.)\b,alt control shift hyper super \1,g
s,\bM-C-S-s-H-(.)\b,alt control shift super hyper \1,g
s,\bM-C-H-S-s-(.)\b,alt control hyper shift super \1,g
s,\bM-C-H-s-S-(.)\b,alt control hyper super shift \1,g
s,\bM-C-s-S-H-(.)\b,alt control super shift hyper \1,g
s,\bM-C-s-H-S-(.)\b,alt control super hyper shift \1,g
s,\bM-S-C-H-s-(.)\b,alt shift control hyper super \1,g
s,\bM-S-C-s-H-(.)\b,alt shift control super hyper \1,g
s,\bM-S-H-C-s-(.)\b,alt shift hyper control super \1,g
s,\bM-S-H-s-C-(.)\b,alt shift hyper super control \1,g
s,\bM-S-s-C-H-(.)\b,alt shift super control hyper \1,g
s,\bM-S-s-H-C-(.)\b,alt shift super hyper control \1,g
s,\bM-H-C-S-s-(.)\b,alt hyper control shift super \1,g
s,\bM-H-C-s-S-(.)\b,alt hyper control super shift \1,g
s,\bM-H-S-C-s-(.)\b,alt hyper shift control super \1,g
s,\bM-H-S-s-C-(.)\b,alt hyper shift super control \1,g
s,\bM-H-s-C-S-(.)\b,alt hyper super control shift \1,g
s,\bM-H-s-S-C-(.)\b,alt hyper super shift control \1,g
s,\bM-s-C-S-H-(.)\b,alt super control shift hyper \1,g
s,\bM-s-C-H-S-(.)\b,alt super control hyper shift \1,g
s,\bM-s-S-C-H-(.)\b,alt super shift control hyper \1,g
s,\bM-s-S-H-C-(.)\b,alt super shift hyper control \1,g
s,\bM-s-H-C-S-(.)\b,alt super hyper control shift \1,g
s,\bM-s-H-S-C-(.)\b,alt super hyper shift control \1,g
s,\bS-C-M-H-s-(.)\b,shift control alt hyper super \1,g
s,\bS-C-M-s-H-(.)\b,shift control alt super hyper \1,g
s,\bS-C-H-M-s-(.)\b,shift control hyper alt super \1,g
s,\bS-C-H-s-M-(.)\b,shift control hyper super alt \1,g
s,\bS-C-s-M-H-(.)\b,shift control super alt hyper \1,g
s,\bS-C-s-H-M-(.)\b,shift control super hyper alt \1,g
s,\bS-M-C-H-s-(.)\b,shift alt control hyper super \1,g
s,\bS-M-C-s-H-(.)\b,shift alt control super hyper \1,g
s,\bS-M-H-C-s-(.)\b,shift alt hyper control super \1,g
s,\bS-M-H-s-C-(.)\b,shift alt hyper super control \1,g
s,\bS-M-s-C-H-(.)\b,shift alt super control hyper \1,g
s,\bS-M-s-H-C-(.)\b,shift alt super hyper control \1,g
s,\bS-H-C-M-s-(.)\b,shift hyper control alt super \1,g
s,\bS-H-C-s-M-(.)\b,shift hyper control super alt \1,g
s,\bS-H-M-C-s-(.)\b,shift hyper alt control super \1,g
s,\bS-H-M-s-C-(.)\b,shift hyper alt super control \1,g
s,\bS-H-s-C-M-(.)\b,shift hyper super control alt \1,g
s,\bS-H-s-M-C-(.)\b,shift hyper super alt control \1,g
s,\bS-s-C-M-H-(.)\b,shift super control alt hyper \1,g
s,\bS-s-C-H-M-(.)\b,shift super control hyper alt \1,g
s,\bS-s-M-C-H-(.)\b,shift super alt control hyper \1,g
s,\bS-s-M-H-C-(.)\b,shift super alt hyper control \1,g
s,\bS-s-H-C-M-(.)\b,shift super hyper control alt \1,g
s,\bS-s-H-M-C-(.)\b,shift super hyper alt control \1,g
s,\bH-C-M-S-s-(.)\b,hyper control alt shift super \1,g
s,\bH-C-M-s-S-(.)\b,hyper control alt super shift \1,g
s,\bH-C-S-M-s-(.)\b,hyper control shift alt super \1,g
s,\bH-C-S-s-M-(.)\b,hyper control shift super alt \1,g
s,\bH-C-s-M-S-(.)\b,hyper control super alt shift \1,g
s,\bH-C-s-S-M-(.)\b,hyper control super shift alt \1,g
s,\bH-M-C-S-s-(.)\b,hyper alt control shift super \1,g
s,\bH-M-C-s-S-(.)\b,hyper alt control super shift \1,g
s,\bH-M-S-C-s-(.)\b,hyper alt shift control super \1,g
s,\bH-M-S-s-C-(.)\b,hyper alt shift super control \1,g
s,\bH-M-s-C-S-(.)\b,hyper alt super control shift \1,g
s,\bH-M-s-S-C-(.)\b,hyper alt super shift control \1,g
s,\bH-S-C-M-s-(.)\b,hyper shift control alt super \1,g
s,\bH-S-C-s-M-(.)\b,hyper shift control super alt \1,g
s,\bH-S-M-C-s-(.)\b,hyper shift alt control super \1,g
s,\bH-S-M-s-C-(.)\b,hyper shift alt super control \1,g
s,\bH-S-s-C-M-(.)\b,hyper shift super control alt \1,g
s,\bH-S-s-M-C-(.)\b,hyper shift super alt control \1,g
s,\bH-s-C-M-S-(.)\b,hyper super control alt shift \1,g
s,\bH-s-C-S-M-(.)\b,hyper super control shift alt \1,g
s,\bH-s-M-C-S-(.)\b,hyper super alt control shift \1,g
s,\bH-s-M-S-C-(.)\b,hyper super alt shift control \1,g
s,\bH-s-S-C-M-(.)\b,hyper super shift control alt \1,g
s,\bH-s-S-M-C-(.)\b,hyper super shift alt control \1,g
s,\bs-C-M-S-H-(.)\b,super control alt shift hyper \1,g
s,\bs-C-M-H-S-(.)\b,super control alt hyper shift \1,g
s,\bs-C-S-M-H-(.)\b,super control shift alt hyper \1,g
s,\bs-C-S-H-M-(.)\b,super control shift hyper alt \1,g
s,\bs-C-H-M-S-(.)\b,super control hyper alt shift \1,g
s,\bs-C-H-S-M-(.)\b,super control hyper shift alt \1,g
s,\bs-M-C-S-H-(.)\b,super alt control shift hyper \1,g
s,\bs-M-C-H-S-(.)\b,super alt control hyper shift \1,g
s,\bs-M-S-C-H-(.)\b,super alt shift control hyper \1,g
s,\bs-M-S-H-C-(.)\b,super alt shift hyper control \1,g
s,\bs-M-H-C-S-(.)\b,super alt hyper control shift \1,g
s,\bs-M-H-S-C-(.)\b,super alt hyper shift control \1,g
s,\bs-S-C-M-H-(.)\b,super shift control alt hyper \1,g
s,\bs-S-C-H-M-(.)\b,super shift control hyper alt \1,g
s,\bs-S-M-C-H-(.)\b,super shift alt control hyper \1,g
s,\bs-S-M-H-C-(.)\b,super shift alt hyper control \1,g
s,\bs-S-H-C-M-(.)\b,super shift hyper control alt \1,g
s,\bs-S-H-M-C-(.)\b,super shift hyper alt control \1,g
s,\bs-H-C-M-S-(.)\b,super hyper control alt shift \1,g
s,\bs-H-C-S-M-(.)\b,super hyper control shift alt \1,g
s,\bs-H-M-C-S-(.)\b,super hyper alt control shift \1,g
s,\bs-H-M-S-C-(.)\b,super hyper alt shift control \1,g
s,\bs-H-S-C-M-(.)\b,super hyper shift control alt \1,g
s,\bs-H-S-M-C-(.)\b,super hyper shift alt control \1,g
s,\bC-M-S-H-(.)\b,control alt shift hyper \1,g
s,\bC-M-S-s-(.)\b,control alt shift super \1,g
s,\bC-M-H-S-(.)\b,control alt hyper shift \1,g
s,\bC-M-H-s-(.)\b,control alt hyper super \1,g
s,\bC-M-s-S-(.)\b,control alt super shift \1,g
s,\bC-M-s-H-(.)\b,control alt super hyper \1,g
s,\bC-S-M-H-(.)\b,control shift alt hyper \1,g
s,\bC-S-M-s-(.)\b,control shift alt super \1,g
s,\bC-S-H-M-(.)\b,control shift hyper alt \1,g
s,\bC-S-H-s-(.)\b,control shift hyper super \1,g
s,\bC-S-s-M-(.)\b,control shift super alt \1,g
s,\bC-S-s-H-(.)\b,control shift super hyper \1,g
s,\bC-H-M-S-(.)\b,control hyper alt shift \1,g
s,\bC-H-M-s-(.)\b,control hyper alt super \1,g
s,\bC-H-S-M-(.)\b,control hyper shift alt \1,g
s,\bC-H-S-s-(.)\b,control hyper shift super \1,g
s,\bC-H-s-M-(.)\b,control hyper super alt \1,g
s,\bC-H-s-S-(.)\b,control hyper super shift \1,g
s,\bC-s-M-S-(.)\b,control super alt shift \1,g
s,\bC-s-M-H-(.)\b,control super alt hyper \1,g
s,\bC-s-S-M-(.)\b,control super shift alt \1,g
s,\bC-s-S-H-(.)\b,control super shift hyper \1,g
s,\bC-s-H-M-(.)\b,control super hyper alt \1,g
s,\bC-s-H-S-(.)\b,control super hyper shift \1,g
s,\bM-C-S-H-(.)\b,alt control shift hyper \1,g
s,\bM-C-S-s-(.)\b,alt control shift super \1,g
s,\bM-C-H-S-(.)\b,alt control hyper shift \1,g
s,\bM-C-H-s-(.)\b,alt control hyper super \1,g
s,\bM-C-s-S-(.)\b,alt control super shift \1,g
s,\bM-C-s-H-(.)\b,alt control super hyper \1,g
s,\bM-S-C-H-(.)\b,alt shift control hyper \1,g
s,\bM-S-C-s-(.)\b,alt shift control super \1,g
s,\bM-S-H-C-(.)\b,alt shift hyper control \1,g
s,\bM-S-H-s-(.)\b,alt shift hyper super \1,g
s,\bM-S-s-C-(.)\b,alt shift super control \1,g
s,\bM-S-s-H-(.)\b,alt shift super hyper \1,g
s,\bM-H-C-S-(.)\b,alt hyper control shift \1,g
s,\bM-H-C-s-(.)\b,alt hyper control super \1,g
s,\bM-H-S-C-(.)\b,alt hyper shift control \1,g
s,\bM-H-S-s-(.)\b,alt hyper shift super \1,g
s,\bM-H-s-C-(.)\b,alt hyper super control \1,g
s,\bM-H-s-S-(.)\b,alt hyper super shift \1,g
s,\bM-s-C-S-(.)\b,alt super control shift \1,g
s,\bM-s-C-H-(.)\b,alt super control hyper \1,g
s,\bM-s-S-C-(.)\b,alt super shift control \1,g
s,\bM-s-S-H-(.)\b,alt super shift hyper \1,g
s,\bM-s-H-C-(.)\b,alt super hyper control \1,g
s,\bM-s-H-S-(.)\b,alt super hyper shift \1,g
s,\bS-C-M-H-(.)\b,shift control alt hyper \1,g
s,\bS-C-M-s-(.)\b,shift control alt super \1,g
s,\bS-C-H-M-(.)\b,shift control hyper alt \1,g
s,\bS-C-H-s-(.)\b,shift control hyper super \1,g
s,\bS-C-s-M-(.)\b,shift control super alt \1,g
s,\bS-C-s-H-(.)\b,shift control super hyper \1,g
s,\bS-M-C-H-(.)\b,shift alt control hyper \1,g
s,\bS-M-C-s-(.)\b,shift alt control super \1,g
s,\bS-M-H-C-(.)\b,shift alt hyper control \1,g
s,\bS-M-H-s-(.)\b,shift alt hyper super \1,g
s,\bS-M-s-C-(.)\b,shift alt super control \1,g
s,\bS-M-s-H-(.)\b,shift alt super hyper \1,g
s,\bS-H-C-M-(.)\b,shift hyper control alt \1,g
s,\bS-H-C-s-(.)\b,shift hyper control super \1,g
s,\bS-H-M-C-(.)\b,shift hyper alt control \1,g
s,\bS-H-M-s-(.)\b,shift hyper alt super \1,g
s,\bS-H-s-C-(.)\b,shift hyper super control \1,g
s,\bS-H-s-M-(.)\b,shift hyper super alt \1,g
s,\bS-s-C-M-(.)\b,shift super control alt \1,g
s,\bS-s-C-H-(.)\b,shift super control hyper \1,g
s,\bS-s-M-C-(.)\b,shift super alt control \1,g
s,\bS-s-M-H-(.)\b,shift super alt hyper \1,g
s,\bS-s-H-C-(.)\b,shift super hyper control \1,g
s,\bS-s-H-M-(.)\b,shift super hyper alt \1,g
s,\bH-C-M-S-(.)\b,hyper control alt shift \1,g
s,\bH-C-M-s-(.)\b,hyper control alt super \1,g
s,\bH-C-S-M-(.)\b,hyper control shift alt \1,g
s,\bH-C-S-s-(.)\b,hyper control shift super \1,g
s,\bH-C-s-M-(.)\b,hyper control super alt \1,g
s,\bH-C-s-S-(.)\b,hyper control super shift \1,g
s,\bH-M-C-S-(.)\b,hyper alt control shift \1,g
s,\bH-M-C-s-(.)\b,hyper alt control super \1,g
s,\bH-M-S-C-(.)\b,hyper alt shift control \1,g
s,\bH-M-S-s-(.)\b,hyper alt shift super \1,g
s,\bH-M-s-C-(.)\b,hyper alt super control \1,g
s,\bH-M-s-S-(.)\b,hyper alt super shift \1,g
s,\bH-S-C-M-(.)\b,hyper shift control alt \1,g
s,\bH-S-C-s-(.)\b,hyper shift control super \1,g
s,\bH-S-M-C-(.)\b,hyper shift alt control \1,g
s,\bH-S-M-s-(.)\b,hyper shift alt super \1,g
s,\bH-S-s-C-(.)\b,hyper shift super control \1,g
s,\bH-S-s-M-(.)\b,hyper shift super alt \1,g
s,\bH-s-C-M-(.)\b,hyper super control alt \1,g
s,\bH-s-C-S-(.)\b,hyper super control shift \1,g
s,\bH-s-M-C-(.)\b,hyper super alt control \1,g
s,\bH-s-M-S-(.)\b,hyper super alt shift \1,g
s,\bH-s-S-C-(.)\b,hyper super shift control \1,g
s,\bH-s-S-M-(.)\b,hyper super shift alt \1,g
s,\bs-C-M-S-(.)\b,super control alt shift \1,g
s,\bs-C-M-H-(.)\b,super control alt hyper \1,g
s,\bs-C-S-M-(.)\b,super control shift alt \1,g
s,\bs-C-S-H-(.)\b,super control shift hyper \1,g
s,\bs-C-H-M-(.)\b,super control hyper alt \1,g
s,\bs-C-H-S-(.)\b,super control hyper shift \1,g
s,\bs-M-C-S-(.)\b,super alt control shift \1,g
s,\bs-M-C-H-(.)\b,super alt control hyper \1,g
s,\bs-M-S-C-(.)\b,super alt shift control \1,g
s,\bs-M-S-H-(.)\b,super alt shift hyper \1,g
s,\bs-M-H-C-(.)\b,super alt hyper control \1,g
s,\bs-M-H-S-(.)\b,super alt hyper shift \1,g
s,\bs-S-C-M-(.)\b,super shift control alt \1,g
s,\bs-S-C-H-(.)\b,super shift control hyper \1,g
s,\bs-S-M-C-(.)\b,super shift alt control \1,g
s,\bs-S-M-H-(.)\b,super shift alt hyper \1,g
s,\bs-S-H-C-(.)\b,super shift hyper control \1,g
s,\bs-S-H-M-(.)\b,super shift hyper alt \1,g
s,\bs-H-C-M-(.)\b,super hyper control alt \1,g
s,\bs-H-C-S-(.)\b,super hyper control shift \1,g
s,\bs-H-M-C-(.)\b,super hyper alt control \1,g
s,\bs-H-M-S-(.)\b,super hyper alt shift \1,g
s,\bs-H-S-C-(.)\b,super hyper shift control \1,g
s,\bs-H-S-M-(.)\b,super hyper shift alt \1,g
s,\bC-M-S-(.)\b,control alt shift \1,g
s,\bC-M-H-(.)\b,control alt hyper \1,g
s,\bC-M-s-(.)\b,control alt super \1,g
s,\bC-S-M-(.)\b,control shift alt \1,g
s,\bC-S-H-(.)\b,control shift hyper \1,g
s,\bC-S-s-(.)\b,control shift super \1,g
s,\bC-H-M-(.)\b,control hyper alt \1,g
s,\bC-H-S-(.)\b,control hyper shift \1,g
s,\bC-H-s-(.)\b,control hyper super \1,g
s,\bC-s-M-(.)\b,control super alt \1,g
s,\bC-s-S-(.)\b,control super shift \1,g
s,\bC-s-H-(.)\b,control super hyper \1,g
s,\bM-C-S-(.)\b,alt control shift \1,g
s,\bM-C-H-(.)\b,alt control hyper \1,g
s,\bM-C-s-(.)\b,alt control super \1,g
s,\bM-S-C-(.)\b,alt shift control \1,g
s,\bM-S-H-(.)\b,alt shift hyper \1,g
s,\bM-S-s-(.)\b,alt shift super \1,g
s,\bM-H-C-(.)\b,alt hyper control \1,g
s,\bM-H-S-(.)\b,alt hyper shift \1,g
s,\bM-H-s-(.)\b,alt hyper super \1,g
s,\bM-s-C-(.)\b,alt super control \1,g
s,\bM-s-S-(.)\b,alt super shift \1,g
s,\bM-s-H-(.)\b,alt super hyper \1,g
s,\bS-C-M-(.)\b,shift control alt \1,g
s,\bS-C-H-(.)\b,shift control hyper \1,g
s,\bS-C-s-(.)\b,shift control super \1,g
s,\bS-M-C-(.)\b,shift alt control \1,g
s,\bS-M-H-(.)\b,shift alt hyper \1,g
s,\bS-M-s-(.)\b,shift alt super \1,g
s,\bS-H-C-(.)\b,shift hyper control \1,g
s,\bS-H-M-(.)\b,shift hyper alt \1,g
s,\bS-H-s-(.)\b,shift hyper super \1,g
s,\bS-s-C-(.)\b,shift super control \1,g
s,\bS-s-M-(.)\b,shift super alt \1,g
s,\bS-s-H-(.)\b,shift super hyper \1,g
s,\bH-C-M-(.)\b,hyper control alt \1,g
s,\bH-C-S-(.)\b,hyper control shift \1,g
s,\bH-C-s-(.)\b,hyper control super \1,g
s,\bH-M-C-(.)\b,hyper alt control \1,g
s,\bH-M-S-(.)\b,hyper alt shift \1,g
s,\bH-M-s-(.)\b,hyper alt super \1,g
s,\bH-S-C-(.)\b,hyper shift control \1,g
s,\bH-S-M-(.)\b,hyper shift alt \1,g
s,\bH-S-s-(.)\b,hyper shift super \1,g
s,\bH-s-C-(.)\b,hyper super control \1,g
s,\bH-s-M-(.)\b,hyper super alt \1,g
s,\bH-s-S-(.)\b,hyper super shift \1,g
s,\bs-C-M-(.)\b,super control alt \1,g
s,\bs-C-S-(.)\b,super control shift \1,g
s,\bs-C-H-(.)\b,super control hyper \1,g
s,\bs-M-C-(.)\b,super alt control \1,g
s,\bs-M-S-(.)\b,super alt shift \1,g
s,\bs-M-H-(.)\b,super alt hyper \1,g
s,\bs-S-C-(.)\b,super shift control \1,g
s,\bs-S-M-(.)\b,super shift alt \1,g
s,\bs-S-H-(.)\b,super shift hyper \1,g
s,\bs-H-C-(.)\b,super hyper control \1,g
s,\bs-H-M-(.)\b,super hyper alt \1,g
s,\bs-H-S-(.)\b,super hyper shift \1,g
s,\bC-M-(.)\b,control alt \1,g
s,\bC-S-(.)\b,control shift \1,g
s,\bC-H-(.)\b,control hyper \1,g
s,\bC-s-(.)\b,control super \1,g
s,\bM-C-(.)\b,alt control \1,g
s,\bM-S-(.)\b,alt shift \1,g
s,\bM-H-(.)\b,alt hyper \1,g
s,\bM-s-(.)\b,alt super \1,g
s,\bS-C-(.)\b,shift control \1,g
s,\bS-M-(.)\b,shift alt \1,g
s,\bS-H-(.)\b,shift hyper \1,g
s,\bS-s-(.)\b,shift super \1,g
s,\bH-C-(.)\b,hyper control \1,g
s,\bH-M-(.)\b,hyper alt \1,g
s,\bH-S-(.)\b,hyper shift \1,g
s,\bH-s-(.)\b,hyper super \1,g
s,\bs-C-(.)\b,super control \1,g
s,\bs-M-(.)\b,super alt \1,g
s,\bs-S-(.)\b,super shift \1,g
s,\bs-H-(.)\b,super hyper \1,g
s,\bC-(.)\b,control \1,g
s,\bM-(.)\b,alt \1,g
s,\bS-(.)\b,shift \1,g
s,\bH-(.)\b,hyper \1,g
s,\bs-(.)\b,super \1,g
s,\bRET\b,return,g

# valid alpha/non-alpha combinations
s,\.hgignore,dot HG ignore,g
s,\.py\b,dot pie,g
s,web2py,web 2 pie,gI
s,w/o,without,gI
s,s/w,software,gI
s,h/w,hardware,gI
s,\bHTML([A-Z][a-z]+),HTML \1,g
s,\bc4che\b,cache,g
s,\bc#,C sharp,gI
s,\bgtk#,G T K sharp,gI
s,#, number,g
s,\bGNix\b,genix,gI
s:\bMicro\$oft:Microsoft:gI
s:\bM\$:Microsoft:gI
s:OpenCL:Open C L:g
s:\bplug-in\b:plug inn:g
s:\bplug-ins\b:plug inns:g
s:\bpy\.test\b:pie test:g
s:\biSNS\b:i S N S:g
s:\bIPv4LL\b:IPV 4 Local Link:g
s:\bDr\.:Doctor:g
s:\bRPyC\b:Are Pie See:g
# <some tag name>
s%<([a-z]+([	 _-][a-z]+){,2})>%\1 tag%gI
s,\btag tag\b,tag,g
# name::space
s,([a-z])::([a-z]),\1 \2,gI

# McMuchta
s,\bMc([A-Z][a-z]+),mek\1,g

# under_score
s,([a-z])_([a-z]),\1 \2,gI

# RunTogetherWords
s,\b([A-Z][a-z]*)([A-Z][a-z]+),\1 \2,g
s,\b([A-Z][a-z]*)([A-Z][a-z]+),\1 \2,g
s,\b([a-z]+)([A-Z][a-z]+),\1 \2,g
s,\b([a-z]+)([A-Z][a-z]+),\1 \2,g

# example.com
s,([a-z])\.([a-z]),\1 dot \2,gI

# word<!word>word
s,([a-z']+)([^a-z' ]+)([a-z']+),\1 \2 \3,gI
s,([a-z']+)([^a-z' ]+),\1 \2,gI
s,([^a-z' ]+)([a-z']+),\1 \2,gI

# runtogetherwords
s,Anycast,Enycast,gI
s,datetime,date time,g
s,dmsetup,DM setup,gI
s,\bDM\b,D M,gI
s,\bfieldset\b,field set,g
s,filename,file name,gI
s,filesystem,file system,gI
s,\bgitignore\b,git ignore,gI
s,heartbeating,heart beating,gI
s,Homemade,home made,gI
s,initramfs,init ram FS,gI
s,Jolicloud,Joli cloud,gI
s,livecd,live CD,gI
s,memcache,mem cache,gI
s,minime,mini me,gI
s,\bmixin\b,mix inn,gI
s,\bmixins\b,mix inns,gI
s,\bplugin\b,plug inn,gI
s,\bplugins\b,plug inns,gI
s,\bPy\b,Pie,g
s,startup,start up,gI
s,teardown,tear down,gI
s,timeout,time out,gI
s,timestamp,time stamp,gI
s,tcpdump,TCP dump,gI
s,todo,to do,gI
s,tophat,top hat,gI
s,usb,USB,gI
s,\borderby\b,order by,gI
s,\bgroupby\b,group by,gI
s,\blimitby\b,limit by,gI
s,\bisempty\b,is empty,gI

# virtual box commands
s,\badoptstate\b,adopt state,g
s,\bbandwidthctl\b,bandwidth control,g
s,\bclonehd\b,clone HD,g
s,\bclonevm\b,clone VM,g
s,\bclosemedium\b,close medium,g
s,\bcontrolvm\b,control VM,g
s,\bconvertfromraw\b,covert from raw,g
s,\bcreatehd\b,create HD,g
s,\bcreatevm\b,create VM,g
s,\bdebugvm\b,debug VM,g
s,\bdhcpserver\b,DHCP server,g
s,\bdiscardstate\b,discard state,g
s,\bextpack\b,ext pack,g
s,\bgetextradata\b,get extra data,g
s,\bguestcontrol\b,guest control,g
s,\bguestproperty\b,guest property,g
s,\bhostonlyif\b,host only if,g
s,\bmodifyhd\b,modify HD,g
s,\bmodifyvm\b,modify VM,g
s,\bregistervm\b,register VM,g
s,\bsetextradata\b,set extra data,g
s,\bsetproperty\b,set proerty,g
s,\bsettingspwfile\b,settings passwrd file,g
s,\bsettingspw\b,settings password,g
s,\bsharedfolder\b,share folder,g
s,\bshowhdinfo,show HD info,g
s,\bshowvminfo,show VM info,g
s,\bstartvm\b,start VM,g
s,\bstorageattach\b,storage attach,g
s,\bstoragectl\b,storage controller,g
s,\bunregistervm\b,unregister VM,g
s,\busbfilter\b,usb filter,g

# barnds and jargon
s,\bASCII,asky,ig
s,\bCIDR\b,cider,g
s,\bcol\b,column,g
s,\bcpio\b,C P I O,g
s,\bCeph\b,Seph,g
s,\bcmake\b,C make,gI
s,\bdb\b,D B,gI
s,DOS,doss,g
s,\bepgm\b,E P G M,g
s,\beth\b,E T H,g
s,\bGigE\b,Gig Ethernet,g
s,JDK,Jaydeekay,gI
s,\bjson\b,jason,g
s,\bJSON\b,jason,g
s,\bjsonp\b,jason P,gI
s,linux,lynux,gI
s,\blt\b,L T,gI
s,\bID\b,I D,g
s,\bid\b,I D,g
s,\bipc\b,I P C,g
s,\bmsg\b,message,g
s,\bmsgpack\b,message pack,g
s,\bMT\b,M T,g
s,\bpty\b,P T Y,g
s,\bQt\b,Cute,g
s,\bQCOMPARE\b,Q compare,g
s,\bQFETCH\b,Q fetch,g
s,\bQTEST\b,Q test,g
s,\bQVERIFY\b,Q verify,g
s,\brecv\b,receive,g
s,\btty\b,T T Y,g
s,\bstty\b,S T T Y,g
s,\bSkype\b,Skipe\b,gI
s,\bsyncing,synking,gI
s,\bUDOO\b,you do,g
s,\bxml\b,XML,ig
s,\biscsiadm,iscsi admin,g
s,\biscsid,iSCSI D,gI
s,\biscsi\b,I SCSI,gI
s,\bscsi\b,skuzy,gI
s,\bubuntu,oooboontu,gI
s,\bUPS\b,U P S,gI
s,\bUPSes\b,U P Esses,gI
s,\bWWID\b,W W I D,gI
s,\bwscript\b,waf script,g
s,\bMakepp,make p p,gI
s,\bxfce\b,XFCE,gI
s,\bXPUB\b,X pub,g
s,\bXSUB\b,X sub,g

# names
s,\bIgal\b,Igul,g
s,\bShai\b,Shaei,g
s,\bPaz\b,Pas,g

# non-roman charactersa fallback
s,([a-z])\?([a-z]),\1\2,g
