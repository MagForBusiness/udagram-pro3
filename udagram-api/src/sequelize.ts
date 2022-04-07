import { Sequelize } from "sequelize-typescript";
import { config } from "./config/config";

export const sequelize = new Sequelize({
  username: config.username,
  password: config.password,
  database: config.database,
  host: config.host,
<<<<<<< HEAD
  port: config.dbPort,
=======
  port: config.port,
>>>>>>> 781766bae2b8d16554e04bde83174077e74a3f40

  dialect: "postgres",
  storage: ":memory:",
});