if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sohan26042005/PREMIUMFILTERBOT.git /PREMIUMFILTERBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PREMIUMFILTERBOT
fi
cd /PREMIUMFILTERBOT
pip3 install -U -r requirements.txt
echo "Starting PREMIUMFILTERBOT...."
python3 bot.py
