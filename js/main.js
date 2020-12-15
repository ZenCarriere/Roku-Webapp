import { fetchData } from "./components/DataMiner.js";
import ButtonComponent from "./components/TheButtonComponent.js";
import KidButtonComponent from "./components/TheKidButtonComponent.js";
import LightboxComponent from "./components/TheLightboxComponent.js";

const myVM =(() => {
    let vue_vm = new Vue({
        data:{
        currentItem: {},
        mediaType:"",
        landing: [],
        social: [],
        content: [],
        kidcontent: [],
        kidsocial: [],
        },

        mounted: function(){
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
            setComponent(item){
                this.mediaType = item.mediatype;
                this.currentItem = item;
                document.querySelector('.lightbox').classList.add('show-lightbox');
            }
        },

        components: {
            "buttoncomponent" : ButtonComponent,
            "kidbuttoncomponent" : KidButtonComponent,
            "lightbox" : LightboxComponent
        }

    }).$mount("#page");

})();