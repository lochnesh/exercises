set -o pipefail
set -e

#01
pushd 01-say-hello/elixir_say_hello && mix test && mix credo --strict && popd

#02
pushd 02-count-characters/elixir_count_characters && mix test && popd

#03
pushd 03-printing-quotes/elixir_printing_quotes && mix test && popd

#04
pushd 04-mad-lib/elixir_mad_lib && mix test && popd

#05
pushd 05-simple-math/scala-simple-math && sbt test && popd
