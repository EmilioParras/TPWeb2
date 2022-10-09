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

            public function getAllTableInfo() {
                $query = $this->db->prepare("SELECT * FROM zapatillas");
                $query->execute();

                $allTableInfo = $query->fetchAll(PDO::FETCH_OBJ);

                return $allTableInfo;
            }

            public function insertProduct($nombre, $marca, $price, $talles, $category) {
                $query = $this->db->prepare("INSERT INTO zapatillas (nombre, marca, precio, talle, id_categoria_fk) VALUES (?, ?, ?, ?, ?)");
                $query->execute([$nombre, $marca, $price, $talles, $category]);

                return $this->db->lastInsertId();
            }

            function deleteShoe($id) {
                $query = $this->db->prepare("DELETE FROM zapatillas WHERE id = ?");
                $query->execute([$id]);
            }
        

    }
