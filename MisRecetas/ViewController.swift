//
//  ViewController.swift
//  MisRecetas
//
//  Created by user125877 on 21/4/17.
//  Copyright © 2017 user125877. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var recipe: Recipe? = nil

    @IBOutlet weak var ImagenRecipe: UIImageView!
    
    @IBOutlet weak var tableDetail: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableDetail.dataSource = self
        tableDetail.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        ImagenRecipe.image=recipe?.image
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Hay que crear 2 funciones para indicar el número de celdas de la tabla
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section==0) {
            return 2
        } else if (section==1) {
            return (recipe?.ingredients.count)!
        } else if (section==2) {
            return (recipe?.steps.count)!+1
        } else {
            return 2
        }
    }
    
    /*Si queremos crear varias secciones*/
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if (section==1) {
            return "Ingredientes"
        } else if (section==2) {
            return "Pasos"
        } else if (section==3) {
            return "Rating"
        } else {
            return ""
        }
        
    }
    
    //Y para indicar el contenido de las celdas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let celda = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellRecipeDetails", for: indexPath) //as! RecipeDetailViewCell
        
        
        switch indexPath.section {
        case 0:
            switch indexPath.row {
            case 0:
                cell.textLabel?.text = "Nombre: \(recipe!.name)"
            case 1:
                cell.textLabel?.text = "Tiempo: \(recipe!.time)"
            default:
                print ("case 0 onDefault")
            }
        case 1:
            
            switch indexPath.row {
            /*case 0:
                cell.textLabel?.text = "Ingredientes: \(recipe!.ingredients [indexPath.row])"*/
            default:
                cell.textLabel?.text = "\t" + (recipe?.ingredients [indexPath.row])!
            }
        case 2:
            switch indexPath.row {
            case ((recipe?.steps.count)!):
                cell.textLabel?.text = "Rating: \(recipe!.rating)"
            default:
                cell.textLabel?.text = "\t \(recipe!.steps [indexPath.row])"

            }
        default:
            print ("onDefault")
        }
        
        return cell
    }

}

