# M300-Services
## Persönlicher Wissenstand
Ich persönlich wusste nicht viel über das Thema "Infrastructure as a code". 

### Linux
Ich habe schon einige Erfahrungen mit Linux. In der Firma selber, arbeite ich auch oft mit Linux. Ich kenne aber nur die Basics. Das heisst normale Befehle wie zum Beispiel Verzeichnisse wechseln/erstellen oder Zugriffsberechtigungen der Files ändenr.

### Virtualisierung
Wir hatten das Thema Virtualisierung schon oft in der Schule sowie im überbetrieblichem Kurs behandelt. Wir schauten uns die Arten und deren Unterschiede an. Zusätzlich erstellen wir dutzende male eigene VMs.

### Vagrant
Ich persönlich kannte Vagrant noch gar nicht. Ich finde es aber interessant wie man aus einem Vagrantfile eine ganze Infrastruktur erstellen kann.

### Versionsverwaltung / Git
Ich kenne Git aber habe es selber noch nie richtig benützt.

### Mark Down
Ich habe schon oft von .md Files gehört aber wusste bis vor kurzem nicht, dass Mark Down damit gemeint war.

### Systemsicherheit
Bei jedem Modul war die Systemsicherheit ein wichtiger Aspekt. Wir mussten jedes mal wenn wir eine Infrastruktur aufbauten die Systemsicherheit berücksichtigen. Das heisst, wir mussten jedes mal an die Verbindung von Gerät zu Gerät planen. Sowie auch alle zukünftige Verbindungen.

## Lernschritte
Ich habe zum ersten Mal richtig mit Git Bash und Git Hub gearbeitet. Ich habe schon etwas ähnliches wie Mark Down benützt darum hatte ich eigentlich keine Probleme beim dokumentieren. Ich verstand schnell das Prinzip von Vagrant und wie etwa der Code aussehen soll. Es war bis jetzt mehr oder weniger einfach.

## Vagrant Befehle
| Vagrant Befehle    | Wirkung           |
| ------------------ | -----------------:|
| vagrant up         | Führt das Vagrant File aus |
| vagrant destroy -f | Löscht die erzeugten Daten des Vagrant Files |
| vagrant reload     | Reloaded das Vagrant File |

## Umgebung
Der Webserver läuft auf der IP 192.168.55.100 und der Datenbank Server IP 192.168.55.101. Auf dem Webserver wird der Port 22 und auf dem Datenbank Server der Port 3306 geöffnet.

### Testfälle
| Was wurde getestet        | Soll-Zustand           | Ist-Zustand  |
| ------------------------- |:--------------:| ----:|
| Vagrant      | Durch das Ausführen des Vagrant Files sollen zwei VMs erstellt werden  | Es wurden zwei unterschiedliche VMs erstellt. Eins für Apache2 und eins für Php |
| Apache2      | Wenn man auf 127.0.0.1:8080 zugreift sollte man auf eine Seite, welcher vom Webserver gehostet wird gelangen      |  Man gelangt auf die Default Apache2 Seite |
| Authentifikation | Es soll ein Passwort root gesetzt werden und der soll Remote Zugriff haben  | Es gab keine Fehlermeldung bei der Authentifikation |
| Datenbank | Es soll eine Tabelle mit Werten erstellt werden | Es wurde eine Tabelle mit values erstellt, sowie das Erstelldatum |

## Sicherheitsmassnahmen
### Firewall
Es wurde eine Firewall mit folgendem Befehl installiert: ```sudo apt-get install ufw```
Die wird dann gleich darauf aktiviert: ```ufw enable```

### Ports
Zusätzlich habe ich die Ports 22 und 3306 geöffnet

```sudo ufw allow from 192.168.0.100 to any port 22```

```sudo ufw allow from 192.168.55.101 to any port 3306```

### Reverse Proxy
Ich habe einen Proxy Server installiert und alle zusätzlichen Sicherheitsmodulen die es dafür braucht.

```
sudo apt-get install libapache2-mod-proxy-html
sudo apt-get install libxml2-dev
sudo a2enmod proxy
sudo a2enmod proxy_html
sudo a2enmod proxy_http
```

Der Befehl ```a2enmod``` sorgt dafür, dass die Module aktiviert werden.

## Reflexion
Ich finde das Thema "Infrastructure as a Code" noch sehr interessant. Was mich mich daran interessiert ist, dass man aus nur einem File eine ganze Infrastruktur erstellen kann.

Ich selber habe noch sehr viel über die Funktionen und Befehle von Vagrant gelernt. 





