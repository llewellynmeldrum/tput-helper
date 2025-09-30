.PHONY: tput-help
tput-help:
	tput clear

	@msg="<TPUT GUIDE>"; cols=$$(tput cols); lpad=$$(( (cols - $${#msg}) / 2 )); rpad=$$(( cols - $${#msg} - $$lpad ));\
	tput setf $(BLUE);			\
	tput smso;				\
	tput bold;				\
	printf "%*s" 	$$cols "";		\
	tput smul;				\
	printf "%*s" 	$$lpad "";		\
	printf "%s" 	$$msg;			\
	printf "%*s\n" 	$$rpad "";		\
	tput rmul;				\
	printf "%*s" 	$$cols "";		\
	tput sgr0

	@printf "\n\n\n"

	@msg="ATTRIBUTES"; cols=$$(tput cols); lpad=$$(( (cols - $${#msg}) / 2 )); rpad=$$(( cols - $${#msg} - $$lpad ));\
	tput setf $(BLACK);			\
	tput setb $(WHITE);\
	tput smso;				\
	tput bold;				\
	tput smul;				\
	printf "%*s" 	$$(( lpad/2 )) "";		\
	printf "%*s" 	$$(( lpad/2 )) "";		\
	printf "%s" 	$$msg;			\
	printf "%*s\n" 	$$(( rpad/2 )) "";		\
	tput rmul;				\
	tput sgr0
	

	@tput smul; tput setf $(BLACK); tput smso; tput setb $(WHITE);
	@echo "tput sgr0 	-->	resets all attributes"; tput sgr0

	@tput rev; tput smul;
	@echo "tput rev 	-->	Swaps foreground and background color"; tput sgr0

	@tput smso;tput smul;
	@echo "tput smso 	-->	Enable \"Standout\". (Usually same as rev)"; tput sgr0

	@tput rmso;tput smul;
	@echo "tput rmso 	-->	Disable \"Standout\"."; tput sgr0

	@tput rmul; tput setf $(BLACK); tput smso; tput setb $(WHITE);
	@printf "tput smul/rmul	-->	Enable/disable "; tput smul;printf "underline"; tput rmul; echo "."; tput sgr0

	@tput smul; tput dim; 
	@echo "tput dim 	-->	Makes color slightly dimmer"; tput sgr0
	
	@tput smul; tput blink; 
	@echo "tput blink 	-->	Blinks on/off. Many terms dont support this."; tput sgr0

	@printf "\n\n"


	@msg="ANSI COLORS"; cols=$$(tput cols); lpad=$$(( (cols - $${#msg}) / 2 )); rpad=$$(( cols - $${#msg} - $$lpad ));\
	tput setf $(BLACK);			\
	tput setb $(WHITE);\
	tput smso;				\
	tput bold;				\
	tput smul;				\
	printf "%*s" 	$$(( lpad/4 )) "";		\
	printf "%*s" 	$$(( lpad/4 )) "";		\
	printf "%s" 	$$msg;			\
	printf "%*s\n" 	$$(( rpad/2 )) "";		\
	tput rmul;				\
	tput sgr0;


	@tput smul; tput setf $(BLACK); tput smso; tput setb $(WHITE);
	@echo "tput setaf <arg>	-->	Set the (ANSI) foreground to arg.";
	@echo "tput setab <arg>	-->	Set the (ANSI) background to arg."; tput sgr0

	@tput smul;
	@tput setaf 0; tput smso;	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 0 (BLACK)"
	@tput setaf 1; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 1 (RED)"
	@tput setaf 2; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 2 (GREEN)"
	@tput setaf 3; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 3 (YELLOW)"
	@tput setaf 4; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 4 (BLUE)"
	@tput setaf 5; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 5 (PURPLE)"
	@tput setaf 6; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 6 (DARK GREEN/CYAN)"
	@tput setaf 7; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 7 (GREY/WHITE)"

	@printf "\n\n"
	@msg="NORMAL COLORS"; cols=$$(tput cols); lpad=$$(( (cols - $${#msg}) / 2 )); rpad=$$(( cols - $${#msg} - $$lpad ));\
	tput setf $(BLACK);			\
	tput setb $(WHITE);\
	tput smso;				\
	tput bold;				\
	tput smul;				\
	printf "%*s" 	$$(( lpad/4 )) "";		\
	printf "%*s" 	$$(( lpad/4 )) "";		\
	printf "%s" 	$$msg;			\
	printf "%*s\n" 	$$(( rpad/4 )) "";		\
	tput rmul;				\
	tput sgr0;

	@tput smul; tput setf $(BLACK); tput smso; tput setb $(WHITE);
	@echo "tput setf <arg>	-->	Set the foreground to arg.";
	@echo "tput setb <arg>	-->	Set the background to arg."; tput sgr0
	@tput smul;
	@tput setf 0; tput smso;	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 0 (BLACK)"
	@tput setf 1; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 1 (BLUE)"
	@tput setf 2; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 2 (GREEN)"
	@tput setf 3; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 3 (DARK GREEN/CYAN)"
	@tput setf 4; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 4 (RED)"
	@tput setf 5; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 5 (PURPLE)"
	@tput setf 6; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 6 (YELLOW)"
	@tput setf 7; tput smso; 	printf "\t"; tput rmso; tput setf 	$(WHITE); echo "<-- 7 (GREY/WHITE)"
