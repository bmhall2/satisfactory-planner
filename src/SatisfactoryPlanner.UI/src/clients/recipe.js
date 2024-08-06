// export function getProperties() {
//     return fetch(`http://localhost:5003/api/Property`)
//         .then((response) => response.json()
//     );
// }

export function getRecipe(id) {
    return fetch(`http://localhost:5291/api/Recipe/${id}`)
        .then((response) => response.json()
    );
}

// export function getPropertyObject(id) {
//     return fetch(`http://localhost:5003/api/PropertyObject/${id}`)
//         .then((response) => response.json()
//     );
// }

export function searchRecipes(term) {
    let url = `http://localhost:5291/api/Recipe`;

    if (term !== undefined) {
        url = url + `?term=${propertyId}`
    }

    return fetch(url)
        .then((response) => response.json()
    );
}