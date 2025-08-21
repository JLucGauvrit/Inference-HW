// Gestion du formulaire CPU
document.addEventListener('DOMContentLoaded', () => {
  const stageForm = document.getElementById('stageForm');
  const customInputs = document.getElementById('customInputs');

  // Active/désactive les inputs custom selon le mode
  stageForm.addEventListener('change', () => {
    const isCustom = stageForm.elements['mode'].value === 'custom';
    customInputs.style.opacity = isCustom ? '1' : '.4';
    customInputs.style.pointerEvents = isCustom ? 'auto' : 'none';
    for (const el of customInputs.querySelectorAll('input[type="file"]')) {
      el.disabled = !isCustom;
    }
  });

  // état initial (désactivé)
  for (const el of customInputs.querySelectorAll('input[type="file"]')) {
    el.disabled = true;
  }
});
