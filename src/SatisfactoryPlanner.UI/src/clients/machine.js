export function getMachine(id) {
    return fetch(`http://localhost:5291/api/Machine/${id}`)
        .then((response) => response.json()
    );
}

export function createMachine(factoryId, machineType, recipeId, clockSpeed) {
    const requestOptions = {
        method: "POST"
    };
    
    return fetch(`http://localhost:5291/api/Machine/?factoryId=${factoryId}&machineType=${machineType}&recipeId=${recipeId}&clockSpeed=${clockSpeed}`, requestOptions)
        .then((response) => response.json())
}

export function updateMachine(id, recipeId, clockSpeed) {
    const requestOptions = {
        method: "PUT"
    };
    
    return fetch(`http://localhost:5291/api/Machine/${id}?recipeId=${recipeId}&clockSpeed=${clockSpeed}`, requestOptions)
        .then((response) => response.json())
}

export function deleteMachine(id) {
    const requestOptions = {
        method: "DELETE"
    };
    
    return fetch(`http://localhost:5291/api/Machine/${id}`, requestOptions)
        .then((response) => response.json())
}