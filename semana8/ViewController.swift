//
//  ViewController.swift
//  semana8
//
//  Created by Anderson Almeyda on 20/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var artworks: [Artwork] = []
    
    @IBOutlet weak var tableFotos: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let artwork1 = Artwork(
            titulo: "Obra de arte", nombre: "Anderson", image: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Jade_ornament_with_grape_design.jpg", description: "Esta es una descripción masna!"
        )
        let artwork2 = Artwork(
            titulo: "Obra de arte", nombre: "Gabriela", image: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Jade_ornament_with_grape_design.jpg", description: "Esta es una descripción masna!"
        )
        let artwork3 = Artwork(
            titulo: "Obra de arte", nombre: "Anderson", image: "https://upload.wikimedia.org/wikipedia/commons/1/1f/Jade_ornament_with_grape_design.jpg", description: "Esta es una descripción masna!"
        )
        artworks.append(artwork1)
        artworks.append(artwork2)
        artworks.append(artwork3)
        
        // Configurar el dataSource de la UITableView
        tableFotos.dataSource = self
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return artworks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTablevIiewCell", for: indexPath) as! CustomTableViewCell
        
        let artwork = artworks[indexPath.row]
        
        cell.lblTitulo.text = artwork.titulo
        cell.lblNombre.text = artwork.nombre
        cell.lblDescription.text = artwork.description
        
        if let url = URL(string: artwork.image) {
            if let data = try? Data(contentsOf: url) {
                cell.img_View.image = UIImage(data: data)
            }
        }
        
        return cell
    }
}

