# Create file '.heroku/run.sh' containing bash commands
until node mcbot.js; do
    echo "Bot stopped with exit code $?. Restarting..." >&2.heroku/start.sh
    sleep 1
done

heroku buildpacks:set https://github.com/niteoweb/heroku-buildpack-shell.git

