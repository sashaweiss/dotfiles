if command -v rg > /dev/null; then
  alias rg='rg -i'
  alias rga='rg -uuu'
  alias rgs='rg --case-sensitive'
  alias rgas='rg -uuu --case-sensitive'
fi
