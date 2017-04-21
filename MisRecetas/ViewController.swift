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
        return 5
    }
    
    /*Si queremos crear varias secciones
    func numberOfSections(in tableView: UITableView) -> Int {
        <#code#>
    }*/
    
    //Y para indicar el contenido de las celdas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = UITableViewCell()
        
        /*if (celda.reuseIdentifier=="CellName"){
            celda.textLabel?.text = recipe?.name}
        else if (celda.reuseIdentifier=="CellIngredients"){
            celda.textLabel?.text = recipe?.ingredients.description}
        else if (celda.reuseIdentifier=="CellPasos"){
            celda.textLabel?.text = recipe?.steps.description}
        else if (celda.reuseIdentifier=="CellRating"){
            celda.textLabel?.text = recipe?.rating}
        else if (celda.reuseIdentifier=="CellTiempo"){
            celda.textLabel?.text = recipe?.time}*/
        if (indexPath.row==0){
            celda.textLabel?.text = recipe?.name}
        else if (indexPath.row==1){
            celda.textLabel?.text = recipe?.ingredients.description}
        else if (indexPath.row==2){
            celda.textLabel?.text = recipe?.steps.description}
        else if (indexPath.row==3){
            celda.textLabel?.text = recipe?.rating}
        else if (indexPath.row==4){
            celda.textLabel?.text = recipe?.time}
        return celda
    }

}

