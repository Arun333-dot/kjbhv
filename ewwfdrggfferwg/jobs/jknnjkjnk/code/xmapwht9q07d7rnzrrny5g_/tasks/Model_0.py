from xmapwht9q07d7rnzrrny5g_.utils import *

def Model_0():
    from airflow.operators.python import PythonOperator
    from datetime import timedelta
    import os
    import zipfile
    import tempfile

    return PythonOperator(
        task_id = "Model_0",
        python_callable = invoke_dbt_runner,
        op_kwargs = {
          "is_adhoc_run_from_same_project": False,
          "is_prophecy_managed": True,
          "run_deps": False,
          "run_seeds": True,
          "run_parents": False,
          "run_children": False,
          "run_tests": True,
          "run_mode": "model",
          "entity_kind": "model",
          "entity_name": "ljlkkjkjn",
          "project_id": "3937",
          "git_entity": "tag",
          "git_entity_value": "__PROJECT_FULL_RELEASE_TAG_PLACEHOLDER__",
          "git_ssh_url": "https://github.com/Arun333-dot/kjbhv",
          "git_sub_path": "ewwfdrggfferwg",
          "select": "",
          "threads": "",
          "exclude": "",
          "run_props": " --profile run_profile",
          "envs": {"DBT_DATABRICKS_INVOCATION_ENV" : "prophecy"}, 
          "git_token_secret": "TjVdsyI_b3Lg803p69ibQ_", 
          "dbt_profile_secret": "Occn2Ye3046owA30mOL6V"
        },
    )
