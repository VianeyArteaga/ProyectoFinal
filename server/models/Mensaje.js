const mongoose = require('mongoose');

const mensajeSchema = new mongoose.Schema({
  nombre: String,
  correo: String,
  mensaje: String,
  fecha: {
    type: Date,
    default: Date.now
  }
});

module.exports = mongoose.model('Mensaje', mensajeSchema);
