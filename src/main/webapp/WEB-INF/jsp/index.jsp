<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/css/common/index.css">
</head>
<body>
<nav>
    <div class="container">
        <a href="#" class="logo">FlorinPop</a>
        <ul>
            <li><a href="#" class="active">Home</a></li>
            <li><a href="#">About</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </div>
</nav>

<div class="hero">
    <div class="container">
        <h1>Welcome to Page</h1>
        <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Et dignissimos, dolore harum molestiae.</p>
    </div>
</div>
<section class="container content">
    <h2>Content goes here</h2>
    <p>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quia reiciendis ea fugiat impedit delectus itaque corporis, quaerat quasi quo! Corrupti modi eius ipsum ratione omnis odio veritatis minus aspernatur labore quibusdam repudiandae distinctio magnam reiciendis dolore qui, sint officia aliquam quisquam expedita ipsa accusamus blanditiis delectus? Officiis, minus ut doloremque excepturi voluptatem ratione dignissimos illum consectetur dolor animi eveniet itaque tempore impedit, fugiat omnis saepe aliquid? Sit, illum dolorum dolorem repudiandae aut laborum enim unde vitae voluptates. Error, vitae ratione animi numquam dolore vel. Aperiam quo libero, facilis beatae exercitationem et corporis. Porro, maiores autem dolorem quod accusantium fuga fugit nulla optio quo iusto non voluptatum neque nemo ducimus obcaecati quia exercitationem velit itaque, temporibus aperiam accusamus delectus sunt qui culpa. Nobis saepe doloribus hic similique aperiam eveniet commodi nisi quis quibusdam assumenda quam iste sint, nihil magnam consectetur facilis? Eum saepe quos nam similique vero ullam est, ipsam excepturi, voluptas quaerat rerum dolor. Vel nostrum odio esse cum adipisci, fugit nam nulla omnis, laboriosam beatae est minima dicta deserunt accusantium mollitia, itaque ducimus consequuntur iure explicabo similique perferendis dolorum! Eligendi officiis suscipit iusto fugit nostrum sit, numquam quia quidem officia itaque repellendus reiciendis magnam corporis nisi, placeat quae ducimus.</p>

    <h3>More content</h3>
    <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Ut eligendi adipisci ipsum beatae nobis debitis praesentium, facilis quidem numquam cumque incidunt quos alias sunt voluptates ad sit facere, perferendis quasi, aliquid enim laboriosam quod odit eaque. Obcaecati ab, voluptas inventore provident doloremque dolorem vitae pariatur repellendus labore numquam dolore quod?</p>
</section>

<footer>
    <p>
        Created with <i class="fa fa-heart"></i> by
        <a href="http://florin-pop.com">Florin Pop</a>
        - More on
        <a target="_blank" href="https://github.com/florinpop17/work-journal">Github</a>
    </p>
</footer>
<script>
    const nav = document.querySelector('nav');
    window.addEventListener('scroll', fixNav);

    function fixNav() {
        if(window.scrollY > nav.offsetHeight + 150) {
            nav.classList.add('active');
        } else {
            nav.classList.remove('active');
        }
    }
</script>
</body>
</html>
