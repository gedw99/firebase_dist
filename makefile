
ORG=com.gedw99
NAME=fire_dist_example

print:
	@echo
	@echo ORG:			$(ORG)
	@echo NAME			$(NAME)

ex-init: ex-delete
	mkdir -p $(NAME)
	cd $(NAME) && flutter create --org $(ORG) $(NAME)
ex-delete:
	rm -rf $(NAME)
run-web:
	cd $(NAME) && flutter run -d chrome
run-mac:
	cd $(NAME) && flutter run -d mac
run-ios:
	cd $(NAME) && flutter run -d ios