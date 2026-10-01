// Seleccionamos la tarjeta de Jiji (el tercer elemento de la galería) y el modal
        const tarjetaJiji = document.querySelector('.galeria-item:nth-child(3)');
        const modal = document.getElementById('jijiModal');

        // Cuando haces clic en Jiji, se muestra el modal
        tarjetaJiji.addEventListener('click', () => {
            modal.style.display = 'flex';
        });

        // Función para cerrar con la "X"
        function cerrarModal() {
            modal.style.display = 'none';
        }

        // Si hacen clic fuera de la cajita blanca, también se cierra
        window.addEventListener('click', (e) => {
            if (e.target === modal) {
                modal.style.display = 'none';
            }
        });