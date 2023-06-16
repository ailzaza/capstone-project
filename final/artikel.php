<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DarahKu</title>
    <!-- Link the external CSS file -->
    <link rel="stylesheet" href="../assets/css/artikel.css" />
    <!-- Include Bootstrap CSS -->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/css/bootstrap.min.css"
    />
  </head>
  <body>
    <div class="container">
      <h1 class="text-center">Artikel DarahKu</h1>
      <div
        class="btn-group d-flex justify-content-center mt-3"
        role="group"
        aria-label="Button group"
      >
        <button
          type="button"
          class="btn btn-primary"
          onclick="loadContent('news')"
        >
          Diabetes
        </button>
        <button
          type="button"
          class="btn btn-primary"
          onclick="loadContent('tips')"
        >
          Asam Urat
        </button>
        <button
          type="button"
          class="btn btn-primary"
          onclick="loadContent('informasi')"
        >
          Kolestrol
        </button>
      </div>
    </div>

    <!-- Include Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.0.2/js/bootstrap.bundle.min.js"></script>
    <script>
      function loadContent(type) {
        fetch("data.json")
          .then((response) => response.json())
          .then((data) => {
            const modalBody = document.querySelector(".modal-body");
            modalBody.innerHTML = "";

            const filteredData = data.filter((item) => item.type === type);

            if (filteredData.length > 3) {
              modalBody.classList.add("grid");
            } else {
              modalBody.classList.remove("grid");
            }

            filteredData.forEach((item) => {
              const contentDiv = document.createElement("div");
              contentDiv.classList.add("content");

              const title = document.createElement("h2");
              title.textContent = item.title;
              contentDiv.appendChild(title);

              const image = document.createElement("img");
              image.src = item.image;
              contentDiv.appendChild(image);

              const link = document.createElement("a");
              link.href = item.link;
              link.textContent = "Read More";
              link.classList.add("btn", "btn-primary");
              contentDiv.appendChild(link);

              modalBody.appendChild(contentDiv);
            });

            const modal = new bootstrap.Modal(
              document.getElementById("contentModal")
            );
            modal.show();
          })
          .catch((error) => {
            console.error("Error:", error);
          });
      }
    </script>

    <!-- Modal -->
    <div
      class="modal fade"
      id="contentModal"
      tabindex="-1"
      aria-labelledby="contentModalLabel"
      aria-hidden="true"
    >
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title text-center" id="contentModalLabel">
              Content
            </h5>
            <button
              type="button"
              class="btn-close"
              data-bs-dismiss="modal"
              aria-label="Close"
            ></button>
          </div>
          <div class="modal-body"></div>
          <div class="modal-footer">
            <button
              type="button"
              class="btn btn-secondary"
              data-bs-dismiss="modal"
            >
              Close
            </button>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>