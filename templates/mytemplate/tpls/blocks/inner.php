
<?php if ($this->countModules('innerAside')) : ?>

<div class="row innerPagesContainer" >
    <div class="container ">

        <aside class="innerAside col-xs-3" >
<!---->
<!---->
<!--            <a href="#" class=" button primaryButton ">APPLY FOR FREE DEMO</a>-->
<!--            <a href="#" class=" button primaryButton "> APPLY FOR LIVE ACCOUNT</a>-->

                <jdoc:include type="modules" name="<?php $this->_p('innerAside') ?>" style="raw" />


</aside>


        <section class="innerPagesBody col-xs-9">

            <jdoc:include type="component" />




        </section>


    </div>

</div>
 <?php endif ?>