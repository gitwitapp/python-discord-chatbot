import discord

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

client.run(TOKEN)
