package com.neonreads.dao;

import com.neonreads.model.Book;
import java.util.ArrayList;
import java.util.List;

public class SeedData {
        public static void seed(BookDAO dao) {
                List<Book> books = new ArrayList<>();

                // Fiction (20)
                books.add(new Book("To Kill a Mockingbird", "Harper Lee", 399.0, 1,
                                "Classic novel set in the American South.", 50,
                                "https://covers.openlibrary.org/b/isbn/9780061120084-L.jpg"));
                books.add(new Book("1984", "George Orwell", 299.0, 1, "Dystopian social science fiction novel.", 45,
                                "https://covers.openlibrary.org/b/isbn/9780451524935-L.jpg"));
                books.add(new Book("The Great Gatsby", "F. Scott Fitzgerald", 250.0, 1,
                                "A novel about the American dream.", 40,
                                "https://covers.openlibrary.org/b/isbn/9780743273565-L.jpg"));
                books.add(new Book("Pride and Prejudice", "Jane Austen", 199.0, 1, "Romantic novel of manners.", 35,
                                "https://covers.openlibrary.org/b/isbn/9780141439518-L.jpg"));
                books.add(new Book("The Catcher in the Rye", "J.D. Salinger", 350.0, 1, "Story of teenage alienation.",
                                30, "https://covers.openlibrary.org/b/isbn/9780316769480-L.jpg"));
                books.add(new Book("The Hobbit", "J.R.R. Tolkien", 499.0, 1, "Fantasy novel.", 60,
                                "https://covers.openlibrary.org/b/isbn/9780547928227-L.jpg"));
                books.add(new Book("Fahrenheit 451", "Ray Bradbury", 299.0, 1, "Future where books are outlawed.", 40,
                                "https://covers.openlibrary.org/b/isbn/9781451673319-L.jpg"));
                books.add(new Book("Lord of the Flies", "William Golding", 299.0, 1,
                                "British boys stranded on an island.", 35,
                                "https://covers.openlibrary.org/b/isbn/9780399501487-L.jpg"));
                books.add(new Book("Animal Farm", "George Orwell", 199.0, 1, "Satirical allegorical novella.", 50,
                                "https://covers.openlibrary.org/b/isbn/9780451526342-L.jpg"));
                books.add(new Book("The Alchemist", "Paulo Coelho", 299.0, 1, "A fable about following your dream.", 80,
                                "https://covers.openlibrary.org/b/isbn/9780062315007-L.jpg"));
                books.add(new Book("Harry Potter 1", "J.K. Rowling", 499.0, 1, "The Philosopher's Stone.", 100,
                                "https://covers.openlibrary.org/b/isbn/9780590353427-L.jpg"));
                books.add(new Book("Harry Potter 2", "J.K. Rowling", 499.0, 1, "The Chamber of Secrets.", 90,
                                "https://covers.openlibrary.org/b/isbn/9780439064873-L.jpg"));
                books.add(new Book("Harry Potter 3", "J.K. Rowling", 525.0, 1, "The Prisoner of Azkaban.", 85,
                                "https://covers.openlibrary.org/b/isbn/9780439136358-L.jpg"));
                books.add(new Book("Harry Potter 4", "J.K. Rowling", 599.0, 1, "The Goblet of Fire.", 80,
                                "https://covers.openlibrary.org/b/isbn/9780439139595-L.jpg"));
                books.add(new Book("Harry Potter 5", "J.K. Rowling", 650.0, 1, "The Order of the Phoenix.", 75,
                                "https://covers.openlibrary.org/b/isbn/9780439358064-L.jpg"));
                books.add(new Book("Harry Potter 6", "J.K. Rowling", 620.0, 1, "The Half-Blood Prince.", 70,
                                "https://covers.openlibrary.org/b/isbn/9780439784542-L.jpg"));
                books.add(new Book("Harry Potter 7", "J.K. Rowling", 699.0, 1, "The Deathly Hallows.", 65,
                                "https://covers.openlibrary.org/b/isbn/9780545010221-L.jpg"));
                books.add(new Book("The Kite Runner", "Khaled Hosseini", 399.0, 1,
                                "Story of friendship in Afghanistan.", 55,
                                "https://covers.openlibrary.org/b/isbn/9781594480003-L.jpg"));
                books.add(new Book("Life of Pi", "Yann Martel", 350.0, 1, "Survival story with a tiger.", 50,
                                "https://covers.openlibrary.org/b/isbn/9780156027328-L.jpg"));
                books.add(new Book("The Book Thief", "Markus Zusak", 450.0, 1, "Novel narrated by Death.", 45,
                                "https://covers.openlibrary.org/b/isbn/9780375842207-L.jpg"));

                // Non-Fiction (18)
                books.add(new Book("Sapiens", "Yuval Noah Harari", 499.0, 2, "Brief History of Humankind.", 70,
                                "https://covers.openlibrary.org/b/isbn/9780062316097-L.jpg"));
                books.add(new Book("Educated", "Tara Westover", 450.0, 2, "Memoir of survivalist family.", 60,
                                "https://covers.openlibrary.org/b/isbn/9780399590504-L.jpg"));
                books.add(new Book("Becoming", "Michelle Obama", 699.0, 2, "Memoir by former First Lady.", 80,
                                "https://covers.openlibrary.org/b/isbn/9781524763138-L.jpg"));
                books.add(new Book("Diary of a Young Girl", "Anne Frank", 199.0, 2, "War diary.", 90,
                                "https://covers.openlibrary.org/b/isbn/9780553296983-L.jpg"));
                books.add(new Book("Into the Wild", "Jon Krakauer", 350.0, 2, "True story of Christopher McCandless.",
                                50, "https://covers.openlibrary.org/b/isbn/9780385486804-L.jpg"));
                books.add(new Book("The Glass Castle", "Jeannette Walls", 399.0, 2,
                                "Memoir of unconventional childhood.", 55,
                                "https://covers.openlibrary.org/b/isbn/9780743247542-L.jpg"));
                books.add(new Book("Night", "Elie Wiesel", 250.0, 2, "Holocaust memoir.", 45,
                                "https://covers.openlibrary.org/b/isbn/9780374500016-L.jpg"));
                books.add(new Book("Man's Search for Meaning", "Viktor Frankl", 299.0, 2,
                                "Finding purpose in suffering.", 65,
                                "https://covers.openlibrary.org/b/isbn/9780807014295-L.jpg"));
                books.add(new Book("Thinking, Fast and Slow", "Daniel Kahneman", 499.0, 2, "Two systems of thought.",
                                75, "https://covers.openlibrary.org/b/isbn/9780374275631-L.jpg"));
                books.add(new Book("Quiet", "Susan Cain", 399.0, 2, "Power of introverts.", 50,
                                "https://covers.openlibrary.org/b/isbn/9780307352156-L.jpg"));
                books.add(new Book("Outliers", "Malcolm Gladwell", 399.0, 2, "Story of success.", 60,
                                "https://covers.openlibrary.org/b/isbn/9780316017930-L.jpg"));
                books.add(new Book("The Power of Habit", "Charles Duhigg", 450.0, 2, "Why we do what we do.", 70,
                                "https://covers.openlibrary.org/b/isbn/9780812981605-L.jpg"));
                books.add(new Book("Blink", "Malcolm Gladwell", 399.0, 2, "Power of thinking without thinking.", 55,
                                "https://covers.openlibrary.org/b/isbn/9780316010665-L.jpg"));
                books.add(new Book("A Walk in the Woods", "Bill Bryson", 350.0, 2, "Appalachian Trail journey.", 40,
                                "https://covers.openlibrary.org/b/isbn/9780767902526-L.jpg"));
                books.add(new Book("In Cold Blood", "Truman Capote", 299.0, 2, "True crime novel.", 35,
                                "https://covers.openlibrary.org/b/isbn/9780679745587-L.jpg"));
                books.add(new Book("Tuesdays with Morrie", "Mitch Albom", 250.0, 2, "Memoir.", 80,
                                "https://covers.openlibrary.org/b/isbn/9780767905923-L.jpg"));
                books.add(new Book("Henrietta Lacks", "Rebecca Skloot", 450.0, 2, "Immortal life of HeLa cells.", 45,
                                "https://covers.openlibrary.org/b/isbn/9781400052189-L.jpg"));
                books.add(new Book("Unbroken", "Laura Hillenbrand", 499.0, 2, "WW2 story of survival.", 50,
                                "https://covers.openlibrary.org/b/isbn/9781400064168-L.jpg"));

                // Science (18)
                books.add(new Book("A Brief History of Time", "Stephen Hawking", 450.0, 3, "Cosmology explained.", 60,
                                "https://covers.openlibrary.org/b/isbn/9780553380163-L.jpg"));
                books.add(new Book("Cosmos", "Carl Sagan", 599.0, 3, "Cosmic evolution.", 45,
                                "https://covers.openlibrary.org/b/isbn/9780345331359-L.jpg"));
                books.add(new Book("The Selfish Gene", "Richard Dawkins", 499.0, 3, "Evolutionary biology.", 40,
                                "https://covers.openlibrary.org/b/isbn/9780199291151-L.jpg"));
                books.add(new Book("What If?", "Randall Munroe", 550.0, 3, "Scientific answers.", 55,
                                "https://covers.openlibrary.org/b/isbn/9780544272996-L.jpg"));
                books.add(new Book("Silent Spring", "Rachel Carson", 399.0, 3, "Environmental science.", 35,
                                "https://covers.openlibrary.org/b/isbn/9780618249060-L.jpg"));
                books.add(new Book("The Gene", "Siddhartha Mukherjee", 699.0, 3, "History of the gene.", 40,
                                "https://covers.openlibrary.org/b/isbn/9781476733500-L.jpg"));
                books.add(new Book("Astrophysics in a Hurry", "Neil deGrasse Tyson", 399.0, 3, "Space for busy people.",
                                80, "https://covers.openlibrary.org/b/isbn/9780393609394-L.jpg"));
                books.add(new Book("The Body", "Bill Bryson", 650.0, 3, "Guide for occupants.", 50,
                                "https://covers.openlibrary.org/b/isbn/9780385539302-L.jpg"));
                books.add(new Book("Why We Sleep", "Matthew Walker", 499.0, 3, "Power of sleep.", 60,
                                "https://covers.openlibrary.org/b/isbn/9781501144318-L.jpg"));
                books.add(new Book("The Sixth Extinction", "Elizabeth Kolbert", 450.0, 3, "Unnatural history.", 45,
                                "https://covers.openlibrary.org/b/isbn/9780805092998-L.jpg"));
                books.add(new Book("Guns, Germs, and Steel", "Jared Diamond", 550.0, 3, "Human societies.", 50,
                                "https://covers.openlibrary.org/b/isbn/9780393061314-L.jpg"));
                books.add(new Book("Seven Brief Lessons", "Carlo Rovelli", 299.0, 3, "Physics simplified.", 70,
                                "https://covers.openlibrary.org/b/isbn/9780399184413-L.jpg"));
                books.add(new Book("Reality Is Not What It Seems", "Carlo Rovelli", 350.0, 3, "Quantum gravity.", 40,
                                "https://covers.openlibrary.org/b/isbn/9780735213920-L.jpg"));
                books.add(new Book("The Elegant Universe", "Brian Greene", 499.0, 3, "String theory.", 35,
                                "https://covers.openlibrary.org/b/isbn/9780393058581-L.jpg"));
                books.add(new Book("Short History", "Bill Bryson", 550.0, 3, "Science history.", 65,
                                "https://covers.openlibrary.org/b/isbn/9780767908177-L.jpg"));
                books.add(new Book("Man Who Knew Infinity", "Robert Kanigel", 450.0, 3, "Ramanujan.", 30,
                                "https://covers.openlibrary.org/b/isbn/9780671750619-L.jpg"));
                books.add(new Book("Hidden Figures", "Margot Lee Shetterly", 399.0, 3, "Women at NASA.", 55,
                                "https://covers.openlibrary.org/b/isbn/9780062363596-L.jpg"));
                books.add(new Book("Code Girls", "Liza Mundy", 450.0, 3, "Code breakers.", 40,
                                "https://covers.openlibrary.org/b/isbn/9780316352536-L.jpg"));

                // Technology (20)
                books.add(new Book("Clean Code", "Robert C. Martin", 2999.0, 4, "Agile craftsmanship.", 50,
                                "https://covers.openlibrary.org/b/isbn/9780132350884-L.jpg"));
                books.add(new Book("The Pragmatic Programmer", "Andrew Hunt", 3500.0, 4, "Programming advice.", 45,
                                "https://covers.openlibrary.org/b/isbn/9780201616224-L.jpg"));
                books.add(new Book("Intro to Algorithms", "Thomas Cormen", 999.0, 4, "Algorithm textbook.", 30,
                                "https://covers.openlibrary.org/b/isbn/9780262033848-L.jpg"));
                books.add(new Book("Design Patterns", "Erich Gamma", 3200.0, 4, "OO software patterns.", 40,
                                "https://covers.openlibrary.org/b/isbn/9780201633610-L.jpg"));
                books.add(new Book("Refactoring", "Martin Fowler", 2800.0, 4, "Improving code.", 35,
                                "https://covers.openlibrary.org/b/isbn/9780201485677-L.jpg"));
                books.add(new Book("Head First Patterns", "Eric Freeman", 2500.0, 4, "Visual layout patterns.", 60,
                                "https://covers.openlibrary.org/b/isbn/9780596007126-L.jpg"));
                books.add(new Book("Code", "Charles Petzold", 1500.0, 4, "Hardware and software.", 55,
                                "https://covers.openlibrary.org/b/isbn/9780735611313-L.jpg"));
                books.add(new Book("Mythical Man-Month", "Fred Brooks", 1800.0, 4, "Software engineering.", 40,
                                "https://covers.openlibrary.org/b/isbn/9780201835953-L.jpg"));
                books.add(new Book("SICP", "Harold Abelson", 4500.0, 4, "Computer science.", 20,
                                "https://covers.openlibrary.org/b/isbn/9780262510875-L.jpg"));
                books.add(new Book("Clean Architecture", "Robert C. Martin", 2600.0, 4, "Software design.", 50,
                                "https://covers.openlibrary.org/b/isbn/9780134494166-L.jpg"));
                books.add(new Book("Legacy Code", "Michael Feathers", 2700.0, 4, "Legacy code.", 35,
                                "https://covers.openlibrary.org/b/isbn/9780131177055-L.jpg"));
                books.add(new Book("Rapid Development", "Steve McConnell", 2200.0, 4, "Software schedules.", 30,
                                "https://covers.openlibrary.org/b/isbn/9781556159008-L.jpg"));
                books.add(new Book("Enterprise Architecture", "Martin Fowler", 3100.0, 4, "Enterprise patterns.", 25,
                                "https://covers.openlibrary.org/b/isbn/9780321127426-L.jpg"));
                books.add(new Book("Domain-Driven Design", "Eric Evans", 3300.0, 4, "DDD.", 30,
                                "https://covers.openlibrary.org/b/isbn/9780321125217-L.jpg"));
                books.add(new Book("Continuous Delivery", "Jez Humble", 2900.0, 4, "CD.", 40,
                                "https://covers.openlibrary.org/b/isbn/9780321601919-L.jpg"));
                books.add(new Book("The Phoenix Project", "Gene Kim", 1500.0, 4, "DevOps novel.", 70,
                                "https://covers.openlibrary.org/b/isbn/9780988262591-L.jpg"));
                books.add(new Book("Accelerate", "Nicole Forsgren", 1800.0, 4, "DevOps science.", 45,
                                "https://covers.openlibrary.org/b/isbn/9781942788331-L.jpg"));
                books.add(new Book("Soft Skills", "John Sonmez", 1999.0, 4, "Career guide.", 60,
                                "https://covers.openlibrary.org/b/isbn/9781617292392-L.jpg"));
                books.add(new Book("Cracking Coding Interview", "Gayle McDowell", 2499.0, 4, "Interview prep.", 80,
                                "https://covers.openlibrary.org/b/isbn/9780984782857-L.jpg"));
                books.add(new Book("Steve Jobs", "Walter Isaacson", 899.0, 4, "Biography.", 90,
                                "https://covers.openlibrary.org/b/isbn/9781451648539-L.jpg"));

                // History (18)
                books.add(new Book("The Silk Roads", "Peter Frankopan", 499.0, 5, "New world history.", 50,
                                "https://covers.openlibrary.org/b/isbn/9781101912379-L.jpg"));
                books.add(new Book("1776", "David McCullough", 450.0, 5, "American history.", 40,
                                "https://covers.openlibrary.org/b/isbn/9780743226714-L.jpg"));
                books.add(new Book("The Guns of August", "Barbara Tuchman", 399.0, 5, "WWI start.", 35,
                                "https://covers.openlibrary.org/b/isbn/9780345476098-L.jpg"));
                books.add(new Book("People's History US", "Howard Zinn", 550.0, 5, "Alternative history.", 60,
                                "https://covers.openlibrary.org/b/isbn/9780060838652-L.jpg"));
                books.add(new Book("Band of Brothers", "Stephen Ambrose", 450.0, 5, "WWII paratroopers.", 55,
                                "https://covers.openlibrary.org/b/isbn/9780743224543-L.jpg"));
                books.add(new Book("Genghis Khan", "Jack Weatherford", 399.0, 5, "Mongol empire.", 45,
                                "https://covers.openlibrary.org/b/isbn/9780609809648-L.jpg"));
                books.add(new Book("Third Reich", "William Shirer", 699.0, 5, "Nazi Germany.", 40,
                                "https://covers.openlibrary.org/b/isbn/9781451651683-L.jpg"));
                books.add(new Book("SPQR", "Mary Beard", 499.0, 5, "Ancient Rome.", 50,
                                "https://covers.openlibrary.org/b/isbn/9780871404237-L.jpg"));
                books.add(new Book("Devil in White City", "Erik Larson", 399.0, 5, "Chicago Fair.", 65,
                                "https://covers.openlibrary.org/b/isbn/9780375725609-L.jpg"));
                books.add(new Book("Alexander Hamilton", "Ron Chernow", 599.0, 5, "Founding father.", 45,
                                "https://covers.openlibrary.org/b/isbn/9780143034759-L.jpg"));
                books.add(new Book("Caesar", "Adrian Goldsworthy", 550.0, 5, "Roman leader.", 40,
                                "https://covers.openlibrary.org/b/isbn/9780300120486-L.jpg"));
                books.add(new Book("Endurance", "Alfred Lansing", 350.0, 5, "Shackleton.", 50,
                                "https://covers.openlibrary.org/b/isbn/9780465062881-L.jpg"));
                books.add(new Book("Midnight in Chernobyl", "Adam Higginbotham", 499.0, 5, "Nuclear disaster.", 55,
                                "https://covers.openlibrary.org/b/isbn/9781501134616-L.jpg"));
                books.add(new Book("Dead Wake", "Erik Larson", 450.0, 5, "Lusitania.", 45,
                                "https://covers.openlibrary.org/b/isbn/9780307408860-L.jpg"));
                books.add(new Book("1491", "Charles C. Mann", 550.0, 5, "Pre-Columbian.", 40,
                                "https://covers.openlibrary.org/b/isbn/9781400032051-L.jpg"));
                books.add(new Book("Battle Cry of Freedom", "James McPherson", 650.0, 5, "Civil War.", 35,
                                "https://covers.openlibrary.org/b/isbn/9780195168952-L.jpg"));
                books.add(new Book("Wright Brothers", "David McCullough", 499.0, 5, "Aviation.", 50,
                                "https://covers.openlibrary.org/b/isbn/9781476728759-L.jpg"));
                books.add(new Book("Sapiens", "Yuval Noah Harari", 499.0, 5, "Humankind.", 70,
                                "https://covers.openlibrary.org/b/isbn/9780062316097-L.jpg"));

                // Self-Improvement (17)
                books.add(new Book("Atomic Habits", "James Clear", 550.0, 6, "Habit building.", 100,
                                "https://covers.openlibrary.org/b/isbn/9780735211292-L.jpg"));
                books.add(new Book("Power of Now", "Eckhart Tolle", 399.0, 6, "Spirituality.", 80,
                                "https://covers.openlibrary.org/b/isbn/9781577314806-L.jpg"));
                books.add(new Book("7 Habits", "Stephen Covey", 450.0, 6, "Effectiveness.", 75,
                                "https://covers.openlibrary.org/b/isbn/9780743269513-L.jpg"));
                books.add(new Book("Win Friends", "Dale Carnegie", 299.0, 6, "Social skills.", 90,
                                "https://covers.openlibrary.org/b/isbn/9780671027032-L.jpg"));
                books.add(new Book("Think and Grow Rich", "Napoleon Hill", 250.0, 6, "Wealth.", 85,
                                "https://covers.openlibrary.org/b/isbn/9781585424337-L.jpg"));
                books.add(new Book("Can't Hurt Me", "David Goggins", 699.0, 6, "Mental toughness.", 70,
                                "https://covers.openlibrary.org/b/isbn/9781544512280-L.jpg"));
                books.add(new Book("Subtle Art", "Mark Manson", 399.0, 6, "Life advice.", 95,
                                "https://covers.openlibrary.org/b/isbn/9780062457714-L.jpg"));
                books.add(new Book("You Are a Badass", "Jen Sincero", 350.0, 6, "Self-esteem.", 65,
                                "https://covers.openlibrary.org/b/isbn/9780762447695-L.jpg"));
                books.add(new Book("Daring Greatly", "Brené Brown", 450.0, 6, "Vulnerability.", 60,
                                "https://covers.openlibrary.org/b/isbn/9781592408412-L.jpg"));
                books.add(new Book("Mindset", "Carol Dweck", 399.0, 6, "Growth mindset.", 55,
                                "https://covers.openlibrary.org/b/isbn/9780345472328-L.jpg"));
                books.add(new Book("Deep Work", "Cal Newport", 499.0, 6, "Focus.", 50,
                                "https://covers.openlibrary.org/b/isbn/9781455586691-L.jpg"));
                books.add(new Book("Digital Minimalism", "Cal Newport", 450.0, 6, "Tech usage.", 45,
                                "https://covers.openlibrary.org/b/isbn/9780525536512-L.jpg"));
                books.add(new Book("Four Agreements", "Don Miguel Ruiz", 299.0, 6, "Wisdom.", 70,
                                "https://covers.openlibrary.org/b/isbn/9781878424310-L.jpg"));
                books.add(new Book("Rich Dad Poor Dad", "Robert Kiyosaki", 350.0, 6, "Investing.", 100,
                                "https://covers.openlibrary.org/b/isbn/9781612680194-L.jpg"));
                books.add(new Book("Girl Wash Your Face", "Rachel Hollis", 350.0, 6, "Motivation.", 60,
                                "https://covers.openlibrary.org/b/isbn/9781400201655-L.jpg"));
                books.add(new Book("Eat That Frog!", "Brian Tracy", 250.0, 6, "Productivity.", 65,
                                "https://covers.openlibrary.org/b/isbn/9781626569416-L.jpg"));
                books.add(new Book("5 AM Club", "Robin Sharma", 399.0, 6, "Morning routine.", 55,
                                "https://covers.openlibrary.org/b/isbn/9781443456623-L.jpg"));

                for (Book b : books) {
                        dao.addBook(b);
                }
        }
}
