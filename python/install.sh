if test ! `which pip`; then
  curl https://bootstrap.pypa.io/get-pip.py > get-pip.py
  python get-pip.py
  rm get-pip.py
fi

pip install virtualenv