//
//  ViewController.swift
//  Vobilishetty_SearchApp
//
//  Created by Student on 3/2/22.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var resultImage: UIImageView!
    
    @IBOutlet weak var topicInfoText: UITextView!
    
    @IBOutlet weak var searchButtonAction: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var showPrevImagesBtn: UIButton!
    
    @IBOutlet weak var showNextImagesBtn: UIButton!
    
    var arr = [["actor1","actor2","actor3","actor4","actor5"],["flower1","flower2","flower3","flower4","flower5"],["animal1","animal2","animal3","animal4","animal5",],["bg","404"]]
    
    var actors = ["actor","actors","hero","tollywood","jrntr","prabhas","maheshbabu","pawankalyan","balakrishna","celebrity","hero","film"]
    
    var flowers = ["flowers","flower","rose","jasmine","sunflower","lotus"]
    
    var animals = ["animals","animal", "lion","elephant","rhino","buffalo","leopard","dog","cat","rabbit"]
    
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
        
        showPrevImagesBtn.isHidden = true
        showNextImagesBtn.isHidden = true
        searchButtonAction.isEnabled = false
        resetButton.isHidden = true
        resultImage.image = UIImage(named: arr[3][0])
        topicInfoText.text = nil
    }
    
   
    
    @IBAction func searchTextField(_ sender: UITextField) {
        searchButtonAction.isEnabled = true
        if(sender.text == ""){
            searchButtonAction.isEnabled = false
            
        }
        else{
            showPrevImagesBtn.isEnabled = false
            showNextImagesBtn.isEnabled = false
            searchButtonAction.isEnabled = true
            resetButton.isHidden = false
        }
        
    }
    
    
    var actor = [["Prabhas","Mahesh Babu","","",""],["Uppalapati Venkata Suryanarayana Prabhas Raju (born 23 October 1979), known mononymously as Prabhas, is an Indian actor who works predominantly in Telugu cinema. One of the highest-paid actors in Indian cinema,[4] Prabhas has featured in Forbes India's Celebrity 100 list three times since 2015 based on his income and popularity.[5][6][7] He has received seven Filmfare Awards South nominations and is a recipient of the Nandi Award and the SIIMA Award.","Ghattamaneni Mahesh Babu (born 9 August 1975) is an Indian actor, producer, media personality, and philanthropist who works mainly in Telugu cinema. He has appeared in more than 25 films, and won several accolades including, eight Nandi Awards, five Filmfare South Awards, four South Indian International Movie Awards, three CineMAA Awards, and one IIFA Utsavam Award.[3][4] He also owns the production house G. Mahesh Babu Entertainment.","Allu Arjun (born 8 April 1982) is an Indian actor who predominantly works in Telugu films. He is one of the highest paid actors in South India and known for his dancing abilities, Allu is a recipient of several awards, including five Filmfare Awards South and five Nandi Awards. Since 2014, he has been featured in Forbes India's Celebrity 100 list based on his income and popularity.","Nandamuri Taraka Rama Rao Jr. (born 20 May 1983), also known as Jr NTR or Tarak, is an Indian actor, singer, and television presenter who works in Telugu cinema. In his film career spanning 20 years, he has worked in over 30 films. Popularly referred as Young Tiger of Tollywood, Rama Rao has received two state Nandi Awards, two Filmfare Awards South and four CineMAA Awards. One of the highest paid Telugu film actors, he was ranked 28th in Forbes India Celebrity 100 list in 2018.","Konidela Ram Charan Teja (born 27 March 1985) is an Indian actor, producer and entrepreneur who works predominantly in Telugu cinema. One of the highest-paid actors in India,[3] he is the recipient of several awards, including three Filmfare Awards and two Nandi Awards. Since 2013, he has been featured in Forbes India's Celebrity 100 list based on his income and popularity."]]

    
    var flower = [["Narcissus","Jasmine","Lotus","Rose","sun flower"],["Narcissus is a genus of predominantly spring flowering perennial plants of the amaryllis family, Amaryllidaceae. Various common names including daffodil,[Note 1] narcissus, and jonquil are used to describe all or some members of the genus. Narcissus has conspicuous flowers with six petal-like tepals surmounted by a cup- or trumpet-shaped corona. The flowers are generally white and yellow (also orange or pink in garden varieties), with either uniform or contrasting coloured tepals and corona.","Jasmine (taxonomic name: Jasminum; /ˈjæsmɪnəm/, YASS-min-əm[5]) is a genus of shrubs and vines in the olive family (Oleaceae). It contains around 200 species native to tropical and warm temperate regions of Eurasia, Africa, and Oceania. Jasmines are widely cultivated for the characteristic fragrance of their flowers. A number of unrelated plants contain the word jasmine in their common names (see Other plants called jasmine).","Lotus Cars Limited is a British automotive company headquartered in Norfolk, England.[3] It manufactures sports cars and racing cars noted for their light weight and fine handling characteristics.Lotus was previously involved in Formula One racing, via Team Lotus, winning the Formula One World Championship seven times.Lotus Cars was founded and owned for many years by Colin Chapman. After his death and a period of financial instability, it was bought by General Motors, then Romano Artioli and DRB-HICOM through its subsidiary Proton. It is currently owned by Chinese multinational Geely, with Etika Automotive as an equity partner.The engineering consultancy firm Lotus Engineering, an offshoot of Lotus Cars, has facilities in the United Kingdom, United States, China, and Malaysia.","A rose is a woody perennial flowering plant of the genus Rosa, in the family Rosaceae, or the flower it bears. There are over three hundred species and tens of thousands of cultivars.[citation needed] They form a group of plants that can be erect shrubs, climbing, or trailing, with stems that are often armed with sharp prickles.[citation needed] Their flowers vary in size and shape and are usually large and showy, in colours ranging from white through yellows and reds.","Helianthus (/ˌhiːliˈænθəs/)[3] is a genus comprising about 70 species of annual and perennial flowering plants in the daisy family Asteraceae.[4][5] Except for three South American species, the species of Helianthus are native to North America and Central America. The common names sunflower and common sunflower typically refer to the popular annual species Helianthus annuus, whose round flower heads in combination with the ligules look like the Sun"]]


    var animal = [["Lion","Cat","Deer","Dog","Tiger"],["The lion (Panthera leo) is a large cat of the genus Panthera native to Africa and India. It has a muscular, deep-chested body, short, rounded head, round ears, and a hairy tuft at the end of its tail. It is sexually dimorphic; adult male lions are larger than females and have a prominent mane. It is a social species, forming groups called prides. A lion's pride consists of a few adult males, related females, and cubs. Groups of female lions usually hunt together, preying mostly on large ungulates. The lion is an apex and keystone predator; although some lions scavenge when opportunities occur and have been known to hunt humans, the species typically does not.","The cat (Felis catus) is a domestic species of a small carnivorous mammal. It is the only domesticated species in the family Felidae and is often referred to as the domestic cat to distinguish it from the wild members of the family. A cat can either be a house cat, a farm cat or a feral cat; the latter ranges freely and avoids human contact. Domestic cats are valued by humans for companionship and their ability to kill rodents. About 60 cat breeds are recognized by various cat registries.","Deer or true deer are hoofed ruminant mammals forming the family Cervidae. The two main groups of deer are the Cervinae, including the muntjac, the elk (wapiti), the red deer, and the fallow deer; and the Capreolinae, including the reindeer (caribou), white-tailed deer, the roe deer, and the moose. Male deer of all species (except the Chinese water deer) as well as female reindeer, grow and shed new antlers each year. In this they differ from permanently horned antelope, which are part of a different family (Bovidae) within the same order of even-toed ungulates (Artiodactyla).","The dog or domestic dog (Canis familiaris or Canis lupus familiaris) is a domesticated descendant of the wolf which is characterized by an upturning tail. The dog is derived from an ancient, extinct wolf, and the modern wolf is the dog's nearest living relative. The dog was the first species to be domesticated, by hunter–gatherers over 15,000 years ago, before the development of agriculture.","The tiger (Panthera tigris) is the largest living cat species and a member of the genus Panthera. It is most recognisable for its dark vertical stripes on orange fur with a white underside. An apex predator, it primarily preys on ungulates such as deer and wild boar. It is territorial and generally a solitary but social predator, requiring large contiguous areas of habitat, which support its requirements for prey and rearing of its offspring. Tiger cubs stay with their mother for about two years, then become independent and leave their mother's home range to establish their own."]]

    
    
    
    @IBAction func searchButtonActionAction(_ sender: UIButton) {
        imag1 = 0
        imag2 = 0
        imag3 = 0
        name1 = 0
        name2 = 0
        name3 = 0
        text1 = 0
        text2 = 0
        text3 = 0
        showPrevImagesBtn.isHidden = false
        showNextImagesBtn.isHidden = false
        showPrevImagesBtn.isEnabled = false
        showNextImagesBtn.isEnabled = false
        resetButton.isEnabled = true
        if(actors.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[0][imag1])
            topic = 1
            topicInfoText.text = actor[1][text1]
        }
        else if(flowers.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[1][imag2])
            topic = 2
            topicInfoText.text = flower[1][text2]
        }
        else if(animals.contains(searchTextField.text!)){
            showNextImagesBtn.isEnabled = true
            showPrevImagesBtn.isEnabled = false
            resultImage.image = UIImage(named: arr[2][imag3])
            topic = 3
            topicInfoText.text = animal[1][text3]
        }
        else{
            resultImage.image = UIImage(named: arr[3][1])
            topicInfoText.text = nil
            showPrevImagesBtn.isHidden = true
            showNextImagesBtn.isHidden = true
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
        showPrevImagesBtn.isHidden = true
        showNextImagesBtn.isHidden = true
        topicInfoText.text = nil
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
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = actor[1][text1]
            }
            else if(imag1 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = actor[1][text1]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[0][imag1])
                topicInfoText.text = actor[1][text1]
            }
        }
        if(topic == 2){
            if imag2 == arr[1].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = flower[1][text2]
            }
            else if(imag2 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = flower[1][text2]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[1][imag2])
                topicInfoText.text = flower[1][text2]
                
            }
        }
        if(topic == 3){
            if imag3 == arr[1].count-1 {
                showNextImagesBtn.isEnabled = false
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = animal[1][text3]
            }
            else if(imag3 == 0){
                showPrevImagesBtn.isEnabled = false
                showNextImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = animal[1][text3]
            }
            else{
                showNextImagesBtn.isEnabled = true
                showPrevImagesBtn.isEnabled = true
                resultImage.image = UIImage(named: arr[2][imag3])
                topicInfoText.text = animal[1][text3]
                
            }
        }
    }
    

    
    
    
    
    
}



