//
//  ManhwaModel.swift
//  ManhwaCollection
//
//  Created by Taliya Meyswara on 21/03/24.
//

import Foundation

struct Manhwa:Identifiable, Hashable {
    var id = UUID()
    var title: String
    var genre: [String]
    var releaseDate: String
    var status: String
    var totalChapter: Int
    var author: String
    var type: String
    var sinopsis: String
    var rating: Double
    var posterImage: String
    var urlString: String
}

struct GetData {
    static let sampleData = Manhwa(title: "Eleceed",
                           genre: ["Action", "Fantasy", "Supernatural"],
                           releaseDate: "2018",
                           status: "Ongoing",
                           totalChapter: 276,
                           author: "Jae Ho,Son,손제호",
                           type: "Manhwa",
                           sinopsis: "Kaiden – Pengguna kemampuan misterius yang bersembunyi di dalam tubuh kucing jalanan. Dia kemudian dijemput oleh Jiwoo setelah terluka setelah berkelahi dengan pengguna kemampuan lain. Ia memiliki kepribadian yang keras kepala dan suka memerintah. Jiwoo – anak SMA yang energik dan banyak bicara yang suka kucing. Ia sangat baik dan juga tampaknya memiliki kemampuan khusus.",
                           rating: 8.34,
                                   posterImage: "eleceed",
                                   urlString: "https://www.webtoons.com/en/action/eleceed/list?title_no=1571")
    
    static let manhwaData: [Manhwa] = [
        Manhwa(title: "Eleceed",
               genre: ["Action", "Fantasy", "Supernatural"],
               releaseDate: "2018",
               status: "Ongoing",
               totalChapter: 276,
               author: "Jae Ho,Son,손제호",
               type: "Manhwa",
               sinopsis: "Kaiden – Pengguna kemampuan misterius yang bersembunyi di dalam tubuh kucing jalanan. Dia kemudian dijemput oleh Jiwoo setelah terluka setelah berkelahi dengan pengguna kemampuan lain. Ia memiliki kepribadian yang keras kepala dan suka memerintah. Jiwoo – anak SMA yang energik dan banyak bicara yang suka kucing. Ia sangat baik dan juga tampaknya memiliki kemampuan khusus.",
               rating: 8.34,
               posterImage: "eleceed",
               urlString: "https://www.webtoons.com/en/action/eleceed/list?title_no=1571"),
        Manhwa(title: "Omniscient Readers",
               genre: ["Action", "Fantasy", "Adventure"],
               releaseDate: "2020",
               status: "Ongoing",
               totalChapter: 198,
               author: "JRedice Studio",
               type: "Manhwa",
               sinopsis: "“Ini adalah perkembangan yang kutahu.” Saat dia berpikir kalau, dunia sudah hancur, dan alam semesta terbuat kembali. Kehidupan baru seorang pembaca biasa dimulai di dalam dunia novel, sebuah novel yang sudah dia selesaikan sendiri.",
               rating: 9.19,
               posterImage: "omniscient_reader",
               urlString: "https://www.webtoons.com/id/fantasy/omniscient-reader/list?title_no=2109"),
        Manhwa(title: "The S-Classes That I Raised",
               genre: ["Action", "Fantasy", "Comedy"],
               releaseDate: "2021",
               status: "Ongoing",
               totalChapter: 118,
               author: "biwan, geunseo",
               type: "Manhwa",
               sinopsis: "Seorang F-rank hunter. Dia juga merupakan seorang hyung F-rank tidak berguna dan menyedihkan yang menghambat pertumbuhan adiknya yang luar biasa. Bagi orang sepertiku, yang hidup dengan setengah hati menjalani kehidupan yang penuh malapetaka, lalu berakhir dengan menelan nyawa adikku dan membuatku beregresi. Title yang kudapatkan adalah… ‘Perfect Caregiver’ Benar, kali ini, daripada meributkan tentang diriku sendiri, aku akan menjaga para b*jingan luar biasa itu diam-diam… …itulah yang kupikirkan, tapi para S-rank itu… sedikit aneh",
               rating: 7.85,
               posterImage: "sclass",
               urlString: "https://www.webtoons.com/id/fantasy/my-sclass-hunters/list?title_no=3865"),
        Manhwa(title: "Solo Leveling",
               genre: ["Action", "Fantasy", "Shounen"],
               releaseDate: "2018",
               status: "Ongoing",
               totalChapter: 179,
               author: "Chugong, Jang, Sung-Rak",
               type: "Manhwa",
               sinopsis: "Seong Jin-Woo, seorang Hunter E-rank yang lemah di dunia yang penuh dengan makhluk supernatural yang disebut 'gates'=. Suatu hari, dalam sebuah dungeon, ia hampir mati dan ditinggalkan oleh rekan-rekannya. Namun, ia mendapatkan kekuatan misterius yang memungkinkannya untuk 'level up' dan menjadi Hunter terkuat. Seong Jin-Woo memulai perjalanannya dari seorang yang lemah menjadi Hunter terkuat dengan kekuatan yang luar biasa. Di sepanjang cerita, ia bertemu dengan berbagai karakter dan menghadapi berbagai rintangan, termasuk makhluk-makhluk kuat dan organisasi rahasia.",
               rating: 8.99,
               posterImage: "solev",
               urlString: "https://id.kakaowebtoon.com/content/Solo-Leveling/22?tab=episode"),
        Manhwa(title: "Tower of God",
                      genre: ["Action", "Adventure", "Fantasy"],
                      releaseDate: "2010",
                      status: "Completed",
                      totalChapter: 485,
                      author: "SIU",
                      type: "Manhwa",
                      sinopsis: "Tower of God mengisahkan tentang seorang pemuda bernama Twenty-Fifth Bam yang hidup terisolasi di dalam sebuah terowongan besar dan gelap. Suatu hari, seorang gadis bernama Rachel muncul di depannya dan membawanya ke dunia luar. Rachel ingin memanjat Menara Tuhan, sebuah menara raksasa yang memiliki segalanya, untuk mewujudkan impian yang selalu ia idam-idamkan. Bam bersumpah akan mengikutinya ke manapun, dan memulai petualangan berbahayanya di dalam Menara Tuhan yang penuh misteri.",
                      rating: 9.10,
                      posterImage: "tower_of_god",
                      urlString: "https://www.webtoons.com/en/fantasy/tower-of-god/list?title_no=95"),
               
        Manhwa(title: "The God of High School",
                      genre: ["Action", "Martial Arts", "Adventure"],
                      releaseDate: "2011",
                      status: "Completed",
                      totalChapter: 518,
                      author: "Park Yong-je",
                      type: "Manhwa",
                      sinopsis: "The God of High School mengisahkan tentang turnamen bela diri yang diselenggarakan oleh organisasi misterius bernama Jin Mo-Ri, seorang siswa SMA yang sangat kuat dan berbakat dalam bela diri, memutuskan untuk ikut dalam turnamen tersebut dengan motivasi pribadi. Namun, di balik turnamen tersebut, terdapat konspirasi besar yang akan mengubah takdir dunia.",
                      rating: 8.80,
                      posterImage: "god_of_high_school",
                      urlString: "https://www.webtoons.com/en/action/the-god-of-high-school/list?title_no=66"),
        Manhwa(title: "The Breaker",
                      genre: ["Action", "Martial Arts", "Drama"],
                      releaseDate: "2007",
                      status: "Completed",
                      totalChapter: 72,
                      author: "Jeon Geuk-jin",
                      type: "Manhwa",
                      sinopsis: "The Breaker mengisahkan tentang Shin-woo, seorang siswa SMA biasa yang tanpa sengaja menjadi saksi perkelahian antara murid baru yang misterius, Chun-Woo Han, dan sekelompok murid berandal. Setelah kejadian itu, Shin-woo menjadi tertarik untuk belajar bela diri dari Chun-Woo Han dan terlibat dalam konflik antara sekolahnya dengan organisasi rahasia.",
                      rating: 8.65,
                      posterImage: "the_breaker",
                      urlString: "https://www.webtoons.com/en/action/the-breaker/list?title_no=344"),
        Manhwa(title: "Noblesse",
               genre: ["Action", "Supernatural", "Vampire"],
               releaseDate: "2007",
               status: "Completed",
               totalChapter: 543,
               author: "Son Jae-ho, Lee Gwang-su",
               type: "Manhwa",
               sinopsis: "Noblesse mengisahkan tentang Cadis Etrama Di Raizel, seorang bangsawan (Noble) yang telah tidur selama 820 tahun. Setelah terbangun, ia mencoba beradaptasi dengan kehidupan modern dan bertemu dengan seorang murid SMA bernama Rai, serta teman-temannya. Namun, masa lalunya yang kelam tidak akan membiarkannya hidup dalam kedamaian, dan ia harus berjuang melawan berbagai ancaman yang muncul.",
               rating: 8.90,
               posterImage: "noblesse",
               urlString: "https://www.webtoons.com/en/fantasy/noblesse/list?title_no=87"),
        
        Manhwa(title: "The Beginning After the End",
               genre: ["Action", "Adventure", "Fantasy"],
               releaseDate: "2018",
               status: "Ongoing",
               totalChapter: 150,
               author: "TurtleMe",
               type: "Manhwa",
               sinopsis: "The Beginning After the End mengisahkan tentang Arthur Leywin, seorang raja yang gagal, yang terlahir kembali ke dunia yang berbeda setelah kematiannya. Ia kembali sebagai seorang bayi dengan ingatan masa lalu yang utuh. Dengan pengalaman dan pengetahuannya, Arthur berusaha untuk menjadi lebih kuat dan memperbaiki kehidupan barunya di dunia yang penuh dengan keajaiban dan bahaya.",
               rating: 9.05,
               posterImage: "the_beginning_after_the_end",
               urlString: "https://www.webtoons.com/en/fantasy/the-beginning-after-the-end/list?title_no=2098"),
        
        Manhwa(title: "Hardcore Leveling Warrior",
               genre: ["Action", "Fantasy", "Game"],
               releaseDate: "2016",
               status: "Ongoing",
               totalChapter: 278,
               author: "Kim Sehoon",
               type: "Manhwa",
               sinopsis: "Hardcore Leveling Warrior mengisahkan tentang Hardcore Leveling Warrior, seorang pemain game legendaris di dunia Lucid Adventure yang mendadak kehilangan semua kekayaan, kekuatan, dan reputasinya setelah di-‘reset’ oleh sistem. Ia kemudian berusaha untuk mendapatkan kembali kekuatannya dan membalas dendam pada orang-orang yang telah menyebabkan kehancurannya.",
               rating: 8.75,
               posterImage: "hardcore_leveling_warrior",
               urlString: "https://www.webtoons.com/en/action/hardcore-leveling-warrior/list?title_no=1221")
    ]

    
}

