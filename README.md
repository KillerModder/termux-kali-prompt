Mude o prompt do seu termux para o prompt do kali linux, totalmente customizavel.

![Preview](PreviewImage.jpg)
---

## ✨ Funcionalidades

- Estilo Kali real (┌ └─)
- Cor do `user@host` escolhida pelo usuário
- Cor das linhas (`┌ └─`) escolhida pelo usuário
- Cor do cifrão (`$`) escolhida pelo usuário
- Host customizado (ex: kali, android, souza)
- Bash puro (não usa zsh)
- Compatível com Termux
- Backup automático do `.bashrc`

---

## 📦 Instalação (Termux)

### Método 1 — Manual (recomendado)

```bash
pkg install git -y
git clone https://github.com/KillerModder/termux-kali-prompt
cd termux-kali-prompt
chmod +x kali-prompt-termux.sh
./kali-prompt-termux.sh
