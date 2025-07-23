db = db.getSiblingDB("228"); // Cria e usa o banco 228

db.createUser({
    user: "site",
    pwd: "site",
    roles: [
        { role: "read", db: "228" }
    ]
});
db.banners.insertOne({ ativo: true, nome: "banner de exemplo" });