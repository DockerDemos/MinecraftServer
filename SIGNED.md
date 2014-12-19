##### Signed by https://keybase.io/clcollins
```
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEABECAAYFAlSUbhgACgkQte6EFif3vzcxGwCgq7RR2NcvVGP0O/EcfNv4ciPn
xHcAoKo0apUe30DgRGPiWeqzPgFOUN/I
=GIPf
-----END PGP SIGNATURE-----

```

<!-- END SIGNATURES -->

### Begin signed statement 

#### Expect

```
size   exec  file              contents                                                        
             ./                                                                                
321            Dockerfile      7e516690f0399531dad2d8164f7958db724e7f42959006287b9c6b615e26d383
35120          LICENSE         fe3eea6c599e23a00c08c5f5cb2320c30adc8f8687db5fcec9b79a662c53ff6b
2583           README.md       31c2868a0b06398f222657cd42781831543a09dbece8422591ffdf756e7925cd
565    x       pre-install.sh  936e53ef995bedf38858a4cf440ba136b5f6c074c0c6a897e4bff3e84b2dcbfa
464    x       startup.sh      f270bc8a8582d675863fe63aaecb4bfe2364b7f923684eeb645cdf040efa2461
```

#### Ignore

```
/SIGNED.md
```

#### Presets

```
git      # ignore .git and anything as described by .gitignore files
dropbox  # ignore .dropbox-cache and other Dropbox-related files    
kb       # ignore anything as described by .kbignore files          
```

<!-- summarize version = 0.0.9 -->

### End signed statement

<hr>

#### Notes

With keybase you can sign any directory's contents, whether it's a git repo,
source code distribution, or a personal documents folder. It aims to replace the drudgery of:

  1. comparing a zipped file to a detached statement
  2. downloading a public key
  3. confirming it is in fact the author's by reviewing public statements they've made, using it

All in one simple command:

```bash
keybase dir verify
```

There are lots of options, including assertions for automating your checks.

For more info, check out https://keybase.io/docs/command_line/code_signing