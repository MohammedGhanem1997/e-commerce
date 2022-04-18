<template>


  <div class="header-search header-search-extended header-search-visible header-search-no-radius d-none d-lg-block">
    <a href="#" class="search-toggle" role="button"><i class="fa fa-search"></i></a>
    <form action="#" method="get">
      <div class="header-search-wrapper search-wrapper-wide">

        <label for="q" class="sr-only">Search</label>
        <input type="search" class="form-control" name="q" id="q"  v-model="keyword"  placeholder="Search product ..." required="">
        <button class="btn btn-primary" type="button"   @click.prevent="search"><i class="fa fa-search"></i></button>
      </div><!-- End .header-search-wrapper -->
    </form>
  </div>



</template>

<script>

export default {
  name: "NavSearch",
  props: ['searchUrl'],
  data() {
    return {
      keyword: '',
    }
  },
  methods: {
    search() {
      if (this.keyword.trim()) {
        if (window.location.pathname === '/shop' || window.location.pathname === '/') {
          this.$root.$emit('product_search', {keyword: this.keyword});

          return;
        }

        window.location = window.location.origin + '/shop?keyword=' + this.keyword;
      }
    }
  },
  mounted() {
  }
}
</script>

<style scoped>
</style>
