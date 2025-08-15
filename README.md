# You spelled it wrong.
Auto-corrects typos in the terminal

---

## Installation

```bash
curl -sSL https://raw.githubusercontent.com/DeiTsukiii/you-spelled-it-wrong/refs/heads/main/ysiw.sh | bash
```

---

## Exemple

* Without you-spelled-it-wrong:
  ```bash
  deitsuki@deitsukis-pc:~$ sl
  bash: sl: command not found...
  Similar command is: 'ls'
  deitsuki@deitsukis-pc:~$ mdkir
  bash: mdkir: command not found...
  Similar command is: 'mkdir'
  deitsuki@deitsukis-pc:~$ gitt
  bash: gitt: command not found...
  Similar command is: 'git'
  deitsuki@deitsukis-pc:~$ dvnzdnczencozencjdnczj
  bash: dvnzdnczencozencjdnczj: command not found...
  ```

* With you-spelled-it-wrong:
  ```bash
  deitsuki@deitsukis-pc:~$ sl
  You spelled it wrong.
  deitsuki@deitsukis-pc:~$ mdkir
  You spelled it wrong.
  deitsuki@deitsukis-pc:~$ gitt
  bash: gitt: command not found...
  Did you mean git?
  deitsuki@deitsukis-pc:~$ dvnzdnczencozencjdnczj
  bash: dvnzdnczencozencjdnczj: command not found...
  ```
