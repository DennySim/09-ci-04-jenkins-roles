# 09-ci-04-jenkins-roles

1) Описание playbook
    - Playbook устанавливает и настраивает elasticsearch, kibana, filebeat.
2) Тестовое окружение
    - Инфраструктура проекта создается при помощи terraform  
        cd terraform  
        terraform init  
        terraform apply  
    - Этапы развертывания:
        - Создание трех виртульных машин на базе Centos7 в облаке Яндекса
        - Генерация inventory-файла hosts.yml
        - Запуск ansible с установкой и настройкой elasticsearch, kibana, filebeat.
        - elasticsearch, kibana, filebeat устанавливаются ввиде ролей из удаленных репозиториев!!!
        



