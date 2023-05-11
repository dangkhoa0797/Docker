tee docker-compose.yml << EOF
version: '3'
services:
  registry:
    image: registry:2
    volumes:
      - ./config/config.yml:/etc/docker/registry/config.yml
      - ./data:/var/lib/registry:rw
    ports:
      - "5000:5000"
    networks:
      - registry-ui-net

  ui:
    image: joxit/docker-registry-ui:static
    ports:
      - 8082:80
    environment:
      - REGISTRY_TITLE=My Private Docker Registry
      - REGISTRY_URL=http://registry:5000
      - DELETE_IMAGES=true
      - THEME=auto
    depends_on:
      - registry
    networks:
      - registry-ui-net

networks:
  registry-ui-net:
EOF