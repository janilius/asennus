## h5

Tehtävänanto: h5. Tee moduli git-varastoon ja kirjoita raportti sinne MarkDownilla.
Update: Bonustehtävänä voit kokeilla kloonata uusi modulisi vasta bootatulle live-USB:lle.

Kirjauduin Githubiin ja tein uuden kansion nimeltä ''Asennus''. Latasin Git:in ja puppetin komennoilla <Sudo apt-get insall puppet git>

Siirryin /etc/puppet/modules kansioon johon kopioin oman kansioni "asennus" komennolla sudo git clone https://github.com/janilius/asennus.git
Seuraavaksi tein sen sisälle kansion manifests kansion ja sen sisälle init.pp tiedoston johon tein moduulin apachen asennusta varten

## Git Hubin käyttö push & pull

Siirryin polussa Asennus kansioon asti ja annoin komennot sudo git add, sudo git commit, sudo git pupp, sudo git push.

## yhteenveto

Testasin githubin käyttöä vielä käytännössä ja aloitin linuxin käytön täysin puhtaalta pöydältä ja kopioin githubista repositoryni
 puppettiin modules kansioon puppetin asennuksen jälkeen ja ajoin komennon sudo puppet apply -e "class {asennus:}" ja apache asentui sitten näin hetkessä.


