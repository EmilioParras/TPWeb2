 <?php
    
    class ZapatillasModel {
        
        private $db;
            
            public function __construct () {
                $this->db = new PDO('mysql:host=localhost;'.'dbname=dbtp1;charset=utf8', 'root', '');
            }
        
            public function getAllZapatillas() {
                $query = $this->db->prepare("SELECT * FROM zapatillas as z");
                $query->execute();
            
                $allZapatillas = $query->fetchAll(PDO::FETCH_OBJ);

                return $allZapatillas;
            }

            public function getDeportiveShoes() {
                $query = $this->db->prepare("SELECT * FROM zapatillas WHERE id_categoria_fk = 2");
                $query->execute();

                $deportiveShoes = $query->fetchAll(PDO::FETCH_OBJ);

                return $deportiveShoes;
            }

            public function getUrbanShoes() {
                $query = $this->db->prepare("SELECT * FROM zapatillas WHERE id_categoria_fk = 1");
                $query->execute();

                $urbanShoes = $query->fetchAll(PDO::FETCH_OBJ);

                return $urbanShoes;
            }

    }
