all: GBR_adm.zip IRL_adm.zip IMN_adm.zip

GBR_adm.zip:
	wget https://biogeo.ucdavis.edu/data/diva/adm/GBR_adm.zip
	unzip -o GBR_adm.zip

IRL_adm.zip:
	wget https://biogeo.ucdavis.edu/data/diva/adm/IRL_adm.zip
	unzip -o IRL_adm.zip

IMN_adm.zip:
	wget https://biogeo.ucdavis.edu/data/diva/adm/IMN_adm.zip
	unzip -o IMN_adm.zip

clean:
	find . -type f -not -name 'Makefile' -delete
