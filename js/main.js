import { fetchData } from "./components/DataMiner.js";

const myVM =(() => {
    let vue_vm = new Vue({
        data:{
        landing: [],
        social: [],
        content: [],
        kidcontent: [],
        kidsocial: [],
        },

        mounted: function(){
            debugger;
            console.log("Vue is ready to go");

            fetchData("./includes/landing.php")
            .then(data => {
                data.forEach(item => this.landing.push(item));
                })
            .catch(err => console.log(err));


            fetchData("./includes/social.php")
            .then(data => {
                data.forEach(item => this.social.push(item));
                })
            .catch(err => console.log(err));


            fetchData("./includes/regularcontent.php")
            .then(data => {
                data.forEach(item => this.content.push(item));
                })
            .catch(err => console.log(err));


            fetchData("./includes/kidcontent.php")
            .then(data => {
                data.forEach(item => this.kidcontent.push(item));
                })
            .catch(err => console.log(err));


            fetchData("./includes/kidsocial.php")
            .then(data => {
                data.forEach(item => this.kidsocial.push(item));
                })
            .catch(err => console.log(err));

        },

        updated: function(){
            console.log('vue just updated the DOM!')
        },

        methods: {
            showContentData(data){
                console.log("clicked on content");
                let lightbox = document.querySelector(".lightbox"),
                CloseButton = lightbox.querySelector('span');

                CloseButton.addEventListener("click", ()=> { lightbox.classList.remove('show-lightbox')});

                lightbox.classList.add('show-lightbox');

                lightbox.querySelector('img').src=`images/${data.port_image}`;
                lightbox.querySelector('h3').textContent = data.port_title;

            }
        }

    }).$mount("#page");

})();