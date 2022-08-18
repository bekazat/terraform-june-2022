provisioner "remote-exec" {
    inline = [
        "sudo yum update -y",
        "sudo yum install wget -y",
        "sudo yum install unzip -y",
        "cd /usr/local/bin",
        "sudo wget https://dl.grafana.com/enterprise/release/grafana-enterprise-9.0.2-1.x86_64.rpm",
        "sudo yum install grafana-enterprise-9.0.2-1.x86_64.rpm -y",
        "sudo systemctl start grafana-server.service",
        "sudo systemctl enable grafana-server.service",
        "sudo wget https://github.com/grafana/loki/releases/download/v2.5.0/loki-linux-amd64.zip",
        "sudo wget https://raw.githubusercontent.com/grafana/loki/v2.5.0/cmd/loki/loki-local-config.yaml",
        "sudo unzip loki-linux-amd64.zip",
        "sudo chmod g+x loki-linux-amd64",
        "sudo useradd --system loki",
        "sudo usermod -a -G adm loki",
        "sudo chown root:adm loki-local-config.yaml",
        "sudo chmod g+w loki-local-config.yaml",
        "sudo touch /etc/systemd/system/loki.service",
        "sudo printf "[Unit]
        Description=Loki service
        After=network.target

        [Service]
        Type=simple
        User=loki
        ExecStart=/usr/local/bin/loki-linux-amd64 -config.file /usr/local/bin/loki-local-config.yaml

        [Install]
        WantedBy=multi-user.target" >> /etc/systemd/system/loki.service",
        "sudo chown -R loki:loki /tmp/loki/",
        "sudo systemctl start loki.service",
        "sudo systemctl enable loki.service"
    ]
}