<template>


  <div class="product">
    <figure class="product-media">
      <span class="product-label label-sale">Sale</span>
      <a :href="baseUrl+'/shop/' + product.id">
        <img  :src="baseUrl+'/images/'+product.image" alt="Product image" class="product-image">
      </a>

      <div class="product-action-vertical">
        <a href="#" class="btn-product-icon btn-wishlist btn-expandable"><span>add to wishlist</span></a>
        <a href="#" class="btn-product-icon btn-compare" title="Compare"><span>Compare</span></a>
        <a href="popup/quickView.html" class="btn-product-icon btn-quickview" title="Quick view"><span>Quick view</span></a>
      </div><!-- End .product-action-vertical -->

      <div class="product-action">
        <a href="#" class="btn-product btn"    title="Add to cart"  @click="addToCart(product.id)"><span>add to cart</span> <i class="fa fa-shopping-cart"></i> </a>
      </div><!-- End .product-action -->
    </figure><!-- End .product-media -->

    <div class="product-body">
      <div class="product-cat">
        <a href="#">.</a>
      </div><!-- End .product-cat -->
      <h3 class="product-title"><a :href="baseUrl+'/shop/' + product.id">{{ product.name }}</a></h3><!-- End .product-title -->
      <div class="product-price">
        <span class="new-price">{{product.price - (product.price * product.discount /100)}}</span>

        <span class="old-price">{{ product.price }}</span>
      </div><!-- End .product-price -->
      <div class="ratings-container">
        <div class="ratings">
          <div class="ratings-val" style="width: 100%;"></div><!-- End .ratings-val -->
        </div><!-- End .ratings -->
        <span class="ratings-text">( 2 item )</span>
      </div><!-- End .rating-container -->
    </div><!-- End .product-body -->
  </div>









<!--  <div class="col-lg-4 col-sm-6 product-cart">-->
<!--    <div class="cart-wrapper">-->
<!--      <div class="cart-header">-->
<!--        <a :href="baseUrl+'/shop/' + product.id">-->
<!--          <h4 class="header">{{ product.name }}</h4>-->
<!--        </a>-->
<!--        &lt;!&ndash;                <p>Category: {{product.catalogs.name}}</p>&ndash;&gt;-->
<!--      </div>-->
<!--      <div class="effect" @click="slide">-->
<!--        <span class="glyphicon glyphicon-triangle-bottom" :class="{'up':!active}"></span>-->
<!--      </div>-->

<!--      <div class="thumbnail">-->
<!--        <a :href="baseUrl+'/shop/' + product.id">-->
<!--          <div class="img-wrapper">-->
<!--            <vue-slide-up-down :active="active">-->
<!--              <img class="center-block" :alt="'product id '+product.id"-->
<!--                   :src="baseUrl+'/images/'+product.image" :class="{'is-displayed':active}">-->
<!--            </vue-slide-up-down>-->
<!--            <vue-slide-up-down :active="!active">-->
<!--              <p class="product-shop-desc" :class="{'is-displayed':!active}">Description:<br>{{ product.description }}-->
<!--              </p>-->
<!--            </vue-slide-up-down>-->
<!--          </div>-->
<!--        </a>-->
<!--      </div>-->
<!--      <p>Price: {{ product.price }}-->
<!--        <button type="button" class="btn btn-link add-to-cart" @click="addToCart(product.id)">-->
<!--          ADD TO CART-->
<!--        </button>-->
<!--      </p>-->
<!--    </div>-->
<!--  </div>-->
</template>

<script>
import VueSlideUpDown from 'vue-slide-up-down'
import axios from 'axios'

export default {
  name: 'Product',
  components: {VueSlideUpDown},
  props: ['product'],
  data() {
    return {
      baseUrl: '',
      csrf: '',
      active: true,
    }
  },
  computed: {
  },
  methods: {
    slide() {
      this.active = !this.active
    },
    addToCart(product_id) {
      axios.post(this.baseUrl + '/cart/add-to-cart', {
        productId: product_id,
        isRelated: 0,
        productQty: 1,
        _token: this.csrf
      }).then(response => {
        this.$root.$emit('nav_cart', response.data.data)
      }).catch(e => {
        if (e.response && e.response.status === 401) {
          window.location.href = this.baseUrl + '/login';
        } else {
          console.log(e)
        }
        //this.errors.push(e)
      })
    },
  },
  mounted() {
    this.baseUrl = window.location.origin;
    this.csrf = document.head.querySelector('meta[name="csrf-token"]').content;
  }
}
</script>

<style lang="scss" scoped>
.product-cart {
  margin-bottom: 15px;

  .cart-wrapper {
    border: 1px solid gray;
    box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    text-align: center;

    .cart-header {
      height: 6em;
      position: relative;
    }

    .effect {
      margin-top: 5px;

      .glyphicon {
        vertical-align: top;
        -webkit-transition: 0.6s ease-out;
        -moz-transition: 0.6s ease-out;
        transition: 0.6s ease-out;
      }

      .glyphicon.up {
        -webkit-transform: rotateZ(180deg);
        -moz-transform: rotateZ(180deg);
        transform: rotateZ(180deg);
      }

      .glyphicon-triangle-bottom {
        cursor: pointer;
      }

    }

    .thumbnail {
      a:hover {
        text-decoration: none;
      }

      .img-wrapper {
        width: 100%;
        padding-bottom: 100%; /* your aspect ratio here! */
        position: relative;
        height: 20em;

        .product-shop-desc {
          text-align: justify;
          padding: 0px 7px;
        }

        img {
          position: relative;
          top: 0;
          bottom: 0;
          left: 0;
          right: 0;
          max-width: 100%;
        }
      }
    }
  }
}
</style>
