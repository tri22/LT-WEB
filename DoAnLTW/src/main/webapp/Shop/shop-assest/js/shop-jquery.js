//LOGIN LOGUP
window.addEventListener("load",function(){
    const loginButn = document.querySelector('.js-login')
    const modal = document.querySelector('.modal')
    const closeLoginButn = document.querySelector('.js-modalLogin-close')
    const logupButn = document.querySelector('.js-logup')
    const modal_logup = document.querySelector('.modal-logup')
    const closeLogupButn = document.querySelector('.js-modalLogup-close')
    const loginButn_after = document.querySelector('.js-login-after')
    const modal_Container_login = document.querySelector('.js-modal-containerLogin')
    const modal_Container_logup = document.querySelector('.js-modal-containerLogup')
    
    
    
    //hàm hiển thị modal-signin
    function showModalLogin(){
    modal.classList.add('openSignin');
    }
    //hàm đóng modal-signin
    function removeModalLogin(){
    modal.classList.remove('openSignin');
    }

    Mousetrap.bind('l',function(){
        modal.classList.add('openSignin');
    });
    
    // hàm hiển thị tab sign up
    function showModalLogup(){
    modal_logup.classList.add('openSignup');
    modal.classList.remove('openSignin');
    }
    //hàm đóng modal-signin
    function removeModalLogup(){
    modal_logup.classList.remove('openSignup');
    }
    
    
    //hàm mở sign in ---> đóng sign up
    function showModalLogin_after(){
    modal.classList.add('openSignin');
    modal_logup.classList.remove('openSignup');
    }
    
    // nghe hành vi click
    loginButn.addEventListener('click', showModalLogin);  // click vào login mở login
    closeLoginButn.addEventListener('click', removeModalLogin); //  đóng login
    logupButn.addEventListener('click', showModalLogup); // mở logup
    closeLogupButn.addEventListener('click', removeModalLogup);   // ẩn log up
    loginButn_after.addEventListener('click', showModalLogin_after);//  mở login khi đang ở tab log up
    
    
    // nghe hành vi click ẩn modal khi click ngoài vùng container
    modal.addEventListener('click', removeModalLogin)    
    modal_logup.addEventListener('click', removeModalLogup )
    
    modal_Container_login.addEventListener('click', function(event){
        event.stopPropagation();
    })
    
    modal_Container_logup.addEventListener('click', function(event){
        event.stopPropagation();
    })
    
});

//MENU AND SUBMENU
$(document).ready(function() {
    $(window).scroll(function() {
        if($(this).scrollTop() > 200){
            $('#header2').addClass('sticky');
        }else{
            $('#header2').removeClass('sticky');
        }

        if($(this).scrollTop() > 400){
            $('#header2.sticky').addClass('visible');
        }else{
             $('#header2.sticky').removeClass('visible');
        }
    });

    $('.btn').click(function () {
        $('.list-display-none').slideToggle('slow');
    });
});

window.addEventListener("load",function(){
    Mousetrap.bind('s',function(){
        document.getElementById("shop-link").click();
    });
}); 

window.addEventListener("load",function(){
    Mousetrap.bind('h',function(){
        document.getElementById("home-link").click();
    });
});

window.addEventListener("load",function(){
    Mousetrap.bind('a',function(){
        document.getElementById("about-link").click();
    });
});

window.addEventListener("load",function(){
    Mousetrap.bind('b',function(){
        document.getElementById("blog-link").click();
    });
});

window.addEventListener("load",function(){
    Mousetrap.bind('c',function(){
        document.getElementById("contact-link").click();
    });
});

window.addEventListener("load",function(){
    Mousetrap.bind('w',function(){
        document.getElementById("wishlist-link").click();
    });
});