export function getFactoryConnection(id) {
    return fetch(`http://localhost:5291/api/FactoryConnection/${id}`)
        .then((response) => response.json()
    );
}

export function createFactoryConnection(exportingFactoryId, importingFactoryId, productionItemId, amount) {
    const requestOptions = {
        method: "POST"
    };
    
    return fetch(`http://localhost:5291/api/FactoryConnection/?exportingFactoryId=${exportingFactoryId}&importingFactoryId=${importingFactoryId}&productionItemId=${productionItemId}&amount=${amount}`, requestOptions)
        .then((response) => response.json())
}

export function updateFactoryConnection(id, amount) {
    const requestOptions = {
        method: "PUT"
    };
    
    return fetch(`http://localhost:5291/api/FactoryConnection/${id}?amount=${amount}`, requestOptions)
        .then((response) => response.json())
}

export function deleteFactoryConnection(id) {
    const requestOptions = {
        method: "DELETE"
    };
    
    return fetch(`http://localhost:5291/api/FactoryConnection/${id}`, requestOptions);
}