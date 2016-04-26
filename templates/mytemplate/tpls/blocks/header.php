<?php

// Layout configuration
$layout_config = json_decode ('{
    "no_sidebars": {
      "default" : [ "span7 offset5" ,"col-xs-9"        ],
      "wide"    : [],
      "normal" : [ "span10 offset2"],
      "xtablet" : ["span10 offset2"],
      "tablet"  : [ "span12"          ]
    }
  }');


$layout='no_sidebars';
$layout = $layout_config->$layout;

$col = 0;
?>




<div class="row">

    <?php if ($this->countModules('position-1')) : ?>
<div id="topPageIconsBar" class=" bg-mainColor col-xs-12 col-sm-10 col-md-6">
    <jdoc:include type="modules" name="<?php $this->_p('position-1') ?>" style="raw" />
    <!--
<ul class="horizontalUl">
    <li>
        <a href="#">
            <span>english  </span>
            <i class="fa fa-caret-down"></i>
        </a>
    </li>
    <li>
        <a href="#">
            <i class="fa fa-users"></i>
            <span>log in</span>
        </a>
    </li>
    <li>
        <a href="#">
            <i class="fa fa-users"></i>
            <span>live chat</span>
        </a>
    </li>

    <li>

        <i class=""></i>
        <span>US </span>

    </li>


</ul>
    <div class="inputWithIcon" id="headerSearchInput">
        <i class="fa fa-search"></i>
        <input name="search" type="text">
       </div>
-->
</div>
    <?php endif ?>
</div>


<div class="row clearfix">
    <div class="container" id="mainMenuContainer" >

        <div class="col-xs-3">
            <img src="<?=T3Path::getUrl('images/logo.png', '', true) ; ?>" class="logo">
        </div>


        <?php if ($this->countModules('mainMenu')) : ?>
            <div class=" mainMenu horizontalUl  mainMenuContainer   <?php echo $this->getClass($layout, 1) ?>">
                <jdoc:include type="modules" name="<?php $this->_p('mainMenu') ?>" style="raw" />
            </div>
        <?php endif ?>

    </div>
</div>


<div class="row">

    <?php if ($this->countModules('topSlider')) : ?>
        <section class="sliderSection">
            <jdoc:include type="modules" name="<?php $this->_p('topSlider') ?>" style="raw" />


        </section>
    <?php endif ?>
</div>




<div class="row">

    <?php if ($this->countModules('underSlider')) : ?>
        <div class="col-xs-12" id="pricesLine">
            <jdoc:include type="modules" name="<?php $this->_p('underSlider') ?>" style="raw" />

        </div>
    <?php endif ?>
</div>











