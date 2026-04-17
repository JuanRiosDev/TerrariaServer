FROM ryshe/terraria:tshock-1.4.5.6-6.1.0

RUN apt-get update && apt-get install -y --no-install-recommends sqlite3 && rm -rf /var/lib/apt/lists/*

COPY start.sh /start.sh
RUN chmod +x /start.sh

COPY worlds/ /seed-worlds/

ENTRYPOINT ["/start.sh"]
