export default{
    name: "KidButtonComponent",

    props: ['item'],

    template: `
    <div @click="loadKidMediaComponent" class="button-wrapper" :data-mediaType="item.mediatype">
    <img class="lb-thumb" :src='"images/" + item.kdthumbnail' :alt='item.kdName' id="kidcontentImage">
    </div>`,

    methods: {
        loadKidMediaComponent(event){
            this.$emit("setmediatype", this.item);
        }
    }
}