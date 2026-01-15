#!/data/data/com.termux/files/usr/bin/bash

echo "=== Kali-like Prompt para Termux (BASH) ==="
echo

echo "Cor do NOME (user@host):"
echo "1) Vermelho  2) Verde  3) Amarelo  4) Azul"
echo "5) Roxo      6) Ciano  7) Branco"
read -p ">> " NAME_COLOR

echo
echo "Cor do ESTILO Kali (┌ └─):"
echo "1) Vermelho  2) Verde  3) Amarelo  4) Azul"
echo "5) Roxo      6) Ciano  7) Branco"
read -p ">> " LINE_COLOR

echo
echo "Cor do CIFRÃO ($):"
echo "1) Vermelho  2) Verde  3) Amarelo  4) Azul"
echo "5) Roxo      6) Ciano  7) Branco"
read -p ">> " DOLLAR_COLOR

echo
read -p "Nome do host (ex: kali, termux, android): " CUSTOM_HOST

color_code() {
  case "$1" in
    1) echo "31" ;;
    2) echo "32" ;;
    3) echo "33" ;;
    4) echo "34" ;;
    5) echo "35" ;;
    6) echo "36" ;;
    7) echo "37" ;;
    *) echo "37" ;;
  esac
}

NC=$(color_code "$NAME_COLOR")
LC=$(color_code "$LINE_COLOR")
DC=$(color_code "$DOLLAR_COLOR")

# Backup do bashrc
if [ -f "$HOME/.bashrc" ]; then
  cp "$HOME/.bashrc" "$HOME/.bashrc.backup.$(date +%s)"
fi

# Criar novo bashrc com prompt Kali-like
cat > "$HOME/.bashrc" <<EOF
# Kali-like prompt for Termux (bash)

PS1='\\[\\e[1;${LC}m\\]┌(\\[\\e[1;${NC}m\\]\\u@${CUSTOM_HOST}\\[\\e[1;${LC}m\\])-[\\[\\e[0m\\]\\w\\[\\e[1;${LC}m\\]]\\n\\[\\e[1;${LC}m\\]└─\\[\\e[1;${DC}m\\]\\$\\[\\e[0m\\] '
EOF

echo
echo "✔ Prompt Kali aplicado com sucesso!"
echo "✔ Backup salvo em ~/.bashrc.backup.*"
echo
exec bash
