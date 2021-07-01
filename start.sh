# Create file '.heroku/run.sh' containing bash commands
echo 'echo "hello world"' >.heroku/start.sh

heroku buildpacks:set https://github.com/niteoweb/heroku-buildpack-shell.git

until node mcbot.js; do
    echo "Bot stopped with exit code $?. Restarting..." >&2
    sleep 1
done



