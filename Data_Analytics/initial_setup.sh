#!/bin/bash
echo [$(date)] : "STARTING INITIAL SETUP"
export _VERSION_=3.9

echo [$(date)] : "PROJECT DIRECTORY NAME"
read project_name
export project_name_=$project_name

echo [$(date)] : "CREATING PROJECT STRUCTURE"

echo [$(date)] : "CREATING DATA INGESTION"
mkdir ${project_name_}_data_ingestion
touch ${project_name_}_data_ingestion/__init__.py ${project_name_}_data_ingestion/data_ingestion.py

echo [$(date)] : "CREATING DATA VALIDATION"
mkdir ${project_name_}_data_validation
touch ${project_name_}_data_validation/__init__.py ${project_name_}_data_validation/data_validation.py

echo [$(date)] : "CREATING DATA TRANSFORMATION"
mkdir ${project_name_}_data_transformation
touch ${project_name_}_data_transformation/__init__.py ${project_name_}_data_transformation/data_transformation.py

echo [$(date)] : "CREATING DATA VISUALIZATION"
mkdir ${project_name_}_data_visialization
touch ${project_name_}_data_visialization/__init__.py ${project_name_}_data_visialization/data_visialization.py

echo [$(date)] : "CREATING NOTEBOOK FOLDER"
mkdir ${project_name_}_Notebooks

echo [$(date)] : "CREATING API ENDPOINT !"
touch app.py

echo [$(date)] : "CREATING CONDA ENVIRONMENT"
conda create --prefix ./env python=${_VERSION_} -y
source activate ./env

echo [$(date)] : "CREATE REQUIREMENTS TEXT FILE"
touch requirements.txt

echo [$(date)]: "CREATING DOCKER FILE"
touch dockerfile

echo [$(date)]: "CREATING ADDITIONAL FILES"
touch config.yaml

echo [$(date)] : "END"
