 <?php
    
    class ZapatillasModel {
        
        private $db;
            
            public function __construct () {
                $this->db = new PDO('mysql:host=localhost;'.'dbname=dbtp1;charset=utf8', 'root', '');
            }
        
            public function getAllZapatillas() {
                $query = $this->db->prepare("SELECT * FROM zapatillas");
                $query->execute();
            
                $allZapatillas = $query->fetchAll(PDO::FETCH_OBJ);

                return $allZapatillas;
            }

    }
