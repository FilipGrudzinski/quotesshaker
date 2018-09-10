//
//  ViewController.swift
//  quotesshaker
//
//  Created by Filip on 10.09.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var quote: UILabel!
    @IBOutlet weak var author: UILabel!
    
    
    let arrayQuotes = [["Love has no age, no limit; and no death.","John Galsworthy"],["You can't blame gravity for falling in love.","Albert Einstein"],["The journey of a thousand miles begins with one step.","Lao Tzu"],["Honesty is the first chapter in the book of wisdom.","Thomas Jefferson"],["The best preparation for tomorrow is doing your best today.","H. Jackson Brown, Jr."],["There are two ways of spreading light: to be the candle or the mirror that reflects it.","Edith Wharton"],["Ever tried. Ever failed. No matter. Try Again. Fail again. Fail better.","Samuel Beckett"],["Coming together is a beginning; keeping together is progress; working together is success.","Edward Everett Hale"],["Not all those who wander are lost.","J. R. R. Tolkien"],["Whoever is happy will make others happy too.","Anne Frank"],["I have not failed. I've just found 10,000 ways that won't work.","Thomas A. Edison"],["Tell me and I forget. Teach me and I remember. Involve me and I learn.","Benjamin Franklin"],["There is nothing on this earth more to be prized than true friendship.","Thomas Aquinas"],["A leader is one who knows the way, goes the way, and shows the way.","John C. Maxwell"],["Very little is needed to make a happy life; it is all within yourself, in your way of thinking.","Marcus Aurelius"],["The secret of getting ahead is getting started.","Mark Twain"],["The only true wisdom is in knowing you know nothing.","Socrates"],["Everything has beauty, but not everyone sees it.","Confucius"],["In three words I can sum up everything I've learned about life: it goes on.","Robert Frost"],["Love isn't something you find. Love is something that finds you.","Loretta Young"],["Do all things with love.","Og Mandino"],["Love is composed of a single soul inhabiting two bodies.", "Aristotle"],["The only thing necessary for the triumph of evil is for good men to do nothing.","Edmund Burke"],["Do not dwell in the past, do not dream of the future, concentrate the mind on the present moment.","Buddha"],["Don't judge each day by the harvest you reap but by the seeds that you plant.","Robert Louis Stevenson"],["Nothing is impossible, the word itself says 'I'm possible'!","Audrey Hepburn"],["Find a place inside where there's joy, and the joy will burn out the pain.","Joseph Campbell"],["Try to be a rainbow in someone's cloud.","Maya Angelou"],["It is during our darkest moments that we must focus to see the light.","Aristotle"],["Keep love in your heart. A life without it is like a sunless garden when the flowers are dead.","Oscar Wilde"],["The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.","Helen Keller"]]
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        if event?.subtype == UIEventSubtype.motionShake {
            
            let randomArray = Int(arc4random_uniform(UInt32(arrayQuotes.count)))
            
            print(arrayQuotes[randomArray])
            let array = arrayQuotes[randomArray]
            let authorValue = array[1]
            let quoteValue =  array[0]
            quote.text = quoteValue
            author.text = authorValue
            
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

