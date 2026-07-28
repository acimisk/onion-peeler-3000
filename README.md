# onion-peeler-3000

# 🇹🇷 TR
OverTheWire Bandit Level 12'deki çok katmanlı arşivleri tek tek elle açmakla uğraşmamak için yazdığım basit bir Bash script'i.

Dosyanın uzantısına değil `file` komutuyla gerçek türüne bakar. `gzip`, `bzip2` veya `tar` ne bulursa sırayla söker, en son düz metin (ASCII text) bulunca şifreyi ekrana basıp çıkar.

## Kullanım

Çalıştırmadan önce hexdump halindeki dosyayı ikili (binary) formata çevirmiş olman gerekir:

xxd -r data.txt > dosya1
chmod +x onionpeeler.sh
./onionpeeler.sh dosya1

Çalışmazsa sorun script'te değil, büyük ihtimalle hexdump'ı çevirmeyi unuttun ya da bilgisayarı kapatıp açman lazım.

# 🇺🇸 EN

A simple Bash script created to avoid manually extracting nested archives in OverTheWire Bandit Level 12.

Instead of relying on file extensions, it checks the actual file type using the `file` command. It recursively unwraps `gzip`, `bzip2`, and `tar` layers, then prints the content once it hits plain text (`ASCII text`).

## Usage

Before running the script, you must convert the raw hexdump into a binary file:

```bash
xxd -r data.txt > initial_file
chmod +x onionpeeler.sh
./onionpeeler.sh initial_file
```
If it doesn't work, the issue is definitely not with the script, you probably forgot to convert the hexdump, or you need to turn your computer off and on again.
