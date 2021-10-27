setup:
		python3 -m venv ~/.flash-ml-azure
		#source ~/.flask-ml-azure/bin/activate

install: 
		pip install --upgrade pip &&\
			pip install -r requirements.txt
			
test:
		python -m pytest -vv --cov=hello tests_hello.py
		#python -m pytest -vv --nbval notebook.ipynb

lint:
		#hadolint Dockerfile #uncomment to explore linting Dockerfile
		pylint --disable=R,C hello.py
		
all:	install lint test
