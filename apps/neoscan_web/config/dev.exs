use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.

config :phoenix, :stacktrace_depth, 100

config :neoscan_web, NeoscanWeb.Endpoint,
  http: [
    port: 4000
  ],
  debug_errors: true,
  secret_key_base: "J8EWtXVVWp+AmNn4fmdodz17pug1X8v8QbjiPnNf0IkeFYhY140Dhei7UGUACHXs",
  code_reloader: true,
  check_origin: false,
  watchers: [
    node: [
      "node_modules/brunch/bin/brunch",
      "watch",
      "--stdin",
      cd: Path.expand("../assets", __DIR__)
    ]
  ]

# ## SSL Support
#
# In order to use HTTPS in development, a self-signed
# certificate can be generated by running the following
# command from your terminal:
#
#     openssl req -new -newkey rsa:4096 -days 365 -nodes -x509
#     -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=www.example.com"
#     -keyout priv/server.key -out priv/server.pem
#
# The `http:` config above can be replaced with:
#
#     https: [port: 4000, keyfile: "priv/server.key",
#             certfile: "priv/server.pem"],
#
# If desired, both `http:` and `https:` keys can be
# configured to run both http and https servers on
# different ports.

# Watch static and templates for browser reloading.
config :neoscan_web, NeoscanWeb.Endpoint,
  live_reload: [
    patterns: [
      ~r{priv/static/.*(js|css|png|jpeg|jpg|gif|svg)$},
      ~r{priv/gettext/.*(po)$},
      ~r{lib/neoscan_web/views/.*(ex)$},
      ~r{lib/neoscan_web/templates/.*(eex)$}
    ]
  ]
