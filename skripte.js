function Predmeti(predmetiCode){
    let predmetiDropDown = document.forms["my-form"].predmeti;

    if(predmetiCode.trim() == ""){
        predmetiDropDown.disabled = true;
        predmetiDropDown.selectedIndex = 0;
        return false;
    }

    console.log('Dohvaćanje predmeta za razred ID:', predmetiCode);

    fetch(`index.php?razrediCode=${predmetiCode}`)
    .then(response => {
        console.log('HTTP odgovor:', response);
        return response.json();
    })
    .then(function(predmeti){
        console.log('Dohvaćeni predmeti:', predmeti);
        let out = '<option value="">Odaberite predmet</option>';
        for(let predmet of predmeti){
            out += `<option value="${predmet['Naziv']}">${predmet['Naziv']}</option>`;
        }
        predmetiDropDown.innerHTML = out;
        predmetiDropDown.disabled = false;
    })
    .catch(function(error){
        console.error('Greška pri dohvaćanju predmeta:', error);
    });
}