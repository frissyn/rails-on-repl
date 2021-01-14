declare -a gems=("rake", "nokogiri", "rails")

bundle init

for gem in "${gems[@]}"; do
    bundle add --skip-install "$gem"
done

bundle config --parseable path
bundle config set --local clean 'true'
bundle config set --local path '.bundle'

bundle install
