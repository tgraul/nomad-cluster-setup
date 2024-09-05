# Nomad Cluster Setup

This project provides a simple way to set up a Nomad cluster with Consul and deploy a sample web application.

## Requirements

- Ubuntu/Debian server
- Bash shell
- Internet connection

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/yourusername/nomad-cluster-setup.git
    cd nomad-cluster-setup
    ```

2. Run the setup scripts to install Nomad and Consul:
    ```bash
    ./scripts/install_nomad.sh
    ./scripts/install_consul.sh
    ./scripts/setup_cluster.sh
    ```

## Example Deployment

To deploy the sample web application (NGINX) using Nomad, run the following command:
    ```bash
    nomad job run example_jobs/example_web_service.nomad
    ```

You can access the web application at http://<your-server-ip>:8080.

## Further Enhancements

- Integration with Traefik or NGINX for advanced ingress routing
- Adding monitoring tools like Prometheus or Grafana

## License

This project is licensed under the MIT License. See the LICENSE file for more information.
