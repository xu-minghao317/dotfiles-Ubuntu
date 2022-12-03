function note(){
  # create and open a new markdown file
  if [[ -f "$1.md" ]]; then
    glow "$1.md"
  else
    touch "$1.md" && glow "$1.md"
  fi
}
