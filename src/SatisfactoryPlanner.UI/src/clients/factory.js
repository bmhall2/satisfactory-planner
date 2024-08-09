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