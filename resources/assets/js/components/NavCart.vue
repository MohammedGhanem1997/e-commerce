<template>

  <div class="dropdown cart-dropdown">
    <a  class="dropdown-toggle" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" data-display="static">
      <i class="fa fa-cart-shopping"></i>
      <span class="cart-count">{{ count }}</span>
      <span class="cart-txt">Cart</span>
    </a>

    <div class="dropdown-menu dropdown-menu-right">
      <div class="dropdown-cart-products">


          <div class="dropdown-cart-total">
            <span>Total</span>

            <span class="cart-total-price">{{total}}</span>
          </div><!-- End .dropdown-cart-total -->

          <div class="dropdown-cart-action">
            <a :href="baseUrl +'/cart'" class="btn btn-primary">View Cart</a>
            <a href="#" class="btn btn-outline-primary-2"><span>Checkout</span><i class="icon-long-arrow-right"></i></a>
          </div><!-- End .dropdown-cart-total -->
        </div><!-- End .dropdown-menu -->
      </div><!-- End .cart-dropdown -->

  </div>





</template>

<script>
import axios from "axios";

export default {
  name: "NavCart",
  data() {
    return {
      baseUrl: '',
      count: 0,
      total: 0,
    }
  },
  methods: {},
  mounted() {
    this.baseUrl = window.location.origin;

    this.$root.$on('nav_cart', data => {
      this.count = data.items
      this.total = Math.round(data.total * 100) / 100
    });

    axios.get(this.baseUrl + '/cart/content')
        .then(response => {
          this.count = response.data.data.items;
          this.total = Math.round(response.data.data.total * 100) / 100;
        })
        .catch(e => {
          if (e.response && e.response.status === 401) {
            console.log(e.response)
          } else {
            console.log(e)
          }
        });
  },
}
</script>

<style scoped>

</style>
