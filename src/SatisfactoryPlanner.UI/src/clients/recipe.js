export function getRecipe(id) {
    return fetch(`http://localhost:5291/api/Recipe/${id}`)
        .then((response) => response.json()
    );
}

export function searchRecipes(term, machineType) {
    let url = `http://localhost:5291/api/Recipe?`;

    if (term) {
        url = url + `term=${term}`;
    }

    if (machineType)
    {
        url = url + `&machineType=${machineType}`;
    }

    return fetch(url)
        .then((response) => response.json()
    );
}