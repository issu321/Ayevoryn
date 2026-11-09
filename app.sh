cd Ayevoryn
unzip Ayevoryn.zip   # (Assuming your zip file has an extension)
cd Ayevoryn

# 1. Create the virtual environment
python3 -m venv venv

# 2. Activate the virtual environment
source venv/bin/activate

# 3. Install requirements and run the application
pip install -r requirements.txt
python3 app.py
