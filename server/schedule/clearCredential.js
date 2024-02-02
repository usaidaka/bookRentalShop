const { Op } = require("sequelize");
const schedule = require("node-schedule");
const db = require("../../models");

const job = schedule.scheduleJob("10 * * * * *", () => {
  console.log("This job runs every minute!");
});
