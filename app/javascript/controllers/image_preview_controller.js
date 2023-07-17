import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["input", "preview", "svg", "message"];

  connect() {
    console.log("ImagePreviewController connected");
  }

  previewImage() {
    let input = this.inputTarget;
    let preview = this.previewTarget;
    let message = this.messageTarget;
    
    if (input.files && input.files.length) {
      console.log(`Archivos seleccionados: ${input.files.length}`);
      
      // check if there are svg or image elements and hide them
      if (this.hasSvgTarget) {
        let svg = this.svgTarget;
        svg.classList.add("hidden");
      }
      
      if (this.hasImageTarget) {
        let image = this.imageTarget;
        image.classList.add("hidden");
      }
      
      // borra la vista previa anterior
      while (preview.firstChild) {
        preview.removeChild(preview.firstChild);
      }
      
      if (input.files.length <= 10) {
        message.textContent = '';
        for (let i = 0; i < input.files.length; i++) {
          let reader = new FileReader();
          
          reader.onload = (e) => {
            console.log(`Imagen ${i} cargada:`, e.target.result);
            
            let img = document.createElement('img');
            img.src = e.target.result;
            
            // agrega la nueva imagen a la vista previa
            preview.appendChild(img);
          };
          
          reader.readAsDataURL(input.files[i]);
        }
      } else {
        // ocultar la vista previa y mostrar un mensaje
        preview.classList.add("hidden");
        message.classList.remove("hidden");
        message.classList.add("text-withe","w-full","px-4", "py-2", "text-center", "bg-green-500", "border-green-500","border", "border-2", "rounded-md");
        message.textContent = `Se han seleccionado ${input.files.length} archivos`;
      }
    } else {
      console.log("No hay archivos seleccionados");
      // borra la vista previa anterior
      while (preview.firstChild) {
        preview.removeChild(preview.firstChild);
      }
      message.textContent = '';
    }
  }

}
