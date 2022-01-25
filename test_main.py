from fastapi.testclient import TestClient
from main import app

client = TestClient(app)


def test_index():
    response = client.get("/")
    assert response.status_code == 405

def test_query():
    params = {
        "query": 1+5+8+4+85+61+5+51+5151+5*8*28*2*5*525,
    }
    response = client.post(
        "/", data=params
    )
    assert response.status_code == 200