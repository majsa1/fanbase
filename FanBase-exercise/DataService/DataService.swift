//
//  DataService.swift
//  FanBase-exercise
//
//  Created by Marjo Salo on 20/10/2020.
//

import Foundation

class DataService {
    static let instance = DataService()
    
    private let movies = [
        Movie(title: "Little Miss Sunshine (2006)"),
        Movie(title: "The Kids Are All Right (2010)"),
        Movie(title: "The Intouchables (2011)"),
        Movie(title: "Her (2013)"),
        Movie(title: "Boyhood (2014)")
    ]
    
    private let littleMissSunshine = [
        Actor(name: "Toni Collette", imageName: "Toni Collette.jpg", information: "Toni Collette-Galafassi (born Toni Collett; 1 November 1972), known professionally as Toni Collette, is an Australian actress, producer, and singer-songwriter. She is known for her work in independent films as well as supporting roles in studio films, for which she has received numerous accolades."),
        Actor(name: "Steve Carell", imageName: "Steve Carell.jpg", information: "Steven John Carell (born August 16, 1962) is an American actor, comedian, writer, producer, and director. He is best known for his portrayal of boss Michael Scott on the NBC sitcom The Office (2005–2013), on which he also worked as an occasional producer, writer and director."),
        Actor(name: "Abigail Breslin", imageName: "Abigail Breslin.jpg", information: "Abigail Kathleen Breslin (born April 14, 1996) is an American actress and singer. Born and raised in New York City, Breslin began acting in commercials when she was three years old and made her film debut in M. Night Shyamalan's science fiction horror film Signs (2002), at the age of five, for which she was nominated for a Young Artist Award."),
        Actor(name: "Greg Kinnear", imageName: "Greg Kinnear.jpg", information: "Gregory Buck Kinnear (born June 17, 1963) is an American actor, producer and television personality. He was nominated for an Academy Award for Best Supporting Actor for his role in As Good as It Gets (1997)."),
        Actor(name: "Paul Dano", imageName: "Paul Dano.jpg", information: "Paul Franklin Dano (born June 19, 1984) is an American actor, director, screenwriter, producer, and musician.")
    ]
    
    private let theKidsAreAllRight = [
        Actor(name: "Annette Bening", imageName: "Annette Bening.jpg", information: "Annette Carol Bening (born May 29, 1958) is an American actress. She began her career on stage with the Colorado Shakespeare Festival company in 1980, and played Lady Macbeth in 1984 at the American Conservatory Theater. She was nominated for the 1987 Tony Award for Best Featured Actress in a Play for her Broadway debut in Coastal Disturbances and for the 2019 Tony Award for Best Actress in a Play for All My Sons. She is a four-time Academy Award nominee for the films: The Grifters (1990), American Beauty (1999), Being Julia (2004), and The Kids Are All Right (2010). In 2006, she received a film star on the Hollywood Walk of Fame."),
        Actor(name: "Julianne Moore", imageName: "Julianne Moore.jpg", information: "Julie Anne Smith (born December 3, 1960), known professionally as Julianne Moore, is an American-British actress and author. Prolific in film since the early 1990s, she is particularly known for her portrayals of emotionally troubled women in both independent and blockbuster films, and has received many accolades, including an Academy Award, two Emmy Awards, and two Golden Globes. Time magazine named Moore one of the 100 most influential people in the world in 2015."),
        Actor(name: "Mark Ruffalo", imageName: "Mark Ruffalo.jpg", information: "Mark Alan Ruffalo (born November 22, 1967) is an American actor and producer. He began acting in the early 1990s and first gained recognition for his work in Kenneth Lonergan's play This Is Our Youth (1998) and drama film You Can Count On Me (2000)."),
        Actor(name: "Mia Wasikowska", imageName: "Mia Wasikowska.jpg", information: "Mia Wasikowska (born 25 October 1989) is an Australian actress. She made her screen debut on the Australian television drama All Saints in 2004, followed by her feature film debut in Suburban Mayhem (2006). She first became known to a wider audience following her critically acclaimed work on the HBO television series In Treatment."),
        Actor(name: "Josh Hutcherson", imageName: "Josh Hutcherson.jpg", information: "Joshua Ryan Hutcherson (born October 12, 1992) is an American actor and producer. Hutcherson began his acting career in the early 2000s and appeared in several commercials and minor film and television roles before landing his first major role in 2002 in the pilot episode of House Blend. His first film role was in Miracle Dogs (2003) on Animal Planet, followed by a motion-capture performance in The Polar Express (2004) and a voice-acting role in Howl's Moving Castle (2005).")
    ]
    
    private let theIntouchables = [
        Actor(name: "François Cluzet", imageName: "François Cluzet.jpg", information: "François Cluzet (born 21 September 1955) is a French film and theatre actor. In 2007, Cluzet won a French César Award after starring as a doctor suspected of double homicide in thriller Tell No One (original title Ne le dis à personne). Cluzet may be best known for his role as Philippe in the international hit film The Intouchables (2011)."),
        Actor(name: "Omar Sy", imageName: "Omar Sy.jpg", information: "Omar Sy born 20 January 1978) is a French actor and comedian. He is known for his sketches with Fred Testot and his roles in The Intouchables, X-Men: Days of Future Past, Jurassic World, and Transformers: The Last Knight. In 2012, Sy received the César Award for his role in The Intouchables, becoming the first recipient of sub-Saharan African descent to win the award."),
        Actor(name: "Anne Le Ny", imageName: "Anne Le Ny.jpg", information: "Anne Le Ny (born 15 December 1962) is a French actress, screenwriter and film director."),
        Actor(name: "Audrey Fleurot", imageName: "Audrey Fleurot.jpg", information: "Audrey Fleurot (born 6 July 1977) is a French actress. She is best known for playing the Lady of the Lake in Kaamelott, Joséphine Karlsson in Spiral and Hortense Larcher in Un village français. In 2011, she played Magalie in the international hit, The Intouchables."),
        Actor(name: "Alba Gaïa Kraghede Bellugi", imageName: "Alba Gaïa Kraghede Bellugi.jpg", information: "Alba Gaïa Bellugi (born Alba Gaïa Kraghede Bellugi; 5 March 1995) is a French actress of Danish and Italian origin. She is best known for her performance as Elisa in The Intouchables (2011).")
    ]
    
    private let her = [
        Actor(name: "Joaquin Phoenix", imageName: "Joaquin Phoenix.jpg", information: "Joaquin Rafael Phoenix (born October 28, 1974) is an American actor, environmentalist, animal rights activist, and producer. He has received numerous accolades, including an Academy Award, a Grammy Award, and two Golden Globe Awards."),
        Actor(name: "Amy Adams", imageName: "Amy Adams.jpg", information: "Amy Lou Adams (born August 20, 1974) is an American actress. Known for both her comedic and dramatic performances, she has placed three times in annual rankings of the highest-paid actresses in the world. Her accolades include two Golden Globes, and nominations for six Academy Awards and seven British Academy Film Awards."),
        Actor(name: "Rooney Mara", imageName: "Rooney Mara.jpg", information: "Patricia Rooney Mara (born April 17, 1985) is an American actress and animal rights activist. Born into the Rooney and Mara sports business families, she graduated from the Gallatin School of Individualized Study in 2010. She began acting in television and independent films, such as the coming-of-age drama Tanner Hall (2009), and first gained recognition for a supporting role in David Fincher's biographical drama The Social Network (2010)."),
        Actor(name: "Olivia Wilde", imageName: "Olivia Wilde.jpg", information: "Olivia Wilde (born Olivia Jane Cockburn; March 10, 1984) is an American-Irish actress and filmmaker. She is known for her role as Remy \"Thirteen\" Hadley on the medical-drama television series House (2007–2012),and her roles in the films Conversations with Other Women (2005), Alpha Dog (2007), Tron: Legacy (2010), Cowboys & Aliens (2011), Butter (2011), Drinking Buddies (2013), The Incredible Burt Wonderstone (2013), Rush (2013), The Lazarus Effect (2015), Love the Coopers (2015), and Meadowland (2015)."),
        Actor(name: "Scarlett Johansson", imageName: "Scarlett Johansson.jpg", information: "Scarlett Ingrid Johansson (born November 22, 1984) is an American actress and singer. The world's highest-paid actress since 2018, she has made multiple appearances in the Forbes Celebrity 100. Her films have grossed over $14.3 billion worldwide, making Johansson the ninth-highest-grossing box office star of all time. She is the recipient of several accolades, including a Tony Award and a BAFTA Award, as well as nominations for two Academy Awards and five Golden Globe Awards.")
    ]
    
    private let boyhood = [
        Actor(name: "Patricia Arquette", imageName: "Patricia Arquette.jpg", information: "Patricia Arquette (born April 8, 1968) is an American actress. She has received various accolades, including an Academy Award, two Primetime Emmy Awards, and three Golden Globe Awards."),
        Actor(name: "Ellar Coltrane", imageName: "Ellar Coltrane.jpg", information: "Ellar Coltrane Kinney Salmon (born August 27, 1994), known professionally as Ellar Coltrane, is an American actor and model. He is best known for the role as Mason Evans Jr. in Richard Linklater's film Boyhood (2014), for which he won the Critics' Choice Movie Award for Best Young Performer."),
        Actor(name: "Lorelei Linklater", imageName: "Lorelei Linklater.jpg", information: "Lorelei Grace Linklater (born May 29, 1994) is a Mexican-born American actress. She is the daughter of Christina Harrison and director Richard Linklater."),
        Actor(name: "Ethan Hawke", imageName: "Ethan Hawke.jpg", information: "Ethan Green Hawke (born November 6, 1970) is an American actor, writer, and director. He has been nominated for four Academy Awards and a Tony Award. Hawke has directed three feature films, three off-Broadway plays, and a documentary. He has also written three novels and one graphic novel."),
        Actor(name: "Libby Villari", imageName: "Libby Villari.jpg", information: "Margaret Elizabeth \"Libby\" Villari (née Webb; born November 17, 1951) is an American actress. She is best known for her recurring role as Mayor Lucy Rodell on Friday Night Lights. Her film appearances include Boyhood, Infamous, What's Eating Gilbert Grape, Boys Don't Cry, and The Faculty.")
    ]

    func getMovies() -> [Movie] {
        return movies
    }
    
    func getActors(forMovie row: Int) -> [Actor] {
        switch row {
        case 0:
            return littleMissSunshine
        case 1:
            return theKidsAreAllRight
        case 2:
            return theIntouchables
        case 3:
            return her
        case 4:
            return boyhood
        default:
            return littleMissSunshine
        }
    }
}

