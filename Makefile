.PHONY : help

SRC_FILE = Dockerfile docker-compose.yml Makefile
SRC_DIR = docs website

SITE=kb.knoconida.com

PHY_BASE_DIR=/home/hubert/Codes/
AWS_BASE_DIR=/home/ubuntu/Codes/Websites
WEB_ROOT=/var/www/html/

PHY_SERVER=192.168.1.101
AWS_SERVER=35.164.223.56

ID_KEY = ~/.ssh/ssh_github.pem

help : 
	@echo "help commands:"
	@echo "  make help: show make command"
	@echo "  make copy: show make command"
	@echo "  make localrun: local run test"
	@echo "  make run: docker-compose up"
	@echo "  make stop: docker-compose down"
	@echo "  make copy2AWSLightsail: copy to AWSLightsail Server"

copy : copy2phy


copy2phy : 
	@echo "ssh to remote server: Ubuntu Physical Server"
	@echo "coping to $(PHY_BASE_DIR)/$(SITE): "
	rsync -avR -e "ssh -i $(ID_KEY)" $(SRC_FILE) $(SRC_DIR) hubert@$(PHY_SERVER):$(PHY_BASE_DIR)/$(SITE)
	@echo "done......"
	@echo
	@echo

copy2aws : 
	@echo "ssh to remote server: AWSLightsail Server"
	@echo "coping to $(AWS_BASE_DIR)/$(SITE): "
	rsync -avR -e "ssh -i $(ID_KEY)" $(SRC_FILE) $(SRC_DIR) ubuntu@$(AWS_SERVER):$(AWS_BASE_DIR)/$(SITE)
	@echo "done......"
	@echo
	@echo

runlocal :
	@echo "Run $(SITE) at localhost:"
	cd website/ && pwd && npm start
	@echo "done......."
	@echo

runphy :
	@echo "ssh to Ubuntu Physical Server and restart service: "
	@echo "ssh in..........................................."
	echo "cd Codes/; make restartKB" | ssh -i  $(ID_KEY)  hubert@192.168.1.101
	@echo "ssh out..........................................."
	@echo "ok......."

deployPhy: copy2phy runphy

deployAWS:
	@echo "ssh to AWS Lightsail server and deploy service: "
	@echo "ssh in..........................................."
	echo "cd kb.knoconida.com/; make remove; make up" | ssh -i  $(ID_KEY)  ubuntu@$(AWS_SERVER)
	@echo "ssh out..........................................."
	@echo "ok......."


test:
	@echo "Travis Test: "
	@echo "ok......."
	@echo

travisDeployAWSLightsail:
	@echo "ssh to AWS Lightsail server and deploy service: "
	@echo "ssh in..........................................."
	echo "cd kb.knoconida.com/; make remove; make up; " | ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o LogLevel=ERROR ubuntu@$(AWS_SERVER)
	@echo "ssh out..........................................."
	@echo "ok......."