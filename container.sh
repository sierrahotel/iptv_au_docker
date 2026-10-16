docker run -d \
  --name playlists \
  -e IS_DOCKER='1' \
  --restart=unless-stopped \
  --user 1000:1000 \
  --cap-drop=ALL \
  --cap-add=NET_ADMIN \
  --cap-add=NET_RAW \
  --security-opt=no-new-privileges:true \
  --network host \
  --log-opt max-size=10m \
  --log-opt max-file=3 \
  mjh:playlists python -u ./app.py

exit
CMD [ "python", "-u", "./app.py" ]
