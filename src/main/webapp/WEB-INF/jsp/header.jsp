<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav>
    <div class="container">
        <a href="#" class="logo">Achievement-Store</a>
        <ul>
            <li><a href="/index" class="active">Home</a></li>
            <li><a href="/board/list">Board</a></li>
            <li><a href="#">Store</a></li>
            <li><a href="#">Mypage</a></li>
        </ul>
    </div>
</nav>

<script>
    const nav = document.querySelector('nav');
    window.addEventListener('scroll', fixNav);

    function fixNav() {
        if (window.scrollY > nav.offsetHeight + 150) {
            nav.classList.add('active');
        } else {
            nav.classList.remove('active');
        }
    }
</script>