# MongoDB Monitoring using Prometheus, MongoDB Exporter and Grafana Open source

This project utilizes Docker Compose to deploy a comprehensive MongoDB monitoring environment, including the following services: MongoDB, Mongo Express, MongoDB Exporter, Prometheus, and Grafana Open source.

## Prerequisites

Make sure you have the following tools installed on your machine before getting started:

- [Docker](https://docs.docker.com/get-docker/): Docker is a platform for developing, shipping, and running applications in containers.
- [Docker Compose](https://docs.docker.com/compose/install/): Docker Compose is a tool for defining and running multi-container Docker applications.

Additionally, ensure that you have the `make` command available. On most Unix-like systems (including Linux and macOS), `make` is pre-installed. For Windows users, you can install `make` through tools like [Cygwin](https://www.cygwin.com/) or [Make for Windows](http://gnuwin32.sourceforge.net/packages/make.htm).

## Configuration

1. Clone this repository on your local machine:

   ```bash
   git clone https://github.com/Lionelsan95/prometheus_grafana_monitoring.git
   ```

2. Navigate to the project directory:

   ```bash
   cd prometheus_grafana_monitoring
   ```

## Usage

The project includes a Makefile with the following commands:

- `make up`: Start the services using Docker Compose.
- `make up-log`: Start the services with detailed logs using Docker Compose.
- `make up-build`: Start the services and rebuild images using Docker Compose.
- `make down`: Stop the services using Docker Compose.
- `make list`: List available containers using Docker compose.
- `make import-data`: Import data into mongodb so that they can be visible in grafana.

Example usage:

```bash
make up
```

```bash
make down
```

## Service Access

- MongoDB: `mongodb://localhost:27017`
- Mongo Express: [http://localhost:8081](http://localhost:8081)
- Prometheus: [http://localhost:9090](http://localhost:9090)
- MongoDB Exporer: [http://localhost:9216](http://localhost:9216)
- Grafana: [http://localhost:8186](http://localhost:8186)

## Stopping the Project

To stop the services, use the following command:

```bash
make down
```

Certainly! Below is an additional section for your README specifically covering the backoffice and credentials:

## Backoffice and Credentials

### Grafana:

[Grafana](https://grafana.com/) is the monitoring and observability platform used in this project. You can access the Grafana dashboard through your web browser.

- **URL:** [http://localhost:3000](http://localhost:3000)
- **Default Credentials:**
  - **Username:** admin
  - **Password:** admin

Upon accessing Grafana, it's recommended to change the default credentials for security reasons. You can modify the login credentials in Grafana under the "Profile" settings.

### Mongo Express:

[Mongo Express](https://github.com/mongo-express/mongo-express) is a web-based MongoDB admin interface. It provides a convenient way to interact with your MongoDB instance.

- **URL:** [http://localhost:8081](http://localhost:8081)
- **Default Credentials:**
  - **Username:** root
  - **Password:** jesusmylord

Just like Grafana, it's crucial to update the default credentials for Mongo Express to enhance security. You can modify the login credentials in Mongo Express by navigating to the "Settings" section.

## Changing Credentials

To change credentials for Grafana and Mongo Express:

1. **Grafana:**
   - Log in to Grafana using the default credentials (admin/admin).
   - Click on the gear icon (⚙️) in the left sidebar to open the "Settings" menu.
   - Navigate to "Profile" and update the login credentials.

2. **Mongo Express:**
   - Log in to Mongo Express using the default credentials (root/jesusmylord).
   - Click on the "Settings" icon (⚙️) in the top-right corner.
   - Go to the "Users" tab and update the username and password.

Remember to keep your credentials secure and follow best practices for password management. Update the credentials regularly to enhance the security of your MongoDB monitoring setup.

Certainly! Below is an updated section in the README instructing users to configure Prometheus as a data source and import the Grafana dashboard JSON file:

## Setting Up Grafana Dashboard

To visualize MongoDB metrics, we provide a pre-configured Grafana dashboard in the `grafana` folder named `mongo_db_dashboard.json`. Follow these steps to set up the dashboard:

1. **Access Grafana:**
   - Open your web browser and go to [http://localhost:3000](http://localhost:3000).
   - Log in with the Grafana default credentials (admin/admin).

2. **Add Prometheus as a Data Source:**
   - Click on the "+" icon in the left sidebar to open the "Add your first data source" page.
   - Select "Prometheus" from the list of available data sources.
   - In the "HTTP" section, set the URL to [http://esperluet_prometheus:9090](http://esperluet_prometheus:9090), and click "Save & Test." Ensure that the connection is successful.

3. **Import MongoDB Dashboard:**
   - In the left sidebar, click on the "+" icon and select "Import."
   - Click on "Upload .json file" and choose the `mongo_db_dashboard.json` file from the `grafana` folder in the root directory.
   - Set the "Prometheus" data source in the "Prometheus" field.
   - Click "Import" to create the MongoDB dashboard.

4. **Explore MongoDB Metrics:**
   - Open the "Dashboards" section in the left sidebar and select the "MongoDB Dashboard."
   - Explore various panels to monitor different MongoDB metrics.

Now, you have a comprehensive Grafana dashboard visualizing MongoDB metrics collected by Prometheus. Adjust the time range and explore different panels to gain insights into the performance of your MongoDB instance.

Feel free to customize the dashboard based on your specific monitoring needs. If you encounter any issues or want to contribute improvements, please open an issue or pull request in the project repository. Happy monitoring!

Feel free to contribute, report issues, or suggest improvements by opening an issue or pull request. Thank you for participating!