.PHONY : help

SRC_FILE = Dockerfile docker-compose.yml Makefile
SRC_DIR = docs website

SITE=kb.knoconida.com

PHY_BASE_DIR=/home/hubert/Codes/
AWS_BASE_DIR=/home/ubuntu/Codes/Websites
WEB_ROOT=/var/www/html/

PHY_SERVER=192.168.1.101
AWS_SERVER=35.164.223.56

ID_KEY = /c/LinuxShare/HandsOn/keys/ssh_github.pem

PUB_KEY = ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAgEAvBk/yvT6tfQj0KxwzmQaTxCbfD0r/oM55pyX+E0OW5ihQk/Uj4AjHtBA2IugbVAENGAX+Y4l/if2cerAtSNHV4wCHo1nQDZDftKeSnxVS4SeS5+ziG/oblaoj0AvCVdf+xiRcHgCUqvHXTyNoamimOOG0n9qZjpXOj289EsyYFz87kdcAo1wnlOEqBYX1Bs17rp+ZOIWweBgVHB1f1HHb3VPCnm+1jX74AG8TzLecj7KzxgNWUcmQ1YHsLbNj6S7lIEkliYQoUyxOvcLTC3xMh2UtBqZ4A46rgSA1r/lflq/ZUD2NJtH9a5odG8rDgnMhTmzzfkmh1YwtFdf5aW1c0fygs6kMZrq3djjSqUT77fQYftQNHBNgUvcWVLXqCVXRgfta61PabGGwK7NOJe4ucQNuf0c9imbq2iYIbxTRppMNQ5lrm/ZxBEjgSDW69CRAcKd8YQWBlj0I2VUcTDEfaWF0UF5Oe1tTD+oIpOM0ld7SP6xULb1neH/EQtdq35F8mlkOJv7GpzaUVn3fdvpbKdOfNaNbXhgGvaPWJWyfUNyuWH38oc9SuVvotvyBFk5/atVnWiK70UX28IPjxkIvvSBlGTukXCQ5WeLwvtANowl7fsYL3zds/sIWdY7wNdunlG+t6L/Kk4W7ze6lM+H48NhQDRD4UInCIo4VOLDYTU=

help : 
	@echo "help commands:"
	@echo "  make help: show make command"
	@echo "  make copy: show make command"
	@echo "  make localrun: local run test"
	@echo "  make run: docker-compose up"
	@echo "  make stop: docker-compose down"
	@echo "  make copy2AWSLightsail: copy to AWSLightsail Server"

copy : copy2UbuntuPhy


copy2UbuntuPhy : 
	@echo "ssh to remote server: Ubuntu Physical Server"
	@echo "coping to $(PHY_BASE_DIR)/$(SITE): "
	rsync -avR -e "ssh -i $(ID_KEY)" $(SRC_FILE) $(SRC_DIR) hubert@$(PHY_SERVER):$(PHY_BASE_DIR)/$(SITE)
	@echo "done......"
	@echo
	@echo

copy2AWSLightsail : 
	@echo "ssh to remote server: AWSLightsail Server"
	@echo "coping to $(AWS_BASE_DIR)/$(SITE): "
	rsync -avR -e "ssh -i $(ID_KEY)" $(SRC_FILE) $(SRC_DIR) ubuntu@$(AWS_SERVER):$(AWS_BASE_DIR)/$(SITE)
	@echo "done......"
	@echo
	@echo

localrun :
	@echo "Run $(SITE) at localhost:"
	cd website/ && pwd && npm start
	@echo "done......."
	@echo

run : 
	@echo "Deploy $(SITE) with docker-compose:"
	docker-compose up
	@echo "done......."
	@echo
	

stop: 
	@echo "stop $(SITE): "
	docker-compose down
	@echo "done......."
	@echo

test:
	@echo "Travis Test: "
	@echo "ok......."
	@echo

restartUbuntuPhy:
	@echo "ssh to Ubuntu Physical Server and restart service: "
	@echo "ssh in..........................................."
	echo "cd Codes/; make restartKB" | ssh -i  "/c/LinuxShare/HandsOn/keys/ssh_github.pem"  hubert@192.168.1.101
	@echo "ssh out..........................................."
	@echo "ok......."

deployAWSLightsail:
	@echo "ssh to AWS Lightsail server and deploy service: "
	@echo "ssh in..........................................."
	echo "cd kb.knoconida.com/; make remove; make up" | ssh -i  "/c/LinuxShare/HandsOn/keys/ssh_github.pem"  ubuntu@$(AWS_SERVER)
	@echo "ssh out..........................................."
	@echo "ok......."

travisDeployAWSLightsail:
	@echo "add known host to travis:"
	echo  $(PUB_KEY) >> ~/.ssh/known_hosts
	@echo "ssh to AWS Lightsail server and deploy service: "
	@echo "ssh in..........................................."
	echo "cd kb.knoconida.com/; ls; " | ssh  ubuntu@$(AWS_SERVER)
	@echo "ssh out..........................................."
	@echo "ok......."