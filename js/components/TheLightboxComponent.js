import Audio from "./TheAudioComponent.js";
import Video from "./TheVideoComponent.js";

export default {
    props: ["item", "mediatype"],

    template: `
    <section class="lightbox">
    <span class="lb-close" @click="closelb">x</span>
    
    <component :is="currentComponent" :work="item"></component>
    </section>`,

    computed: {
        currentComponent: function(){
            return this.mediatype;
        }
    },

    components: {
        Audio,
        Video
    },

    methods: {
        closelb() {
            document.querySelector('.lightbox').classList.remove('show-lightbox');
        }
    }
}