db = db.getSiblingDB("admin");

db.createUser({
   user: "site",
   pwd: "site",
   roles: [
      { role: "readAnyDatabase", db: "admin" }
   ]
});