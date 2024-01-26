//
//  CalculationListController.swift
//  TinkoffCalculator
//
//  Created by Vitali on 26/01/2024.
//

import UIKit

class CalculationListController: UIViewController{
    var result: String?
    
    @IBOutlet weak var calculationLabel: UILabel!
    

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        initialize()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialize()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculationLabel.text = result
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: false)
        title = "Прошлые вычисления"

        
    }
    
    private func initialize(){
        modalPresentationStyle = .fullScreen   
    }
    @IBAction func dismissVC(_ sender: UIButton) {
      //  dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
    }
}
