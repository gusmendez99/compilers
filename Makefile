ANTLR_JAR = /usr/local/lib/antlr-4.10-complete.jar
ANTLR = java -jar $(ANTLR_JAR)
ANTLR_FLAGS =  -visitor -no-listener

ANTLR_IN_DIR = grammar
ANTLR_OUT_DIR = yapl
GRAMMAR_NAME = YAPL

%: all

all: clean compile

compile:
	@echo Generating $(GRAMMAR_NAME) Parser and Lexer...
	$(ANTLR) $(ANTLR_FLAGS) -Dlanguage=Python3 -o $(ANTLR_OUT_DIR) ./$(ANTLR_IN_DIR)/$(GRAMMAR_NAME).g4
	@echo $(GRAMMAR_NAME) compiled successfully!

clean:
	rm -rf ./$(ANTLR_OUT_DIR)/$(ANTLR_IN_DIR)/*.py
	rm -rf ./$(ANTLR_OUT_DIR)/$(ANTLR_IN_DIR)/*.tokens
	rm -rf ./$(ANTLR_OUT_DIR)/$(ANTLR_IN_DIR)/*.interp

