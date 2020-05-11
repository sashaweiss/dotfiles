command -v fd > /dev/null && {
  alias fd='fd --ignore-case'
  alias fda='fd --no-ignore --hidden'
  alias fds='fd --case-sensitive'
  alias fdas='fd --no-ignore --hidden --case-sensitive'
}
