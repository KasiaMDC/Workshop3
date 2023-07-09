window.onload = function() {
    // Get a reference to the button element
    const confirmButton = document.getElementById('delete-confirm');

    // Add an event listener to the button
    const cancelButton = document.getElementById('delete-cancel');

    confirmButton.addEventListener('click', () => {
        const userId = confirmButton.getAttribute('data-user-id');
        // Perform the POST request
        fetch('/user/delete?id=' + userId, {
            method: 'POST'
            //body: JSON.stringify({ /* request data */ }),
            //headers: {
//            'Content-Type': 'application/json'
            //      }
        })
            .then(response => {
                // Check if the response was successful
                if (response.ok) {
                    // Display a success message dialog
                    alert('Uzytkownik zostal usuniety!');

                    // Redirect to another page
                    window.location.href = '/user/list';
                } else {
                    // Handle the error case
                    alert('Operation failed!');
                }
            })
            .catch(error => {
                // Handle any network errors
                console.error('Error:', error);
                alert('An error occurred. Please try again later.');
            });
    });
    cancelButton.addEventListener('click', () => {
        window.location.href = '/user/list';
    });
};
