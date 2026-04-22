# ~/.dotfiles/deploy.sh

PROFILE=${1:-personal}
DOTFILES_DIR="$HOME/.dotfiles"

# Files shared between both profiles
SHARED=(
  ".config/nvim"
  ".tmux.conf"
)

# Personal-only files
PERSONAL_ONLY=(
  ".bashrc"
  ".bash_aliases"
  ".config/ghostty/config.ghostty"
  ".config/yazi/yazi.toml"
)

link_file() {
  local src="$DOTFILES_DIR/$1"
  local dest="$HOME/$1"
  mkdir -p "$(dirname "$dest")"
  ln -sf "$src" "$dest"
  echo "Linked $1"
}

for f in "${SHARED[@]}"; do
  link_file "$f"
done

if [ "$PROFILE" = "personal" ]; then
  for f in "${PERSONAL_ONLY[@]}"; do
    link_file "$f"
  done
fi

echo "Done. Profile: $PROFILE"
