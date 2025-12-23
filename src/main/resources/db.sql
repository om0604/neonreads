DROP DATABASE IF EXISTS neonreads_db;
CREATE DATABASE neonreads_db;
USE neonreads_db;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    role VARCHAR(20) DEFAULT 'CUSTOMER'
);

CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    category_id INT,
    description TEXT,
    stock INT DEFAULT 0,
    image_url VARCHAR(255),
    FOREIGN KEY (category_id) REFERENCES categories(id) ON DELETE SET NULL
);

CREATE TABLE orders (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    total_price DECIMAL(10,2),
    status VARCHAR(50) DEFAULT 'Pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE order_items (
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Categories
INSERT INTO categories (name) VALUES 
('Fiction'), 
('Non-Fiction'), 
('Science'), 
('Technology'), 
('History'),
('Self-Improvement');

-- Default Admin (Password: admin123)
-- SHA-256 Hash: JAvlGPq9JyTdtvBO6x2llnRI1+gxwIyPqCKAn3THIKk=
INSERT INTO users (name, email, password, role) VALUES 
('Admin', 'admin@neonreads.com', 'JAvlGPq9JyTdtvBO6x2llnRI1+gxwIyPqCKAn3THIKk=', 'ADMIN');


-- Books
INSERT INTO books (title, author, price, category_id, description, stock, image_url) VALUES
-- Fiction (20)
('To Kill a Mockingbird', 'Harper Lee', 399.00, 1, 'Classic novel set in the American South.', 50, 'https://covers.openlibrary.org/b/isbn/9780061120084-L.jpg'),
('1984', 'George Orwell', 299.00, 1, 'Dystopian social science fiction novel.', 45, 'https://covers.openlibrary.org/b/isbn/9780451524935-L.jpg'),
('The Great Gatsby', 'F. Scott Fitzgerald', 250.00, 1, 'A novel about the American dream.', 40, 'https://covers.openlibrary.org/b/isbn/9780743273565-L.jpg'),
('Pride and Prejudice', 'Jane Austen', 199.00, 1, 'Romantic novel of manners.', 35, 'https://covers.openlibrary.org/b/isbn/9780141439518-L.jpg'),
('The Catcher in the Rye', 'J.D. Salinger', 350.00, 1, 'Story of teenage alienation.', 30, 'https://covers.openlibrary.org/b/isbn/9780316769480-L.jpg'),
('The Hobbit', 'J.R.R. Tolkien', 499.00, 1, 'Fantasy novel.', 60, 'https://covers.openlibrary.org/b/isbn/9780547928227-L.jpg'),
('Fahrenheit 451', 'Ray Bradbury', 299.00, 1, 'Future where books are outlawed.', 40, 'https://covers.openlibrary.org/b/isbn/9781451673319-L.jpg'),
('Lord of the Flies', 'William Golding', 299.00, 1, 'British boys stranded on an island.', 35, 'https://covers.openlibrary.org/b/isbn/9780399501487-L.jpg'),
('Animal Farm', 'George Orwell', 199.00, 1, 'Satirical allegorical novella.', 50, 'https://covers.openlibrary.org/b/isbn/9780451526342-L.jpg'),
('The Alchemist', 'Paulo Coelho', 299.00, 1, 'A fable about following your dream.', 80, 'https://covers.openlibrary.org/b/isbn/9780062315007-L.jpg'),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 499.00, 1, 'The first book in the Harry Potter series.', 100, 'https://covers.openlibrary.org/b/isbn/9780590353427-L.jpg'),
('Harry Potter and the Chamber of Secrets', 'J.K. Rowling', 499.00, 1, 'The second book in the Harry Potter series.', 90, 'https://covers.openlibrary.org/b/isbn/9780439064873-L.jpg'),
('Harry Potter and the Prisoner of Azkaban', 'J.K. Rowling', 525.00, 1, 'The third book in the Harry Potter series.', 85, 'https://covers.openlibrary.org/b/isbn/9780439136358-L.jpg'),
('Harry Potter and the Goblet of Fire', 'J.K. Rowling', 599.00, 1, 'The fourth book in the Harry Potter series.', 80, 'https://covers.openlibrary.org/b/isbn/9780439139595-L.jpg'),
('Harry Potter and the Order of the Phoenix', 'J.K. Rowling', 650.00, 1, 'The fifth book in the Harry Potter series.', 75, 'https://covers.openlibrary.org/b/isbn/9780439358064-L.jpg'),
('Harry Potter and the Half-Blood Prince', 'J.K. Rowling', 620.00, 1, 'The sixth book in the Harry Potter series.', 70, 'https://covers.openlibrary.org/b/isbn/9780439784542-L.jpg'),
('Harry Potter and the Deathly Hallows', 'J.K. Rowling', 699.00, 1, 'The seventh and final book in the Harry Potter series.', 65, 'https://covers.openlibrary.org/b/isbn/9780545010221-L.jpg'),
('The Kite Runner', 'Khaled Hosseini', 399.00, 1, 'Story of friendship in Afghanistan.', 55, 'https://covers.openlibrary.org/b/isbn/9781594480003-L.jpg'),
('Life of Pi', 'Yann Martel', 350.00, 1, 'Survival story with a tiger.', 50, 'https://covers.openlibrary.org/b/isbn/9780156027328-L.jpg'),
('The Book Thief', 'Markus Zusak', 450.00, 1, 'Novel narrated by Death.', 45, 'https://covers.openlibrary.org/b/isbn/9780375842207-L.jpg'),

-- Non-Fiction (18)
('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 499.00, 2, 'Brief History of Humankind.', 70, 'https://covers.openlibrary.org/b/isbn/9780062316097-L.jpg'),
('Educated', 'Tara Westover', 450.00, 2, 'Memoir of survivalist family.', 60, 'https://covers.openlibrary.org/b/isbn/9780399590504-L.jpg'),
('Becoming', 'Michelle Obama', 699.00, 2, 'Memoir by former First Lady.', 80, 'https://covers.openlibrary.org/b/isbn/9781524763138-L.jpg'),
('The Diary of a Young Girl', 'Anne Frank', 199.00, 2, 'War diary.', 90, 'https://covers.openlibrary.org/b/isbn/9780553296983-L.jpg'),
('Into the Wild', 'Jon Krakauer', 350.00, 2, 'True story of Christopher McCandless.', 50, 'https://covers.openlibrary.org/b/isbn/9780385486804-L.jpg'),
('The Glass Castle', 'Jeannette Walls', 399.00, 2, 'Memoir of unconventional childhood.', 55, 'https://covers.openlibrary.org/b/isbn/9780743247542-L.jpg'),
('Night', 'Elie Wiesel', 250.00, 2, 'Holocaust memoir.', 45, 'https://covers.openlibrary.org/b/isbn/9780374500016-L.jpg'),
('Man''s Search for Meaning', 'Viktor Frankl', 299.00, 2, 'Finding purpose in suffering.', 65, 'https://covers.openlibrary.org/b/isbn/9780807014295-L.jpg'),
('Thinking, Fast and Slow', 'Daniel Kahneman', 499.00, 2, 'Two systems of thought.', 75, 'https://covers.openlibrary.org/b/isbn/9780374275631-L.jpg'),
('Quiet', 'Susan Cain', 399.00, 2, 'Power of introverts.', 50, 'https://covers.openlibrary.org/b/isbn/9780307352156-L.jpg'),
('Outliers', 'Malcolm Gladwell', 399.00, 2, 'Story of success.', 60, 'https://covers.openlibrary.org/b/isbn/9780316017930-L.jpg'),
('The Power of Habit', 'Charles Duhigg', 450.00, 2, 'Why we do what we do.', 70, 'https://covers.openlibrary.org/b/isbn/9780812981605-L.jpg'),
('Blink', 'Malcolm Gladwell', 399.00, 2, 'Power of thinking without thinking.', 55, 'https://covers.openlibrary.org/b/isbn/9780316010665-L.jpg'),
('A Walk in the Woods', 'Bill Bryson', 350.00, 2, 'Appalachian Trail journey.', 40, 'https://covers.openlibrary.org/b/isbn/9780767902526-L.jpg'),
('In Cold Blood', 'Truman Capote', 299.00, 2, 'True crime novel.', 35, 'https://covers.openlibrary.org/b/isbn/9780679745587-L.jpg'),
('Tuesdays with Morrie', 'Mitch Albom', 250.00, 2, 'Old man, a young man, life''s lesson.', 80, 'https://covers.openlibrary.org/b/isbn/9780767905923-L.jpg'),
('The Immortal Life of Henrietta Lacks', 'Rebecca Skloot', 450.00, 2, 'Immortal life of HeLa cells.', 45, 'https://covers.openlibrary.org/b/isbn/9781400052189-L.jpg'),
('Unbroken', 'Laura Hillenbrand', 499.00, 2, 'WW2 story of survival.', 50, 'https://covers.openlibrary.org/b/isbn/9781400064168-L.jpg'),

-- Science (18)
('A Brief History of Time', 'Stephen Hawking', 450.00, 3, 'Cosmology explained.', 60, 'https://covers.openlibrary.org/b/isbn/9780553380163-L.jpg'),
('Cosmos', 'Carl Sagan', 599.00, 3, 'Cosmic evolution.', 45, 'https://covers.openlibrary.org/b/isbn/9780345331359-L.jpg'),
('The Selfish Gene', 'Richard Dawkins', 499.00, 3, 'Evolutionary biology.', 40, 'https://covers.openlibrary.org/b/isbn/9780199291151-L.jpg'),
('What If?', 'Randall Munroe', 550.00, 3, 'Scientific answers.', 55, 'https://covers.openlibrary.org/b/isbn/9780544272996-L.jpg'),
('Silent Spring', 'Rachel Carson', 399.00, 3, 'Environmental science.', 35, 'https://covers.openlibrary.org/b/isbn/9780618249060-L.jpg'),
('The Gene', 'Siddhartha Mukherjee', 699.00, 3, 'History of the gene.', 40, 'https://covers.openlibrary.org/b/isbn/9781476733500-L.jpg'),
('Astrophysics for People in a Hurry', 'Neil deGrasse Tyson', 399.00, 3, 'Space for busy people.', 80, 'https://covers.openlibrary.org/b/isbn/9780393609394-L.jpg'),
('The Body', 'Bill Bryson', 650.00, 3, 'Guide for occupants.', 50, 'https://covers.openlibrary.org/b/isbn/9780385539302-L.jpg'),
('Why We Sleep', 'Matthew Walker', 499.00, 3, 'Power of sleep.', 60, 'https://covers.openlibrary.org/b/isbn/9781501144318-L.jpg'),
('The Sixth Extinction', 'Elizabeth Kolbert', 450.00, 3, 'Unnatural history.', 45, 'https://covers.openlibrary.org/b/isbn/9780805092998-L.jpg'),
('Guns, Germs, and Steel', 'Jared Diamond', 550.00, 3, 'Human societies.', 50, 'https://covers.openlibrary.org/b/isbn/9780393061314-L.jpg'),
('Seven Brief Lessons on Physics', 'Carlo Rovelli', 299.00, 3, 'Physics simplified.', 70, 'https://covers.openlibrary.org/b/isbn/9780399184413-L.jpg'),
('Reality Is Not What It Seems', 'Carlo Rovelli', 350.00, 3, 'Quantum gravity.', 40, 'https://covers.openlibrary.org/b/isbn/9780735213920-L.jpg'),
('The Elegant Universe', 'Brian Greene', 499.00, 3, 'String theory.', 35, 'https://covers.openlibrary.org/b/isbn/9780393058581-L.jpg'),
('A Short History of Nearly Everything', 'Bill Bryson', 550.00, 3, 'Science history.', 65, 'https://covers.openlibrary.org/b/isbn/9780767908177-L.jpg'),
('The Man Who Knew Infinity', 'Robert Kanigel', 450.00, 3, 'Ramanujan.', 30, 'https://covers.openlibrary.org/b/isbn/9780671750619-L.jpg'),
('Hidden Figures', 'Margot Lee Shetterly', 399.00, 3, 'Women at NASA.', 55, 'https://covers.openlibrary.org/b/isbn/9780062363596-L.jpg'),
('Code Girls', 'Liza Mundy', 450.00, 3, 'Code breakers.', 40, 'https://covers.openlibrary.org/b/isbn/9780316352536-L.jpg'),

-- Technology (20)
('Clean Code', 'Robert C. Martin', 2999.00, 4, 'Agile craftsmanship.', 50, 'https://covers.openlibrary.org/b/isbn/9780132350884-L.jpg'),
('The Pragmatic Programmer', 'Andrew Hunt', 3500.00, 4, 'Programming advice.', 45, 'https://covers.openlibrary.org/b/isbn/9780201616224-L.jpg'),
('Introduction to Algorithms', 'Thomas Cormen', 999.00, 4, 'Algorithm textbook.', 30, 'https://covers.openlibrary.org/b/isbn/9780262033848-L.jpg'),
('Design Patterns', 'Erich Gamma', 3200.00, 4, 'OO software patterns.', 40, 'https://covers.openlibrary.org/b/isbn/9780201633610-L.jpg'),
('Refactoring', 'Martin Fowler', 2800.00, 4, 'Improving code.', 35, 'https://covers.openlibrary.org/b/isbn/9780201485677-L.jpg'),
('Head First Design Patterns', 'Eric Freeman', 2500.00, 4, 'Visual layout patterns.', 60, 'https://covers.openlibrary.org/b/isbn/9780596007126-L.jpg'),
('Code: The Hidden Language', 'Charles Petzold', 1500.00, 4, 'Hardware and software.', 55, 'https://covers.openlibrary.org/b/isbn/9780735611313-L.jpg'),
('The Mythical Man-Month', 'Fred Brooks', 1800.00, 4, 'Software engineering.', 40, 'https://covers.openlibrary.org/b/isbn/9780201835953-L.jpg'),
('Structure and Interpretation', 'Harold Abelson', 4500.00, 4, 'Computer science.', 20, 'https://covers.openlibrary.org/b/isbn/9780262510875-L.jpg'),
('Clean Architecture', 'Robert C. Martin', 2600.00, 4, 'Software design.', 50, 'https://covers.openlibrary.org/b/isbn/9780134494166-L.jpg'),
('Working Effectively with Legacy Code', 'Michael Feathers', 2700.00, 4, 'Legacy code.', 35, 'https://covers.openlibrary.org/b/isbn/9780131177055-L.jpg'),
('Rapid Development', 'Steve McConnell', 2200.00, 4, 'Software schedules.', 30, 'https://covers.openlibrary.org/b/isbn/9781556159008-L.jpg'),
('Patterns of Enterprise Architecture', 'Martin Fowler', 3100.00, 4, 'Enterprise patterns.', 25, 'https://covers.openlibrary.org/b/isbn/9780321127426-L.jpg'),
('Domain-Driven Design', 'Eric Evans', 3300.00, 4, 'DDD.', 30, 'https://covers.openlibrary.org/b/isbn/9780321125217-L.jpg'),
('Continuous Delivery', 'Jez Humble', 2900.00, 4, 'CD.', 40, 'https://covers.openlibrary.org/b/isbn/9780321601919-L.jpg'),
('The Phoenix Project', 'Gene Kim', 1500.00, 4, 'DevOps novel.', 70, 'https://covers.openlibrary.org/b/isbn/9780988262591-L.jpg'),
('Accelerate', 'Nicole Forsgren', 1800.00, 4, 'DevOps science.', 45, 'https://covers.openlibrary.org/b/isbn/9781942788331-L.jpg'),
('Soft Skills', 'John Sonmez', 1999.00, 4, 'Career guide.', 60, 'https://covers.openlibrary.org/b/isbn/9781617292392-L.jpg'),
('Cracking the Coding Interview', 'Gayle Laakmann McDowell', 2499.00, 4, 'Interview prep.', 80, 'https://covers.openlibrary.org/b/isbn/9780984782857-L.jpg'),
('Steve Jobs', 'Walter Isaacson', 899.00, 4, 'Biography.', 90, 'https://covers.openlibrary.org/b/isbn/9781451648539-L.jpg'),

-- History (18)
('The Silk Roads', 'Peter Frankopan', 499.00, 5, 'New world history.', 50, 'https://covers.openlibrary.org/b/isbn/9781101912379-L.jpg'),
('1776', 'David McCullough', 450.00, 5, 'American history.', 40, 'https://covers.openlibrary.org/b/isbn/9780743226714-L.jpg'),
('The Guns of August', 'Barbara Tuchman', 399.00, 5, 'WWI start.', 35, 'https://covers.openlibrary.org/b/isbn/9780345476098-L.jpg'),
('A People''s History of the US', 'Howard Zinn', 550.00, 5, 'Alternative history.', 60, 'https://covers.openlibrary.org/b/isbn/9780060838652-L.jpg'),
('Band of Brothers', 'Stephen Ambrose', 450.00, 5, 'WWII paratroopers.', 55, 'https://covers.openlibrary.org/b/isbn/9780743224543-L.jpg'),
('Genghis Khan', 'Jack Weatherford', 399.00, 5, 'Mongol empire.', 45, 'https://covers.openlibrary.org/b/isbn/9780609809648-L.jpg'),
('The Rise and Fall of the Third Reich', 'William Shirer', 699.00, 5, 'Nazi Germany.', 40, 'https://covers.openlibrary.org/b/isbn/9781451651683-L.jpg'),
('SPQR', 'Mary Beard', 499.00, 5, 'Ancient Rome.', 50, 'https://covers.openlibrary.org/b/isbn/9780871404237-L.jpg'),
('The Devil in the White City', 'Erik Larson', 399.00, 5, 'Chicago Fair.', 65, 'https://covers.openlibrary.org/b/isbn/9780375725609-L.jpg'),
('Alexander Hamilton', 'Ron Chernow', 599.00, 5, 'Founding father.', 45, 'https://covers.openlibrary.org/b/isbn/9780143034759-L.jpg'),
('Caesar', 'Adrian Goldsworthy', 550.00, 5, 'Roman leader.', 40, 'https://covers.openlibrary.org/b/isbn/9780300120486-L.jpg'),
('Endurance', 'Alfred Lansing', 350.00, 5, 'Shackleton.', 50, 'https://covers.openlibrary.org/b/isbn/9780465062881-L.jpg'),
('Midnight in Chernobyl', 'Adam Higginbotham', 499.00, 5, 'Nuclear disaster.', 55, 'https://covers.openlibrary.org/b/isbn/9781501134616-L.jpg'),
('Dead Wake', 'Erik Larson', 450.00, 5, 'Lusitania.', 45, 'https://covers.openlibrary.org/b/isbn/9780307408860-L.jpg'),
('1491', 'Charles C. Mann', 550.00, 5, 'Pre-Columbian.', 40, 'https://covers.openlibrary.org/b/isbn/9781400032051-L.jpg'),
('Battle Cry of Freedom', 'James McPherson', 650.00, 5, 'Civil War.', 35, 'https://covers.openlibrary.org/b/isbn/9780195168952-L.jpg'),
('The Wright Brothers', 'David McCullough', 499.00, 5, 'Aviation.', 50, 'https://covers.openlibrary.org/b/isbn/9781476728759-L.jpg'),
('Sapiens', 'Yuval Noah Harari', 499.00, 5, 'History of humankind.', 70, 'https://covers.openlibrary.org/b/isbn/9780062316097-L.jpg'),

-- Self-Improvement (17)
('Atomic Habits', 'James Clear', 550.00, 6, 'Habit building.', 100, 'https://covers.openlibrary.org/b/isbn/9780735211292-L.jpg'),
('The Power of Now', 'Eckhart Tolle', 399.00, 6, 'Spirituality.', 80, 'https://covers.openlibrary.org/b/isbn/9781577314806-L.jpg'),
('The 7 Habits', 'Stephen Covey', 450.00, 6, 'Effectiveness.', 75, 'https://covers.openlibrary.org/b/isbn/9780743269513-L.jpg'),
('How to Win Friends', 'Dale Carnegie', 299.00, 6, 'Social skills.', 90, 'https://covers.openlibrary.org/b/isbn/9780671027032-L.jpg'),
('Think and Grow Rich', 'Napoleon Hill', 250.00, 6, 'Wealth.', 85, 'https://covers.openlibrary.org/b/isbn/9781585424337-L.jpg'),
('Can''t Hurt Me', 'David Goggins', 699.00, 6, 'Mental toughness.', 70, 'https://covers.openlibrary.org/b/isbn/9781544512280-L.jpg'),
('The Subtle Art', 'Mark Manson', 399.00, 6, 'Life advice.', 95, 'https://covers.openlibrary.org/b/isbn/9780062457714-L.jpg'),
('You Are a Badass', 'Jen Sincero', 350.00, 6, 'Self-esteem.', 65, 'https://covers.openlibrary.org/b/isbn/9780762447695-L.jpg'),
('Daring Greatly', 'Brené Brown', 450.00, 6, 'Vulnerability.', 60, 'https://covers.openlibrary.org/b/isbn/9781592408412-L.jpg'),
('Mindset', 'Carol Dweck', 399.00, 6, 'Growth mindset.', 55, 'https://covers.openlibrary.org/b/isbn/9780345472328-L.jpg'),
('Deep Work', 'Cal Newport', 499.00, 6, 'Focus.', 50, 'https://covers.openlibrary.org/b/isbn/9781455586691-L.jpg'),
('Digital Minimalism', 'Cal Newport', 450.00, 6, 'Tech usage.', 45, 'https://covers.openlibrary.org/b/isbn/9780525536512-L.jpg'),
('The Four Agreements', 'Don Miguel Ruiz', 299.00, 6, 'Wisdom.', 70, 'https://covers.openlibrary.org/b/isbn/9781878424310-L.jpg'),
('Rich Dad Poor Dad', 'Robert Kiyosaki', 350.00, 6, 'Investing.', 100, 'https://covers.openlibrary.org/b/isbn/9781612680194-L.jpg'),
('Girl, Wash Your Face', 'Rachel Hollis', 350.00, 6, 'Motivation.', 60, 'https://covers.openlibrary.org/b/isbn/9781400201655-L.jpg'),
('Eat That Frog!', 'Brian Tracy', 250.00, 6, 'Productivity.', 65, 'https://covers.openlibrary.org/b/isbn/9781626569416-L.jpg'),
('The 5 AM Club', 'Robin Sharma', 399.00, 6, 'Morning routine.', 55, 'https://covers.openlibrary.org/b/isbn/9781443456623-L.jpg');

select * from users;