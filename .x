execute(){
	docker ps --format '{{.Names}}'|egrep '^ydororg' &> /dev/null || docker-compose up
}
case "$1" in
	e)
		grep 'url.*html' _data/sidebars/main.yml|sed -r 's:.*/(.*).html:\1:' > .pages
		vi -p $(sort .pages) _data/sidebars/main.yml _data/topnav.yml
	;;
	""|*)
		execute
	;;
esac
