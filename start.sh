if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sohan26042005/Unknown_filterbot.git /Unknown_filterbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Unknown_filterbot
fi
cd /Unknown_filterbot
pip3 install -U -r requirements.txt
echo "Starting Unknown_filterbot...."
python3 bot.py
