# Configure Mutt

- add the following to `/etc/apt/source.list` 

```
deb http://security.ubuntu.com/ubuntu trusty-security main universe

```

Remember to generate a password for 'less secure apps':

```
https://support.google.com/accounts/answer/185833
```


To encrypt the passwords: https://pthree.org/2012/01/07/encrypted-mutt-imap-smtp-passwords/

```
gpg -r your.email@example.com -e ~/.mutt/passwords
shred ~/.mutt/passwords
rm ~/.mutt/passwords
```

Other useful links:

- https://gitlab.com/muttmua/mutt/wikis/ConfigTricks
- https://gitlab.com/muttmua/mutt/wikis/MuttFaq/Editor


