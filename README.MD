Zprovozneni Nette projektu
1. Nainstalovat composer mimo kontejner
2. Stahnout default projekt pomoci composeru
	- composer create-project nette/web-project nazev-projektu
3. Zmenit nastaveni ve vrcholu adresare v souboru .htaccess na "Require all granted"
	- Jinak zpusobuje chybu Permission Denied nebo nejaky podobny 4xx
4. V configu (local.neon) se jmeno DB musi jmenovat "db" a stejne tak server s databazi
	- Heslo se zadava v Dockerfile nebo v docker-compose.yml

Pro Vite:
1. Vygenerovat projekt template podle dokumentace
2. Dockerfile: CMD ["npm", "run", "dev"]
3. package.json je treba upravit takhle:

`"scripts": {
	"dev": "vite --host",
	"build": "vue-tsc --noEmit && vite build",
	"preview": "vite preview"
},`

4. npm install mimo docker?

Dockerfile a docker-compose.yml jsou udelane tak, ze frontend a backend jsou rozdelene do stejne jmenujici se slozek
Tzn. struktura:
- frontend
- backend
- Dockerfile (Nette backend image - PHP 8.1)
- client.Dockerfile (Vue frontend image)
- docker-compose.yml

Zapnout kontejnery:
`docker-compose up -d`
