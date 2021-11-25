# HOW TO USE THIS 🐱‍👓

## Create Environment
Bikin env terlebih dahulu dengan nama env dan masuk ke environment nya 
```
python -m venv env
source env/bin/activate
```


## Installation
Install package yang diperlukan
```
pip install -r requirements.txt
```

## Run
Jalankan program
```
uvicorn main:app --reload
```
<hr>

## API
Gunakan method `post` parameter `query`
```
http://127.0.0.1:8000
```

contoh
```
{
    'query': '1+2*8/(12+9)'
}
```

## Documentation
```
http://127.0.0.1:8000/docs
```
atau
```
http://127.0.0.1:8000/redoc
```