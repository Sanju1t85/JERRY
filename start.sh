if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Telegramwallah14/JERRY.git /JERRY
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO"
  git clone $UPSTREAM_REPO /JERRY
fi
cd /JERRY
pip3 install -U -r requirements.txt
echo "Starting...."
python3 bot.py
