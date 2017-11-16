#! /bin/bash

set -o pipefail
set -e

verify_elixir()
{
  mix local.hex --force && mix clean && mix deps.get && mix test && mix credo --strict && mix escript.build
}

verify_python()
{
  python -m unittest discover -s tests
}

verify_scala()
{
  sbt scalastyle test:scalastyle assembly
}

#01
pushd 01-say-hello/elixir_say_hello && verify_elixir && popd

#02
pushd 02-count-characters/elixir_count_characters && verify_elixir  && popd

#03
pushd 03-printing-quotes/elixir_printing_quotes && verify_elixir && popd

#04
pushd 04-mad-lib/elixir_mad_lib && verify_elixir && popd

#05
pushd 05-simple-math/scala-simple-math && verify_scala && popd

#06
pushd 06-retirement-calculator/elixir_retirement_calculator && verify_elixir && popd

#07
pushd 07-area-of-room/elixir_area_of_room && verify_elixir && popd

#08
pushd 08-pizza-party/python-pizza-party && verify_python && popd

#09
pushd 09-paint-calculator/scala-paint-calculator && verify_scala && popd

#10
pushd 10-self-checkout/python-self-checkout && verify_python && popd

bundle install
bundle exec cucumber
