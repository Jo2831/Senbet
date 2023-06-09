$(function () {
  const urlParams = new URLSearchParams(window.location.search);
  const hotelId = urlParams.get('id');
  $('#btn-order-cards').click(function () {
    let userId = $(this).attr('data-id');
    if (userId) {
      $.ajax({
        url: `http://localhost:5001/api/v1/users/${userId}`,
        type: 'GET',
        contentType: 'application/json',
        success: function (response) {
          result = Object.values(response).filter((value) => {
            return value === null || value === 'None';
          });
          if (result.length === 0) {
            const endpoint = `http://localhost:5001/api/v1/users/${userId}/orders`;
            $.ajax({
              url: endpoint,
              type: 'GET',
              contentType: 'application/json',
              success: function (response) {
                const checkOrder = response.filter((order) => {
                  return (
                    order.user_id == userId && order.hotel_id == hotelId
                  );
                });
                if (checkOrder.length > 0) {
                  $('#modal-error-message').text(
                    'You have cards in this event',
                  );
                  $('div#modalCompleteYourProfile').modal();
                } else {
                  $.ajax({
                    type: 'POST',
                    url: endpoint,
                    contentType: 'application/json',
                    data: JSON.stringify({ hotel_id: hotelId }),
                    success: function (response) {
                      const orderId = response.id;
                      if (orderId) {
                        $('#modal-error-message').text(
                          'Your Order Is Successfull',
                        );
                        $('div#modalCompleteYourProfile').modal();
                      }
                    },
                  });
                }
              },
            });
          } else {
            console.log(result);
            $('#modal-error-message').text(
              'Please Complete Your Profile Before Ordering Cards',
            );
            $('div#modalCompleteYourProfile').modal();
          }
        },
      });
    } else {
      $('#modal-error-message').text(
        'Please Login To Your Account Before Ordering Cards',
      );
      $('div#modalCompleteYourProfile').modal();
    }
  });
});
