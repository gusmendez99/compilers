ANTLR_JAR = /usr/local/lib/antlr-4.9.2-complete.jar
ANTLR = java -jar $(ANTLR_JAR)
ANTLR_FLAGS =  -visitor -no-listener

ANTLR_IN_DIR = grammar
ANTLR_OUT_DIR = yapl
GRAMMAR_NAME = YAPL

%: all

all: compile run

compile:
	@echo Generating $(GRAMMAR_NAME) Parser and Lexer...
	$(ANTLR) $(ANTLR_FLAGS) -Dlanguage=Python3 -o $(ANTLR_OUT_DIR) ./$(ANTLR_IN_DIR)/$(GRAMMAR_NAME).g4
	@echo $(GRAMMAR_NAME) compiled successfully!

run:
	@echo Compile and Run Main...
	javac -cp ./$(ANTLR_OUT_DIR)/$(GRAMMAR_NAME):$(ANTLR_JAR) Main.java
	java -cp .:./$(ANTLR_OUT_DIR)/$(GRAMMAR_NAME):$(ANTLR_JAR) Main

clean:
	rm -rf ./$(ANTLR_OUT_DIR)/$(GRAMMAR_NAME)/*.class
	rm -rf ./$(ANTLR_OUT_DIR)/$(GRAMMAR_NAME)/*.java
	rm -rf ./$(ANTLR_OUT_DIR)/$(GRAMMAR_NAME)/*.tokens
	rm -rf ./$(ANTLR_OUT_DIR)/$(GRAMMAR_NAME)/*.interp
	rm -rf ./*.class

