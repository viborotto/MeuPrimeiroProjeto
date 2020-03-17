//
//  PrimeiroViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Vittoria Borotto on 17/03/20.
//  Copyright © 2020 Digital Innovation One. All rights reserved.
//

import UIKit

class PrimeiroViewController: UIViewController {
//da familia do ciclo de vida de um VC
    //variavel
    //IBOutlet: significa que esta associada diretamente a um componente de tela
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //funcao disparada toda vez que for apertado
    @IBAction func didTapButton(_ sender: Any) {
        //print("Botão foi apertado")
        nameLabel.text = nameTextField.text
        //queremos que tudo que foi digitado quando apertar no botao apareça um label
    }
    
}
