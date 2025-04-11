<?php

    function databaseConnection(){
        $mysqli = new mysqli('localhost', 'root', '', 'srednjaskolaprojektnizadatak');
        if($mysqli->connect_errno != 0){
            die("Pogreška u spajanju sa databazom! " . $mysqli->connect_error);

        }
        return $mysqli;
    }

    function Razredi(){
        $mysqli = databaseConnection();
        if(!$mysqli){
            return false;
        }

        $res = $mysqli->query("SELECT * FROM razredi");
        $data = [];
        while($row = $res->fetch_assoc()){
            $data[] = $row;
        }

        return $data;
    }

    if(isset($_GET["razrediCode"])){
        echo Predmeti($_GET["razrediCode"]);
    }

    function Predmeti($RazredID){
        $mysqli = databaseConnection();
        if(!$mysqli){
            return json_encode(["error" => "Database connection failed"]);
        }
    
        $RazredID = htmlspecialchars($RazredID);
        $stmt = $mysqli->prepare("SELECT p.PredmetID, p.Naziv FROM predmeti p 
                                  INNER JOIN razred_predmet rp ON p.PredmetID = rp.Predmet_ID 
                                  WHERE rp.Razred_ID = ?");
        $stmt->bind_param("i", $RazredID);
        $stmt->execute();
        $res = $stmt->get_result();

        $data = [];
        while($row = $res->fetch_assoc()){
            $data[] = $row;
        }

        if (empty($data)) {
            return json_encode(["error" => "No subjects found for the given class ID"]);
        }

        return json_encode($data);
    }
