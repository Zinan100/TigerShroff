echo "Cloning Repo, Please Wait..."
git clone -b main https://github.com/200920082007/TigerShroff.git /TigerShroff
cd /TigerShroff
echo "Installing Requirements..."
pip3 install -U -r requirements.txt
echo "Starting Bot, Please Wait..."
python3 bot.py
