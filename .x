execute(){
	docker ps --format '{{.Names}}'|egrep '^ydororg' &> /dev/null || docker-compose up
}
case "$1" in
	e)
		vi -p pages/{main,author,books}.md pages/toi/{paradigms,basics,notes,nomenclature,applications,faq}.md _data/sidebars/main.yml _data/topnav.yml
	;;
	""|*)
		execute
	;;
esac
