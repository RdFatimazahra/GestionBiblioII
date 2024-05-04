
    document.addEventListener("DOMContentLoaded", function() {
        const form = document.querySelector('.input-box');
        const inputs = form.querySelectorAll('.input');
        const submitBtn = form.querySelector('.submit');

        submitBtn.addEventListener('click', function(event) {
            event.preventDefault();
            let isValid = true;

            inputs.forEach(input => {
                if (!input.value.trim()) {
                    isValid = false;
                    input.classList.add('error');
                } else {
                    input.classList.remove('error');
                }
            });

            if (isValid) {
                // Form submission code goes here
                // You can redirect to another page or submit the form via AJAX
                console.log('Form is valid. Submitting...');
            } else {
                console.log('Form is invalid. Please fill in all fields.');
            }
        });
    });