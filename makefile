start:
	@echo "仮想環境を作成"
	python -m venv .

requirements:
	@echo "requirementsをアップデートします"
	pip freeze > requirements.txt
install:
	@echo "requirementsをインストールします"
	pip install -r requirements.txt