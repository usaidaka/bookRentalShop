"use strict";

const bcrypt = require("bcryptjs");

const makePassword = async (pass) => {
  const salt = await bcrypt.genSalt(10);
  const hashed = await bcrypt.hash(pass, salt);
  return hashed;
};

console.log(process.env.DEFAULT_PASSWORD, "process.env.DEFAULT_PASSWORD");

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    const defaultPassword = await makePassword(process.env.DEFAULT_PASSWORD);
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
     */
    return queryInterface.bulkInsert("Customers", [
      {
        id: 1,
        name: "SuperAdmin",
        phone: "0875124851",
        email: "super_admin@gmail.com",
        password: defaultPassword,
        address: "Jl TB Simatupang",
        isAdmin: true,
        credential: null,
        createdAt: new Date(),
        updatedAt: new Date(),
        deletedAt: null,
      },
      {
        id: 2,
        name: "Cristine Alberto",
        phone: "08123515245",
        email: "cristine@gmail.com",
        password: defaultPassword,
        address: "Jl Dewi Sartika",
        isAdmin: false,
        credential: null,
        createdAt: new Date(),
        updatedAt: new Date(),
        deletedAt: null,
      },
      {
        id: 3,
        name: "Michael Anderson",
        phone: "08568234734",
        email: "anderson@gmail.com",
        password: defaultPassword,
        address: "Jl Sudirman",
        isAdmin: false,
        credential: null,
        createdAt: new Date(),
        updatedAt: new Date(),
        deletedAt: null,
      },
      {
        id: 4,
        name: "Veronica Yang",
        phone: "08912352312",
        email: "veronika@gmail.com",
        password: defaultPassword,
        address: "Jl Gatot Subroto",
        isAdmin: false,
        credential: null,
        createdAt: new Date(),
        updatedAt: new Date(),
        deletedAt: null,
      },
    ]);
  },

  async down(queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */
    return queryInterface.bulkDelete("Customers", null, {});
  },
};
