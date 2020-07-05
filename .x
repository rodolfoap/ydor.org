execute(){
	docker ps --format '{{.Names}}'|egrep '^ydororg' &> /dev/null || docker-compose up
}
case "$1" in
	e)
		vi -p pages/main.md pages/toi/{paradigms,basics,notes,nomenclature,applications,faq,books,author}.md _data/sidebars/main.yml _data/topnav.yml
	;;
	""|*)
		execute
	;;
esac
