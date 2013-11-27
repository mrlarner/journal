# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
Journal::Application.config.secret_key_base = 'd3e49284498baae145e0126a8c4afd4bebfe95ba31b5731eabad837cf5e25eebab683bca22b7f328120fc2eb4f47530adab0edd4e33f199e30ee76564d916973'
