function fileValidation(){
    let fileInput = document.getElementById('img');
    /*Validaciones de archivos*/
    let filePath = fileInput.value;
    let allowedExtensions = /(.jpg|.jpeg|.png|)$/i;
    if(!allowedExtensions.exec(filePath)){
        alert('Solo archivos con estas extensiones .jpeg/.jpg/.png/');
        fileInput.value = '';
        return false;
    }else{
        /* vista previa de la imagen */
        if (fileInput.files && fileInput.files[0]) {
            let reader = new FileReader();
            reader.onload = function(e) {
                document.getElementById('imagePreview').innerHTML = '<img src="'+e.target.result+'" width="200px" height="200px"/>';
            };
            reader.readAsDataURL(fileInput.files[0]);
        }
    }
}