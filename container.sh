docker run -d \
  --name playlists \
  --restart=unless-stopped \
  --cap-drop=ALL \
  --security-opt=no-new-privileges:true \
  -e IS_DOCKER='1' \
  -e REGION='Perth' \
  --network host \
  --log-opt max-size=10m \
  --log-opt max-file=3 \
  mjh:playlists 

exit
