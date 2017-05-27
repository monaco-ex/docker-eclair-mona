FROM java

RUN wget -O eclair-node_2.11-0.2-SNAPSHOT-mona1-4f9b964-capsule-fat.jar  https://github.com/monapu/eclair/releases/download/v0.2-alpha3-mona1/eclair-node_2.11-0.2-SNAPSHOT-mona1-4f9b964-capsule-fat.jar?raw=true

VOLUME /root/.eclair

# server=9735, api=8080
EXPOSE 9735 8080
ENTRYPOINT [ "java", "-jar", "eclair-node_2.11-0.2-SNAPSHOT-mona1-4f9b964-capsule-fat.jar", "--headless=true", "--datadir=/root/.eclair" ] 
