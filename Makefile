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
