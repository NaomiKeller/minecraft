# Create file '.heroku/run.sh' containing bash commands
until node mcbot.js; do
    echo "Bot stopped with exit code $?. Restarting..." >.heroku/run.sh
    sleep 1

    heroku buildpacks:set https://github.com/niteoweb/heroku-buildpack-shell.git
done



