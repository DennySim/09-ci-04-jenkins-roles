# 09-ci-04-jenkins-roles

1) **Declarative pipeline**  
Бриф задания:   
Сделать Declarative Pipeline Job, 
который будет запускать molecule test из любого вашего репозитория с ролью.
Результат:
    - [DeclarativeJenkinsfile](DeclarativeJenkinsfile)
    - [DeclarativeOutput](DeclarativeOutput)
    
2) **Scripted pipeline**  
Бриф задания:  
Внести необходимые изменения, 
чтобы Pipeline запускал ansible-playbook без флагов --check --diff,
если не установлен параметр при запуске джобы (prod_run = True), 
по умолчанию параметр имеет значение False и запускает прогон с флагами --check --diff
Цель: получить собранный стек ELK в Ya.Cloud.
Результат:
    - [ScriptedJenkinsfile](ScriptedJenkinsfile)
    - [ScriptedOutputProdTrue](ScriptedOutputProdTrue)
    - [ScriptedOutputProdFalse](ScriptedOutputProdFalse)
    
Описание работы скрипта:    
    1. Инфраструктура проекта создается при помощи terraform  
        - cd terraform  
        - terraform init  
        - terraform apply  
    2. Этапы развертывания:  
        - Создание трех виртульных машин на базе Centos7 в облаке Яндекса  
        - Генерация inventory-файла hosts.yml  
        - Установка ролей elasticsearch, kibana, filebeat из удаленных репозиториев  
        - Запуск ansible с установкой и настройкой elasticsearch, kibana, filebeat  
   
        



