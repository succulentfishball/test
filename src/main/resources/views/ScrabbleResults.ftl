<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Correct Answer!</title>
    <style>
        body {
            margin: 0;
            overflow: hidden;
        }

        canvas {
            display: block;
        }
    </style>
</head>
<body style="background-color: lightsalmon">

<canvas id="confettiCanvas"></canvas>

<script>
    // Kotlin variables or data you want to pass to JavaScript

    // ...

    // Confetti Effect JavaScript
    const canvas = document.getElementById('confettiCanvas');
    const ctx = canvas.getContext('2d');

    canvas.width = window.innerWidth;
    canvas.height = window.innerHeight;

    const confettiPieces = [];

    function ConfettiParticle() {
        this.color = `rgb(255, 195, 0)`;
        this.x = Math.random() * canvas.width;
        this.y = 0; // Start from the top
        this.width = Math.random() * 20 + 10; // Adjust the width as needed
        this.height = Math.random() * 40 + 20; // Adjust the height as needed
        this.speedY = Math.random() * 5 + 2; // Adjust the falling speed as needed
        this.rotation = Math.random() * 360; // Random orientation in degrees

        this.draw = function() {
            ctx.fillStyle = this.color;

            // Save the current transformation matrix
            ctx.save();

            // Translate to the center of the rectangle
            ctx.translate(this.x + this.width / 2, this.y + this.height / 2);

            // Rotate the rectangle by the specified angle
            ctx.rotate((Math.PI / 180) * this.rotation);

            // Draw a rectangle with a black border
            ctx.strokeStyle = 'black';
            ctx.lineWidth = 2;

            ctx.beginPath();
            ctx.rect(-this.width / 2, -this.height / 2, this.width, this.height);
            ctx.stroke();
            ctx.fill();

            // Restore the original transformation matrix
            ctx.restore();
        };

        this.update = function() {
            this.y += this.speedY;

            if (this.y > canvas.height) {
                // Reset to the top if it goes below the canvas
                this.y = 0;
                this.x = Math.random() * canvas.width;
                this.rotation = Math.random() * 360; // Randomize orientation again
            }

            this.draw();
        };
    }

    function createConfetti() {
        for (let i = 0; i < 100; i++) {
            confettiPieces.push(new ConfettiParticle());
        }
    }

    function drawCenteredText() {
        const text = "Yay!:) \nSee you on the 16th <3";
        ctx.font = "40px Helvetica";
        ctx.fillStyle = "black";
        ctx.textAlign = "center";
        ctx.fillText(text, canvas.width / 2, canvas.height / 2);
    }

    function animateConfetti() {
        requestAnimationFrame(animateConfetti);
        ctx.clearRect(0, 0, canvas.width, canvas.height);

        drawCenteredText();

        for (const confettiPiece of confettiPieces) {
            confettiPiece.update();
        }
    }

    createConfetti();
    animateConfetti();
</script>

</body>
</html>
