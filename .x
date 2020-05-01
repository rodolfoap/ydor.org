execute(){
	docker-compose up
}
case "$1" in
	e)
		vi _config.yml
	;;
	""|*)
		execute
	;;
esac
