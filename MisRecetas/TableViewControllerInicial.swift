//
//  TableViewControllerInicial.swift
//  MisRecetas
//
//  Created by user125877 on 21/4/17.
//  Copyright © 2017 user125877. All rights reserved.
//

import UIKit

class TableViewControllerInicial: UITableViewController {
    
    var recipe: Recipe? = nil
    var recetario: [Recipe] = []
    var recipeToShow: Recipe? = nil

    @IBOutlet var TableRecipes: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        recipe = Recipe(name: "Tortilla Patatas", time: "30 mins", ingredients: ["6 huevos XL", "500gr Patatas", "Aceite" , "Cebolla"], steps: ["Paso 1", "Paso 2", "Paso3", "Paso 4"], rating: "4", image: #imageLiteral(resourceName: "food-1290636_1280"))
        recetario.append(recipe!)
        recipe = Recipe(name: "Hamburguesa", time: "20 mins", ingredients: ["Carne Ternera 200gr", "Queso","Tomate", "Ketchup", "Lechuga", "Bacon"], steps: ["Paso 1", "Paso 2", "Paso3", "Paso 4"], rating: "4", image: #imageLiteral(resourceName: "hamburger-494706_1280"))
        recetario.append(recipe!)
        recipe = Recipe(name: "Pizza Margarita", time: "20 mins", ingredients: ["Base Pizza", "Tomate Frito", "Queso rallado"], steps: ["Paso 1", "Paso 2", "Paso3", "Paso 4"], rating: "4", image: #imageLiteral(resourceName: "pizza-1344720_1280"))
        recetario.append(recipe!)
        recipe = Recipe(name: "Batido Fresa", time: "5 mins", ingredients: ["Fresas 200gr", "Leche", "Azucar"], steps: ["Paso 1", "Paso 2", "Paso3", "Paso 4"], rating: "3", image: #imageLiteral(resourceName: "milkshake-1021027_1280"))
        recetario.append(recipe!)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return recetario.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)

        // Configure the cell...
        cell.textLabel?.text = recetario[indexPath.row].name
        cell.detailTextLabel?.text = "Ingredientes: \(recetario[indexPath.row].ingredients.count)"
        cell.imageView?.image = recetario[indexPath.row].image

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    //Incluimos esta funcion para cuando seleccionemos un item de la lista hacer un siegue
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        recipeToShow = recetario[indexPath.row]
        performSegue(withIdentifier: "SegueToDetail", sender: nil)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        let controller = segue.destination as! ViewController
        // Pass the selected object to the new view controller.
        controller.recipe = recipeToShow
    }
    

}
