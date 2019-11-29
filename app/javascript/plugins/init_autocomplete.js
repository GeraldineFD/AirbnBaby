import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('baby_material_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
