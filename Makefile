up:
	docker-compose up -d
up-build:
	docker-compose up -d --build --remove-orphans
up-log:
	docker-compose up --build --remove-orphans
down:
	docker-compose stop
list:
	docker-compose ps
import-data:
	docker exec -it esperluet_mongodb /data/input/import_data.sh esperluet_monitoring companies /data/input/companies.json
	docker exec -it esperluet_mongodb /data/input/import_data.sh esperluet_monitoring zips /data/input/zips.json
	docker exec -it esperluet_mongodb /data/input/import_data.sh esperluet_monitoring restaurants /data/input/restaurants.json