export function getExtractor(id) {
    return fetch(`http://localhost:5291/api/Extractor/${id}`)
        .then((response) => response.json()
    );
}

export function getExtractorProductionItems(extractorType) {
    return fetch(`http://localhost:5291/api/Extractor/ProductionItem/${extractorType}`)
        .then((response) => response.json()
    );
}

export function createExtractor(factoryId, extractorType, nodePurity, productionItemId, clockSpeed) {
    const requestOptions = {
        method: "POST"
    };

    let url = `http://localhost:5291/api/Extractor/?factoryId=${factoryId}&extractorType=${extractorType}&productionItemId=${productionItemId}&clockSpeed=${clockSpeed}`;
    if (nodePurity)
    {
        url = url + `&nodePurity=${nodePurity}`;
    }
    
    return fetch(url, requestOptions)
        .then((response) => response.json())
}

export function updateExtractor(id, clockSpeed) {
    const requestOptions = {
        method: "PUT"
    };
    
    return fetch(`http://localhost:5291/api/Extractor/${id}?clockSpeed=${clockSpeed}`, requestOptions)
        .then((response) => response.json())
}

export function deleteExtractor(id) {
    const requestOptions = {
        method: "DELETE"
    };
    
    return fetch(`http://localhost:5291/api/Extractor/${id}`, requestOptions)
}