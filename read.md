ota proces kako se koristi:
- Da bi se dobila ota opcija na portalu potrebno je uraditi soft reset (5s).
- Nakon soft reset u portalu ce se pojaviti sekcija za ota gde moze da se izmeni http host.
- Potrebno je pokrennuti ota sa odgovarajucom host adresom.
- Ako je sve uspesno uredjaj ce se restartovati i portal zatvotiti ako je matter comissioned.
- Ukoliko nije ok, nakon sledeceg otvaranja portala ce pisati ota greska.
- Portal mora da se zatvori kada krene download bin. Greske pre toga se prikazuju live.
- Ukoliko se host menja, treba manifest menjati zbog bin fajla, treba u skripti setovati host bog url. Takodje verzija u novim build treba da se poklapa sa novom verzijom iz manifest fajla.

run in terminal:
cd /Users/vajsi/Documents/esp32/ota-smart-meter-public/docs
./serve_ota_local.sh 8000

current host config:
OTA_DEFAULT_HOST = "Ivans-MacBook-Air.local:8000";
