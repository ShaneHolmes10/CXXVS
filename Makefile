# Define variables
BUILD_DIR = build
DOCS_DIR = html
UML_DIR = diagrams
COMPILE_COMMANDS = $(BUILD_DIR)/compile_commands.json
DOXYFILE = Doxyfile
CLANG_UML_CONFIG = .clang-uml

# Default target
all: doc uml

hardclean: 
	@echo "Cleaning $(DOCS_DIR), $(UML_DIR), and $(BUILD_DIR)..."
	rm -rf $(DOCS_DIR) $(UML_DIR) $(BUILD_DIR)
	mkdir -p $(DOCS_DIR) $(UML_DIR) $(BUILD_DIR)
	cd $(BUILD_DIR) && cmake ..
	@echo "Folders cleaned and recreated: $(DOCS_DIR), $(UML_DIR), $(BUILD_DIR)"


# Generate documentation using Doxygen
doc: $(DOXYFILE)
	@echo "Generating documentation..."
	doxygen $(DOXYFILE)
	@echo "Documentation generated in $(DOCS_DIR)"

# Generate UML diagrams using clang-uml
uml: $(CLANG_UML_CONFIG)
	@echo "Generating UML diagrams..."
	clang-uml
	@echo "UML diagrams generated in $(UML_DIR)"

# Phony targets (not real files)
.PHONY: all doc uml
