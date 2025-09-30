# https://airflow.apache.org/docs/apache-airflow/3.1.0/airflow.sh
alias run='docker exec -it $(docker ps -f "name=ecommerce_data_pipeline-airflow-scheduler-1" -q) /bin/bash -c "python main.py"'
alias start='docker compose up'
alias stop='docker compose down --volumes --remove-orphans'
alias rm='docker container prune'
