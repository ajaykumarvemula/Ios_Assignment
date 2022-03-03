//
//  ViewController.swift
//  Vemula_SearchApp
//
//  Created by Student on 2/26/22.
//



import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
        
    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var prevButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var arr = [["actor1","actor2","actor3","actor4","actor5"],["pet1","pet2","pet3","pet4","pet5"],["animal1","animal2","animal3","animal4","animal5",],["bg","404"]]
    
    var actors = ["actor","actors","hero","kolywood","Ajith","vijay","surya","vikram","karthi","celebrity"]
    
    var pets = ["pet","Pets","dog","cat","Rabit","Hen","mountain goat"]
    
    var animals = ["animals","animal", "lion","tiger","girafee","zebra","black tiger"]
    
    var topic = 0
    var imag1:Int!
    var imag2:Int!
    var imag3:Int!
    var name1:Int!
    var name2:Int!
    var name3:Int!
    var text1:Int!
    var text2:Int!
    var text3:Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        prevButton.isHidden = true
        nextButton.isHidden = true
        searchButton.isEnabled = false
        resetButton.isHidden = true
        resultImage.image = UIImage(named: arr[3][0])
        topicInfoText.text = nil
//        imageName.text = nil
    }
    
        
    @IBAction func searchTextField(_ sender: UITextField) {
        searchButton.isEnabled = true
        if(sender.text == ""){
            searchButton.isEnabled = false
            
        }
        else{
//            prevButton.isHidden = false
//            nextButton.isHidden = false
            prevButton.isEnabled = false
            nextButton.isEnabled = false
            searchButton.isEnabled = true
            resetButton.isHidden = false
    }
    }
    
        
        
    
    
    var actor = [["Ajith Kumar","Vijay","Surya","Vikram","Karthi"],["Ajith Kumar (born 1 May 1971) is an Indian actor who works predominantly in Tamil cinema. To date, he has starred in over 60 films in Tamil. His awards include four Vijay Awards, three Cinema Express Awards, three Filmfare Awards South and three Tamil Nadu State Film Awards. In addition to his acting, Kumar is also a motor car racer and participated in the MRF Racing series (2010).","Vijay was born Joseph Vijay Chandrasekhar on 22 June 1974 in Madras (now Chennai), Tamil Nadu. His father S. A. Chandrasekhar is a Tamil film director and his mother Shoba is a playback singer and carnatic vocalist. His father S.A. Chandrasekhar is of Christian Tamil descent and his mother Shoba is of Hindu Malayali descent. Vijay was baptised at the of age of 12 as he was born in a Catholic family. In their early days, Vijay's family was a lower-middle-class family and his mother Shoba used to earn ₹100 rupees as her daily wages by singing in concerts, the day she sings only Vijay and his family had food, other days they starved without food. Vijay had a sister Vidhya, who died when she was two years old. His sister's death affected Vijay greatly; according to his mother, Vijay, who was very talkative, naughty and hyperactive as a child, became silent after Vidhya's death.In her memory, Vijay named his production house, V.V Productions, which stands for Vidhya-Vijay productions. Vidhya's memorable photo was shown in the 2005 film Sukran, in which Vijay played an extended cameo.","Saravanan Sivakumar (born 23 July 1975), known by his stage name Suriya, is an Indian actor, producer, television presenter and a philanthropist. He is best known for his work in Tamil cinema, where he is one of the highest paid actors. Among his awards include three Tamil Nadu State Film Awards, four Filmfare Awards South, two Edison Awards, a Cinema Express Award, a CineMAA Award and a Vijay Award. Based on the earnings of Indian celebrities, Suriya has been included in the Forbes India Celebrity 100 list six times.","Vikram was born as Kennedy John Victor on 17 April 1966 to a Christian father and a Hindu mother. His father, John Victor (alias Vinod Raj) was a native of Paramakudi and ran away from home to start a career in films. However, his father did not fare successfully, and only managed to act in supporting roles in Tamil films and television serials and this inspired Vikram to take part in theatre lessons and become professionally trained in classical and cinema dance forms to ensure he became a leading actor.[10][11] Rajeshwari, Vikram's mother, was a sub-collector and her brother, Thiagarajan is an established director-actor in the Tamil film industry; with his son, actor Prashanth, being Vikram's first cousin.[.","Karthik Sivakumar (born 25 May 1977), better known by his stage name Karthi, is an Indian actor who works predominantly in Tamil cinema. He has won three Filmfare Awards South, an Edison Award, a SIIMA Award and a Tamil Nadu State Film Award."]]
    
    let pet = [["Dog","Cat","Rabit","Hen","Mountain Goat"],["A pet, or companion animal, is an animal kept primarily for a person's company or entertainment rather than as a working animal, livestock or a laboratory animal. Popular pets are often considered to have attractive appearances, intelligence and relatable personalities, but some pets may be taken in on an altruistic basis (such as a stray animal) and accepted by the owner regardless of these characteristics."]]
//

    var animal = [["Lion","Tiger","Girafee","Zebra","Black Tiger"],["The lion is a large cat of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane.","The lion is a large cat of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane.","The giraffe is a tall African hoofed mammal belonging to the genus Giraffa. It is the tallest living terrestrial animal and the largest ruminant on Earth. Traditionally, giraffes were thought to be one species, Giraffa camelopardalis, with nine subspecies.","Zebras are African equines with distinctive black-and-white striped coats. There are three living species: the Grévy's zebra, plains zebra, and the mountain zebra. Zebras share the genus Equus with horses and asses, the three groups being the only living members of the family Equidae","A black tiger from the East Indies was exhibited in the Tower of London menagerie; however, it was more likely to have been a black leopard. The 1786 book,"]]
    
    
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        imag1 = 0
        imag2 = 0
        imag3 = 0
        name1 = 0
        name2 = 0
        name3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        prevButton.isHidden = false
        nextButton.isHidden = false
        prevButton.isEnabled = false
        nextButton.isEnabled = false
        resetButton.isEnabled = true
        if(actors.contains(searchTextField.text!)){
            nextButton.isEnabled = true
            prevButton.isEnabled = false
            resultImage.image = UIImage(named: arr[0][imag1])
//            imageName.text = actor[0][name1]
            topic = 1
            topicInfoText.text = actor[1][text1]
        }
        else if(pets.contains(searchTextField.text!)){
            nextButton.isEnabled = true
            prevButton.isEnabled = false
            resultImage.image = UIImage(named: arr[1][imag2])
//            imageName.text = pet[0][]
            topic = 2
            topicInfoText.text = pet[1][0]
        }
        else if(animals.contains(searchTextField.text!)){
            nextButton.isEnabled = true
            prevButton.isEnabled = false
            resultImage.image = UIImage(named: arr[2][imag3])
//            imageName.text = pet[0][name3]
            topic = 3
            topicInfoText.text = animal[1][0]
        }
        else{
            resultImage.image = UIImage(named: arr[3][1])
//            resultImage.image = nil
            topicInfoText.text = nil
//            imageName.text = nil
            prevButton.isHidden = true
            nextButton.isHidden = true
            resetButton.isEnabled = true
        }
        
        
    }
    
    @IBAction func showPrevImagesBtn(_ sender: Any) {
        if(topic == 1){
            imag1 -= 1
            name1 -= 1
            text1 -= 1
            dataUpdate(imgNo: imag1)
        }
        if(topic == 2){
            imag2 -= 1
            name2 -= 1
            text2 -= 1
            dataUpdate(imgNo: imag2)
        }
        if(topic == 3){
            imag3 -= 1
            name3 -= 1
            text3 -= 1
            dataUpdate(imgNo: imag3)
        }
        
    }
    
    @IBAction func showNextImagesBtn(_ sender: Any) {
        if(topic == 1){
            imag1 += 1
            name1 += 1
            text1 += 1
            dataUpdate(imgNo: imag1)
        }
        if(topic == 2){
            imag2 += 1
            name2 += 1
            text2 += 1
            dataUpdate(imgNo: imag2)
        }
        if(topic == 3){
            imag3 += 1
            name3 += 1
            text3 += 1
            dataUpdate(imgNo: imag3)
        }
    }
    
    
    @IBAction func resetButton(_ sender: Any) {
        prevButton.isHidden = true
        nextButton.isHidden = true
//        resultImage.image = UIImage(named: arr[3][0])
        topicInfoText.text = nil
//        imageName.text = nil
        searchTextField.text = nil
        resetButton.isHidden = true
        imag1 = 0
        imag2 = 0
        imag3 = 0
        name1 = 0
        name2 = 0
        name3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        topic = 0
        
        
    }
    
    func dataUpdate(imgNo: Int){
        if(topic == 1){
            if imag1 == arr[0].count-1 {
                nextButton.isEnabled = false
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
//                imageName.text = actor[0][name1]
                topicInfoText.text = actor[1][text1]
            }
            else if(imag1 == 0){
                prevButton.isEnabled = false
                nextButton.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
//                imageName.text = actor[0][name1]
                topicInfoText.text = actor[1][text1]
            }
            else{
                nextButton.isEnabled = true
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
//                imageName.text = actor[0][name1]
                topicInfoText.text = actor[1][text1]
            }
        }
        if(topic == 2){
            if imag2 == arr[1].count-1 {
                nextButton.isEnabled = false
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
//                imageName.text = pet[0][name2]
                topicInfoText.text = pet[1][0]
            }
            else if(imag2 == 0){
                prevButton.isEnabled = false
                nextButton.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
//                imageName.text = Pet[0][name2]
                topicInfoText.text = pet[1][0]
            }
            else{
                nextButton.isEnabled = true
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
//                imageName.text = Pet[0][name2]
                topicInfoText.text = pet[1][0]
                
            }
        }
        if(topic == 3){
            if imag3 == arr[1].count-1 {
                nextButton.isEnabled = false
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
//                imageName.text = animal[0][name3]
                topicInfoText.text = animal[1][text3]
            }
            else if(imag3 == 0){
                prevButton.isEnabled = false
                nextButton.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
//                imageName.text = animal[0][name3]
                topicInfoText.text = animal[1][text3]
            }
            else{
                nextButton.isEnabled = true
                prevButton.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
//                imageName.text = animal[0][name3]
                topicInfoText.text = animal[1][text3]
                
            }
        }
    }
    

    
    
    
    
    
}


