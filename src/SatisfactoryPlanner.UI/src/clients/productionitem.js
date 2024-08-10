export function searchProductionItems() {
    let url = `http://localhost:5291/api/ProductionItem`;

    return fetch(url)
        .then((response) => response.json()
    );
}