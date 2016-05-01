
<?php if ($this->countModules('innerAside')>1) : ?>

<div class="row innerPagesContainer" >
    <div class="container ">

        <aside class="innerAside col-xs-3" >
                <jdoc:include type="modules" name="<?php $this->_p('innerAside') ?>" style="raw" />

</aside>


        <section class="innerPagesBody col-xs-9">
            <jdoc:include type="component" />
        </section>


    </div>

</div>
 <?php endif ?>