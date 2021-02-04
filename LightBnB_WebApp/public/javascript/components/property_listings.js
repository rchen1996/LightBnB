$(() => {

  const $propertyListings = $(`
  <section class="property-listings" id="property-listings">
      <p>Loading...</p>
    </section>
  `);
  window.$propertyListings = $propertyListings;

  window.propertyListings = {};

  function addListing(listing) {
    $propertyListings.append(listing);
  }

  const appended = new Promise(addListing);
  
  function clearListings() {
    $propertyListings.empty();
  }
  window.propertyListings.clearListings = clearListings;

  function addProperties(properties, isReservation = false) {
    clearListings();
    for (const propertyId in properties) {
      const property = properties[propertyId];
      const listing = propertyListing.createListing(property, isReservation);
      addListing(listing);
    }
    appended.then(() => {
      $('.new-reservation-form').on('submit', function(event) {
        event.preventDefault();
        views_manager.show('none');
    
        const data = $(this).serialize();
        submitReservation(data)
          .then(() => {
            views_manager.show('listings');
          })
          .catch((error) => {
            console.error(error);
            views_manager.show('listings');
          });
      });
    })
  }
  window.propertyListings.addProperties = addProperties;

});