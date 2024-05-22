//
//  LocationData.swift
//  MapApp
//
//  Created by Samandar on 21/06/22.
//

import Foundation
import MapKit



class LocationDataService {
    
    static let locations: [Location] = [
        
//        Location(
//            name: "Tashkent",
//            cityName: "Oqtepa Lavash",
//            coordinates: CLLocationCoordinate2D(latitude: 41.361916, longitude: 69.313004),
//            description: "Oqtepa is great fast Food.",
//            imageNames: [
//                "IMG_20211128_175546_719"
//            ],
//            link: "https://en.wikipedia.org/wiki/Lavash"),
//
//        Location(
//            name: "Tashkent",
//            cityName: "EVOS",
//            coordinates: CLLocationCoordinate2D(latitude: 43.361916, longitude: 65.313004),
//            description: "Evos is Best fast Food.",
//            imageNames: [
//                "UnknownE2",
//                "UnknownEvos"
//            ],
//            link: "https://en.wikipedia.org/wiki/Lavash"),
//
//        Location(
//            name: "California",
//            cityName: "MC Donalds",
//            coordinates: CLLocationCoordinate2D(latitude: 40.712776, longitude: -74.005974),
//            description: "MC Donalds is Best fast Food.",
//            imageNames: [
//                "Unknown",
//                "Unknown2"
//            ],
//            link: "https://en.wikipedia.org/wiki/McDonald%27s"),
        
        
        
        
        
//        Location(
//            name: "Colosseum",
//            cityName: "Rome",
//            coordinates: CLLocationCoordinate2D(latitude: 41.8902, longitude: 12.4922),
//            description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
//            imageNames: [
//                "rome-colosseum-1",
//                "rome-colosseum-2",
//                "rome-colosseum-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Colosseum"),
//        Location(
//            name: "Pantheon",
//            cityName: "Rome",
//            coordinates: CLLocationCoordinate2D(latitude: 41.8986, longitude: 12.4769),
//            description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
//            imageNames: [
//                "rome-pantheon-1",
//                "rome-pantheon-2",
//                "rome-pantheon-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
//        Location(
//            name: "Trevi Fountain",
//            cityName: "Rome",
//            coordinates: CLLocationCoordinate2D(latitude: 41.9009, longitude: 12.4833),
//            description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
//            imageNames: [
//                "rome-trevifountain-1",
//                "rome-trevifountain-2",
//                "rome-trevifountain-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
//        Location(
//            name: "Eiffel Tower",
//            cityName: "Paris",
//            coordinates: CLLocationCoordinate2D(latitude: 48.8584, longitude: 2.2945),
//            description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
//            imageNames: [
//                "paris-eiffeltower-1",
//                "paris-eiffeltower-2",
//            ],
//            link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
//        Location(
//            name: "Louvre Museum",
//            cityName: "Paris",
//            coordinates: CLLocationCoordinate2D(latitude: 48.8606, longitude: 2.3376),
//            description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bankf of the Seine in the city's 1st arrondissement.",
//            imageNames: [
//                "paris-louvre-1",
//                "paris-louvre-2",
//                "paris-louvre-3",
//            ],
//            link: "https://en.wikipedia.org/wiki/Louvre")
        
        
        
        
        Location(
            name: "Registan Square",
            cityName: "Samarkand",
            coordinates: CLLocationCoordinate2D(latitude: 39.6548, longitude: 66.9750),
            description: "Registan Square is the heart of ancient Samarkand, Uzbekistan, and is one of the most iconic sights in Central Asia. It features three madrasahs: Ulugh Beg Madrasah, Tilya-Kori Madrasah, and Sher-Dor Madrasah, all adorned with intricate tilework and stunning Islamic architecture.",
            imageNames: [
                "samarkand-registan-1",
                "samarkand-registan-2",
                "samarkand-registan-3",
            ],
            link: "https://en.wikipedia.org/wiki/Registan"
        ),
        Location(
            name: "Itchan Kala",
            cityName: "Khiva",
            coordinates: CLLocationCoordinate2D(latitude: 41.3784, longitude: 60.3600),
            description: "Itchan Kala is the walled inner town of the city of Khiva, Uzbekistan. It is an architectural gem, with its well-preserved mosques, madrasahs, palaces, and bazaars dating back to the 12th century. The intricate tilework and minarets make it a UNESCO World Heritage Site.",
            imageNames: [
                "khiva-itchan-kala-1",
                "khiva-itchan-kala-2",
                "khiva-itchan-kala-3",
            ],
            link: "https://en.wikipedia.org/wiki/Itchan_Kala"
        ),
        Location(
            name: "Bukhara Old City",
            cityName: "Bukhara",
            coordinates: CLLocationCoordinate2D(latitude: 39.7753, longitude: 64.4220),
            description: "Bukhara's Old City is an ancient center of Islamic learning and culture. It boasts numerous historic mosques, madrasahs, and bazaars. Highlights include the Kalyan Minaret, the Po-i-Kalyan Complex, and the Ark of Bukhara, all reflecting the city's rich history.",
            imageNames: [
                "bukhara-old-city-1",
                "bukhara-old-city-2",
                "bukhara-old-city-3",
            ],
            link: "https://en.wikipedia.org/wiki/Bukhara"
        )
        
        
        
        

    ]
    
    
}

