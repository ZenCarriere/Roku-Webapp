import { fetchData } from "./components/DataMiner.js";
import { SendMail } from "./components/mailer.js";

const myVM =(() => {
    let vue_vm = new Vue({
        // el: "#page",
        data:{
        iprojects: [],
        pprojects: [],
        about:"I'm Zen, an Interactive Media Design student at Fanshawe College. My passion for web design began in high school when I took a computer programming class for an easy grade. To my surprise I wound up loving the mix of creativity and craft that goes into designing and making websites. Though I actually started College in Fanshawe's Computer Programmer Analyst program I quickly found that I needed a more creative outlet for my career. I love simplistic and natural shape driven design (as you can probably tell) but I'm always pushing myself to experiment and play around with new design concepts. When I'm not studying hard to become the best web developer I can be I'm having fun with other creative pursuits. I'm a massive fan of the arts in all its forms whether it be film, music, literature, or pretty much any other art form you can think of. I love finding inspiration for my work through art in even the most unexpected places.",
        welcome: "My name is Zen and I craft user friendly unique websites, designs, video edits, and 3d motion designs for all sorts of start-ups and web based businesses. If you're looking for a multimedia designer that will take the time to bring your ideas to life then look no further! Feel free to check out my work here and if you like what you see then my contact page is right up there!"
        },

        mounted: function(){
            debugger;
            console.log("Vue is ready to go");
            fetchData("./includes/index.php")
            .then(data => {
                data.forEach(project => this.iprojects.push(project));
                })
            .catch(err => console.log(err));

            fetchData("./includes/index2.php")
            .then(data => {
                data.forEach(project => this.pprojects.push(project));
                })
            .catch(err => console.log(err));
        },

        updated: function(){
            console.log('vue just updated the DOM!')
        },

        methods: {
            showProjectData(data){
                console.log("clicked on a project");
                let lightbox = document.querySelector(".lightbox"),
                CloseButton = lightbox.querySelector('span');

                CloseButton.addEventListener("click", ()=> { lightbox.classList.remove('show-lightbox')});

                lightbox.classList.add('show-lightbox');

                lightbox.querySelector('img').src=`images/${data.port_image}`;
                lightbox.querySelector('h3').textContent = data.port_title;

            }
        }

    }).$mount("#page");
    
    let mailSubmit = document.querySelector('#submitButton');

    function processMailFailure(result) {
        console.table(result);
        alert(result.message);
    }

    function processMailSuccess(result) {
        console.table(result); 
        alert(result.message);
    }

    function processMail(event) {
        event.preventDefault();

        SendMail(this.parentNode)
            .then(data => processMailSuccess(data))
            .catch(err => processMailFailure(err));
    }

    mailSubmit.addEventListener("click", processMail);
})();