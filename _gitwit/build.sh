#!/bin/sh

# Initialize git repository
git init
git commit -a --allow-empty -m "Initial commit"

# Create .gitignore file
echo -e "__pycache__/" > .gitignore
git add .gitignore
git commit -a -m "👷🏼 Add .gitignore file"

# Install Python and pip
apk add --no-cache python3 py3-pip
pip3 install --upgrade pip
git add .
git commit -a -m "👷🏼 Install Python and pip"

# Install Discord Py library
pip3 install discord
git add .
git commit -a -m "👷🏼 Install Discord Py library"

# Create Discord bot script
mkdir bot
cd bot
echo -e "import discord

client = discord.Client()
TOKEN = 'your-bot-token-here'

@client.event
async def on_ready():
    print('Logged in as {0.user}'.format(client))

@client.event
async def on_message(message):
    if message.author == client.user:
        return

    if message.content.startswith('!help'):
        await message.channel.send('Try drinking more water!')

client.run(TOKEN)" > bot.py
cd ..
git add .
git commit -a -m "👷🏼 Create Discord bot script"

# Create README.md file
echo -e "# discord-chatbot-written-in-python-that" > README.md
echo -e "This is a Discord chatbot written in Python that gives healthy lifestyle suggestions." >> README.md
echo -e "" >> README.md
echo -e "To run this code you will need:" >> README.md
echo -e "- Python 3" >> README.md
echo -e "- Discord Py library" >> README.md
echo -e "" >> README.md
echo -e "Basic instructions:" >> README.md
echo -e "1. Clone this repository." >> README.md
echo -e "2. Install Python 3 and pip." >> README.md
echo -e "3. Install the Discord Py library with pip." >> README.md
echo -e "4. Create a Discord bot via the Discord Developers website and obtain a bot token." >> README.md
echo -e "5. Replace 'your-bot-token-here' in bot/bot.py with your bot token." >> README.md
echo -e "6. Run bot/bot.py. Your bot should now be online in your Discord server." >> README.md
git add README.md
git commit -a -m "👷🏼 Create README.md file" 

# End of script, do not use exit command