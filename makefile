start:
	@echo "仮想環境を作成"
	python -m venv .

requirements:
	@echo "requirementsをアップデートします"
	pip freeze > requirements.txt
install:
	@echo "requirementsをインストールします"
	pip install -r requirements.txt
create-api:
	@echo "APIを作成します"
	@read -p "Enter the name of the API: " NAME;cd myapi && python manage.py startapp $${NAME}
create-migration:
	@echo "マイグレーションファイルを作成します"
	@read -p "Enter the name of the API: " NAME;cd myapi && python manage.py makemigrations $${NAME}
migrate:
	@echo "マイグレーションを実行します"
	cd myapi && python manage.py migrate
dev-server:
	@echo "開発サーバーを起動します"
	cd myapi && python manage.py runserver
create-admin-user:
	@echo "管理者ユーザーを作成します"
	cd myapi && python manage.py createsuperuser