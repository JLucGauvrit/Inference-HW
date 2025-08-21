// Gestion du formulaire FPGA
document.addEventListener('DOMContentLoaded', () => {
  const stageForm = document.getElementById('stageForm');
  const customInputs = document.getElementById('customInputs');

  // Active/désactive les inputs custom selon le mode
  stageForm.addEventListener('change', (e) => {
    if (e.target.name === 'mode') {
      const isCustom = stageForm.elements['mode'].value === 'custom';
      customInputs.style.opacity = isCustom ? '1' : '.6';
      customInputs.style.pointerEvents = isCustom ? 'auto' : 'none';
      
      // Active/désactive tous les inputs de fichier
      for (const el of customInputs.querySelectorAll('input[type="file"]')) {
        el.disabled = !isCustom;
      }
    }
  });

  // État initial : mode "base" sélectionné, inputs custom désactivés
  for (const el of customInputs.querySelectorAll('input[type="file"]')) {
    el.disabled = true;
  }

  // Affichage de la board sélectionnée (optionnel, pour feedback utilisateur)
  stageForm.addEventListener('change', (e) => {
    if (e.target.name === 'board') {
      console.log('Board sélectionnée:', e.target.value);
      // Vous pouvez ajouter ici une logique pour afficher la board sélectionnée
    }
  });
});
