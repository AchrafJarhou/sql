
insert into 
  auteurs (
    
    name, 
    email
   
  )
values
  (
    
    'George Sand', 
    'gsand@example.com'
    
  ),
    (
    
    'Victor Hugo', 
    'vhugo@example.com'
    
  ),
    (
    
    'Alexandre Dumas', 
    'adumas@example.com'
    
  ),
    (
    
    'Gustave Flaubert', 
    'gflaubert@example.com'
    
  ),
    (
    
    'Marcel Pagnol', 
    'mpagnol@example.com'
    
  );
  
  insert into 
    auteurs (
      id, 
      name, 
      email, 
      create_time
    )
  values
    (
      $id, 
      $name, 
      $email, 
      $create_time
    );
    
    SELECT * FROM auteurs;
    
    insert into 
      categorie (
        
        nom
      )
    values
      (
        
       'Roman historique'),
      ( 'Poésie'),
       ('Théâtre'),
       ('Roman réaliste'),
      ('Littérature jeunesse') 
      ;
      
      insert into 
        livres (
          
          titre, 
          auteur_id, 
          categorie_id, 
          date_publication
        )
      values
        (
          
          'La Mare au Diable', 
          1, 
          4, 
          '1846'
        ),
        (
          
          'Indiana', 
          1, 
          4, 
           '1832'
        ),
         (
          
          'Les Misérables', 
          2, 
          1, 
           '1832'
        ),
           (
          
          'Les Contemplations', 
          2, 
          2, 
           '1856'
        ),
           (
          
          'Le Comte de Monte-Cristo', 
          3, 
          1, 
           '1845' 
        ),
        (
          
          'Les Trois Mousquetaires', 
          3, 
          1, 
          1844
        ),
          (
          
          'Madame Bovary ', 
          4, 
          4, 
         1857
        ),
          (
          
          'Salammbô', 
          4, 
          1, 
          1862 
        ),
           (
          
          'La Gloire de mon père', 
          5, 
          5, 
          1957  
        ),
             (
          
          'Marius ', 
          5, 
          3, 
          1929  
        );


        
        SELECT * FROM categorie;
        
        SELECT titre,date_publication FROM livres;
        
       UPDATE livres SET date_publication = '1846-01-01 00:00:00' WHERE id = 1;
UPDATE livres SET date_publication = '1832-01-01 00:00:00' WHERE id = 2;
UPDATE livres SET date_publication = '1862-01-01 00:00:00' WHERE id = 3;
UPDATE livres SET date_publication = '1856-01-01 00:00:00' WHERE id = 4;
UPDATE livres SET date_publication = '1845-01-01 00:00:00' WHERE id = 5;
UPDATE livres SET date_publication = '1844-01-01 00:00:00' WHERE id = 6;
UPDATE livres SET date_publication = '1857-01-01 00:00:00' WHERE id = 7;
UPDATE livres SET date_publication = '1862-01-01 00:00:00' WHERE id = 8;
UPDATE livres SET date_publication = '1957-01-01 00:00:00' WHERE id = 9;
UPDATE livres SET date_publication = '1929-01-01 00:00:00' WHERE id = 10;
