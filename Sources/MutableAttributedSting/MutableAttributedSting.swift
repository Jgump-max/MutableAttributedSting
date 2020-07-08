import UIKit
public extension String{
    var strArray:[String]{
        let chars:[Character] = Array(self)
        var strs:[String] = []
        var str = ""
        for char in chars{
            switch char {
            case "A"..."Z","a"..."z":
                str.append(char)
                
            default:
                strs.append(str)
                str = ""
                strs.append(String(char))
            }
            
            
        }
        if !str.isEmpty{
            strs.append(str)
            str = ""
        }
       
        print(strs)
        return strs
    }
    var mutableAttributedstring:NSMutableAttributedString{
        let attritedString = NSMutableAttributedString(string: "")
        var color = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        for str in strArray{
            switch str {
            case "UILabel","CGRect":
                color = #colorLiteral(red: 0.6979139447, green: 0.5057166815, blue: 0.9234486222, alpha: 1)
                attritedString.append(NSAttributedString(string: str, attributes: [NSAttributedString.Key.foregroundColor:color]))
            case "0"..."9":
                color = #colorLiteral(red: 0.8515674472, green: 0.790599823, blue: 0.4866843224, alpha: 1)
                attritedString.append(NSAttributedString(string: str, attributes: [NSAttributedString.Key.foregroundColor:color]))
            case ".",",","<",">","!","(",")":
                color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
                attritedString.append(NSAttributedString(string: str, attributes: [NSAttributedString.Key.foregroundColor:color]))
            default:
                color = #colorLiteral(red: 0.3056036234, green: 0.6883054376, blue: 0.8010526299, alpha: 1)
                attritedString.append(NSAttributedString(string: str, attributes: [NSAttributedString.Key.foregroundColor:color]))
            }
        }
        //attritedString.addAtributes([NSAttributedString.Key.foregroundColor:UIColor.gray],range: NSRange(location: 0, length: self.count))
        
        return attritedString
    }
    
    
    
    
     
}
