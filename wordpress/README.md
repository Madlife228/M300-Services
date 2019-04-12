# Dockerfile
Das Dockerfile sagt am Docker, wie er ein Image mit einem PHP und WordPress Container erstellen soll.

Das Dockerfile kann man mit folgendenden Befehlen erstellen und editieren.
```touch Dockerfile```
```nano Dockerfile```

# docker-compose.yml
Das docker-compose.yml File sagt am Docker wie er die Wordpress und MariaDB Container starten soll.

Das docker-compose File kann man gleich wie das Dockerfile erstellen und editieren.
```touch docker-compose.yml```
```nano docker-compose.yml```

# Container starten
Container starten und sie im Hintergrund laufen lassen:
```docker-compose up -d```

Container starten und im Vordergrund laufen lassen:
```docker-compose up```

Es sollte dann folgende Meldung erscheinen:
```Creating wordpress-compose_mariadb_1 ... done```
```Creating wordpress-compose_wordpress_1 ... done```

# Weitere Docker Befehle
# Alle gestoppten Container starten
```docker-compose start```

# Alle laufende Container stoppen
```docker-compose stop```

# Konfigurationen validieren und zeigen
```docker-compose config```

# Alle laufende Container anzeigen
```docker-compose ps```

# Alle Container stoppen und entfernen
```docker-compose down```

# Reflexion
Es war sehr Zeitaufwendig. Da ich mich nicht sehr mit Docker auskannte, hatte ich sehr Mühe beim Verstehen der Funktionsweise.
Ich konnte aber mit der Hilfe des Internets verstehen, welche Files benötigt werden und was deren Funktionen sind.
Schlussendlich finde ich Docker ein sehr hilfreiches Tool.
