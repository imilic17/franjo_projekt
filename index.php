<?php
include 'funkcije.php';
?>

<link rel="stylesheet" type="text/css" href="css.css">

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css.css">
    <title>MySQL za projektni rad</title>
</head>

<body>
    <div class="page">

    <h3>Molim te odredi razred i predmet</h3>
    <form name="my-form" action="" method="post"></form>
        <select name="razredi" id="razredDropdown">
            <option value="">Odaberi razred</option>
            <?php
                $razredi = Razredi();
                foreach($razredi as $razred){
                    ?>
                    <option value="<?php echo $razred['Naziv']; ?>">
                        <?php echo $razred['Naziv']; ?>
                    </option>
                    <?php
                }
            ?>
        </select>

        <select name="predmeti" id="predmetDropdown" disabled >
            <option value="">Odaberi predmet</option>
            <?php
                $razredi = Razredi();
                foreach($razredi as $predmeti){
                    ?>
                    <option value="<?php echo $predmeti['Naziv'];?>">
                        <?php echo "nesto"; ?>
                    </option>
                    <?php
                }
            ?>
        </select>

    </div>

    <script src="script.js"></script>
    <script>
        $(document).ready(function() {
            $('#razredDropdown').change(function() {
                const razredID = $(this).val();
                const predmetDropdown = $('#predmetDropdown');
                predmetDropdown.empty().append('<option value="">-- Odaberi predmet --</option>').prop('disabled', true);

                if (razredID) {
                    console.log('Odabrani razred ID:', razredID);
                    $.get('funkcije.php', { razrediCode: razredID }, function(data) {
                        console.log('Dohvaćeni podaci:', data);
                        try {
                            const predmeti = JSON.parse(data);
                            if (predmeti.length > 0) {
                                predmeti.forEach(predmet => {
                                    predmetDropdown.append(`<option value="${predmet.PredmetID}">${predmet.Naziv}</option>`);
                                });
                                predmetDropdown.prop('disabled', false);
                            } else {
                                console.log('Nema predmeta za odabrani razred.');
                            }
                        } catch (error) {
                            console.error('Greška pri parsiranju JSON-a:', error);
                        }
                    }).fail(function(jqXHR, textStatus, errorThrown) {
                        console.error('Greška u AJAX zahtjevu:', textStatus, errorThrown);
                    });
                }
            });
        });
    </script>
</body>


</html>