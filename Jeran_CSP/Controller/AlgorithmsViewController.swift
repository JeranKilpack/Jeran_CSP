//
//  AlgorithmsViewController.swift
//  Jeran_CSP
//
//  Created by Kilpack, Jeran on 11/8/17.
//  Copyright © 2017 CTEC. All rights reserved.
//

import UIKit


class AlgorithmsViewController: UIViewController
{
    @IBOutlet weak var algorithmText: UILabel!
    
    
    private func setupAlgorithm() -> Void
    {
        var algorithmSteps : [String] = []
        
        let algorithm :String = "These are the insturctions to create a project in Java using Eclipse and Github \n"
        let stepOne :String = "First, Create the project."
        let stepTwo :String = "Second, Create a repository in github."
        let stepThree :String = "Third, create a runner and controller class or file."
        let stepFour :String = "Fourth, import and create static void mains if needed."
        let stepFive :String = "Fifth, commit to github."
        // TODO: Finish adding all steps to the algorithm.
        algorithmSteps = [stepOne, stepTwo, stepThree, stepFour, stepFive]
        
        let attributesDictionary = [NSAttributedStringKey.font : algorithmText.font]
        let fullAttributedString = NSMutableAttributedString(string: algorithm, attributes: attributesDictionary)
        
        for step in algorithmSteps
        {
            let bullet :String = "<3"
            let formattedStep :String = "\n\(bullet) \(step)"
            let attributedStringStep : NSMutableAttributedString = NSMutableAttributedString(string: formattedStep)
            let paragraphStyle = createParagraphStyle()
            
            attributedStringStep.addAttributes([NSAttributedStringKey.paragraphStyle : paragraphStyle], range: NSMakeRange(0,attributedStringStep.length))
            
            fullAttributedString.append(attributedStringStep)
        }
        
        algorithmText.attributedText = fullAttributedString
    }
    
    private func createParagraphStyle() -> NSParagraphStyle
    {
        let paragraphStyle: NSMutableParagraphStyle = NSMutableParagraphStyle()
        paragraphStyle.alignment = .left
        paragraphStyle.defaultTabInterval = 15
        paragraphStyle.firstLineHeadIndent = 20
        paragraphStyle.headIndent = 35
        
        return paragraphStyle
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
