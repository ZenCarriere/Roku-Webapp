export default{
    name: "ButtonComponent",

    props: ['item'],

    template: `
    <div @click="loadMediaComponent" class="button-wrapper" :data-mediaType="item.mediatype">
    <img class="lb-thumb" :src='"images/" + item.rgthumbnail' :alt='item.rgName' id="contentImage">
    </div>`,

    methods: {
        loadMediaComponent(event){
            this.$emit("setmediatype", this.item);
        }
    }
}