
<div class="row">

    <?php if ($this->countModules('position-12')) : ?>

        <jdoc:include type="modules" name="<?php $this->_p('position-12') ?>" style="raw" />

    <?php endif ?>

</div>




<div class="row" id="bottomBoxesMenus">

    <div class="container">


        <?php if ($this->checkSpotlight('spotlight-13', 'position-13, position-14, position-15,position-16')) : ?>

        <div class="container t3-a1 t3-s1-1  ">
            <?php $this->spotlight('spotlight-13', 'position-13, position-14, position-15,position-16') ?>
        </div>
<?php endif ?>




    </div>

</div>




<?php if ($this->countModules('footerLine')) : ?>

<div class="row" id="bottomRow">
    <div class="container">
    <jdoc:include type="modules" name="<?php $this->_p('footerLine') ?>" style="raw" />
</div>
    </div>
<?php endif ?>

