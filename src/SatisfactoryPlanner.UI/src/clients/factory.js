export function getFactory(id) {
    return fetch(`http://localhost:5291/api/Factory/${id}`)
        .then((response) => response.json()
    );
}

export function getFactorySummary(id) {
    return fetch(`http://localhost:5291/api/Factory/${id}/summary`)
        .then((response) => response.json()
    );
}

export function getFactoriesByPlaythrough(playthroughId) {
    return fetch(`http://localhost:5291/api/Factory/?playthroughId=${playthroughId}`)
        .then((response) => response.json()
    );
}

export function createFactory(playthroughId, name) {
    const requestOptions = {
        method: "POST"
    };
    
    return fetch(`http://localhost:5291/api/Factory/?playthroughId=${playthroughId}&name=${name}`, requestOptions)
        .then((response) => response.json())
}

export function deleteFactory(id) {
    const requestOptions = {
        method: "DELETE"
    };
    
    return fetch(`http://localhost:5291/api/Factory/${id}`, requestOptions);
}