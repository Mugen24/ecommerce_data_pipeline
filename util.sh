# https://airflow.apache.org/docs/apache-airflow/3.1.0/airflow.sh
alias docker_run='docker exec -it $(docker ps -f "name=ecommerce_data_pipeline-airflow-scheduler-1" -q) /bin/bash -c "python main.py"'
alias docker_start='docker compose up'
alias docker_stop='docker compose down --volumes --remove-orphans'
alias docker_rm='docker container prune'

function setup {
    (
        cd terraform_configs/ || exit
        terraform init
    )
    python3 -m venv .
    pip3 install -r requirements.txt
}

function start {
    # venv_file="bin/activate"
    # if [ -f "${venv_file}" ]
    # then
    #     source $venv_file
    # fi
    
    # Export .env file as variable 
    # Sets up aws perm
    export $(cat .env | xargs)
}
