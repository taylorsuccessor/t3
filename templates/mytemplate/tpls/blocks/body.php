<?php
/**
 * @package   T3 Blank
 * @copyright Copyright (C) 2005 - 2012 Open Source Matters, Inc. All rights reserved.
 * @license   GNU General Public License version 2 or later; see LICENSE.txt
 */

defined('_JEXEC') or die;
?>

<jdoc:include type="message" />

<jdoc:include type="component" />
<div class="row">
    <?php if ($this->countModules('position-2')) : ?>
            <jdoc:include type="modules" name="<?php $this->_p('position-2') ?>" style="raw" />

    <?php endif ?>
</div>



<div class="row " >
    <?php if ($this->countModules('position-3')) : ?>
        <jdoc:include type="modules" name="<?php $this->_p('position-3') ?>" style="raw" />

    <?php endif ?>
</div>




<!--<div class="clearfix"></div>-->
<!--<div class="row">-->
<!--    <div class="clearfix"></div>-->
<!--    <div id="mapGroupContainer">-->
<!---->
<!--        <div styte="height:40px; clear:both; background-color:#f00; width:100% !important;">dsf</div>-->
<!---->
<!--        <div class="clearfix"></div>-->
<!--    </div>-->
<!---->
<!--    <div class="clearfix"></div>-->
<!--    <div class="shadowLine"></div>-->
<!--</div>-->
<!--<div class="clearfix"></div>-->

<div class="row">
    <div id="mapGroupContainer">



        <?php if ($this->countModules('position-4')) : ?>

        <div class="col-xs-5">
            <jdoc:include type="modules" name="<?php $this->_p('position-4') ?>" style="raw" />
</div>
        <?php endif ?>



        <?php if ($this->countModules('position-5')) : ?>

        <div class="col-xs-7" id="rightGroupsContainer">
            <jdoc:include type="modules" name="<?php $this->_p('position-5') ?>" style="raw" />
        </div>
        <?php endif ?>


    </div>

    <div class="shadowLine"></div>
</div>














<div class="row">

        <?php if ($this->checkSpotlight('spotlight-3', 'position-6, position-7, position-8')) : ?>

        <div class="container t3-a1 t3-s1-1  ">
                <?php $this->spotlight('spotlight-3', 'position-6, position-7, position-8') ?>
           </div>
        <?php endif ?>










</div>








<?php if ($this->countModules('position-9')) : ?>

        <jdoc:include type="modules" name="<?php $this->_p('position-9') ?>" style="raw" />

<?php endif ?>







<div class="row">

    <?php if ($this->countModules('position-10')) : ?>

        <jdoc:include type="modules" name="<?php $this->_p('position-10') ?>" style="raw" />

    <?php endif ?>
</div>




<div class="row">

        <?php if ($this->countModules('position-11')) : ?>

        <div class="container">
            <jdoc:include type="modules" name="<?php $this->_p('position-11') ?>" style="raw" />
</div>
        <?php endif ?>

</div>

