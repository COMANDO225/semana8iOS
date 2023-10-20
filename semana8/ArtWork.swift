//
//  ArtWork.swift
//  semana8
//
//  Created by Anderson Almeyda on 20/10/23.
//

import Foundation

class Artwork {
    var titulo: String
    var nombre: String
    var image: String
    var description: String

    init(titulo: String,nombre: String, image: String, description: String) {
        self.titulo = titulo
        self.nombre = nombre
        self.image = image
        self.description = description
    }
}
