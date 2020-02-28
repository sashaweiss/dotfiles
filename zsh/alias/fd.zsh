command -v fd > /dev/null && {
  alias fd='fd --ignore-case'
  alias fda='fd --no-ignore'
  alias fds='fd --case-sensitive'
  alias fdas='fd --no-ignore --case-sensitive'
}
