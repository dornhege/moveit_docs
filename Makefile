DOXYFILE=Doxyfile
DOXYGEN=doxygen
SOURCE=webpage

all:	doc

doc:	$(DOXYFILE)
	rm -rf $(SOURCE)/generated
	$(DOXYGEN) $(DOXYFILE)

groovy:	doc
	cd $(SOURCE) && ./copy_page.sh groovy

hydro:	doc
	cd $(SOURCE) && ./copy_page.sh groovy

clean:
	rm -rf $(SOURCE)/generated

.PHONY:	doc
