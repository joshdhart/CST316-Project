$(document).ready(
	function () {
	    var $panel = $(".panel");
	    var $container = $panel.find(".container");
	    var $infoSection = $panel.find(".info-section");
	    var $desc = $infoSection.find(".description");
	    var $formPanel = $infoSection.find(".form-panel");

	    var panelWidth = $panel.width();
	    var formWidth = $formPanel.outerWidth();
	    var infoPad = $infoSection.outerWidth() - $infoSection.width();
	    var descPad = $desc.outerWidth() - $desc.width();

	    var $gridCol = $("#grid-col");
	    var $gridRow = $("#grid-row");
	    var $categories = $("input[name='category']");
	    var $linkType = $("#link-type");
	    var $panelDir = $("#panel-dir");
	    var $effects = $("#effects");
	    var $indexCB = $("#index-cb");
	    var $playBtnCB = $("#playbtn-cb");
	    var $numCB = $("#num-cb");
	    var $dBtnsCB = $("#dbuttons-cb");
	    var $infoCB = $("#info-cb");
	    var $timerCB = $("#timer-cb");
	    var $mouseCapCB = $("#m-cap-cb");
	    var $mouseBtnsCB = $("#m-dbtns-cb");
	    var $capAlign = $("#cap-align");
	    var $capPos = $("#cap-pos");
	    var $capEffects = $("#cap-effects");
	    var $submitButton = $("#submit-btn");
	    var $resetButton = $("#reset-btn");

	    $("div.c1", $container).append($("#text1").html());
	    $("div.c2", $container).append($("#text2").html());
	    $("div.c3", $container).append($("#text3").html());
	    $("div.c4", $container).append($("#text4").html());

	    $(".container").gridSlider({
	        num_cols: 4,
	        num_rows: 2,
	        tile_width: 225,
	        tile_height: 150,
	        tile_margin: 5,
	        tile_border: 1,
	        auto_scale: false,
	        auto_center: false,
	        margin: 10,
	        auto_rotate: false,
	        delay: 7000,
	        mouseover_pause: false,
	        effect: "h_slide",
	        duration: 500,
	        easing: "",
	        display_panel: true,
	        panel_direction: "bottom",
	        display_timer: true,
	        display_dbuttons: true,
	        mouseover_dbuttons: true,
	        display_numinfo: true,
	        display_index: true,
	        display_number: true,
	        display_play: true,
	        display_caption: true,
	        mouseover_caption: true,
	        caption_effect: "fade",
	        caption_align: "bottom",
	        caption_position: "inside",
	        caption_width: 115,
	        caption_height: 0,
	        cont_nav: true,
	        shuffle: false,
	        category_index: 0
	    });

	    $submitButton.click(function () {
	        $container.undoChanges()
					  .setGridSize($gridCol.val(), $gridRow.val())
					  .setNoCategory($categories.filter(":checked").val() == "no")
					  .setLinkType($linkType.val())
					  .setOverlayDir($panelDir.val())
					  .setEffect($effects.val())
					  .setIndex($indexCB.prop("checked"))
					  .setPlayButton($playBtnCB.prop("checked"))
					  .setIndexNumber($numCB.prop("checked"))
					  .setDButtons($dBtnsCB.prop("checked"))
					  .setNumInfo($infoCB.prop("checked"))
					  .setTimerBar($timerCB.prop("checked"))
					  .setMouseCaptions($mouseCapCB.prop("checked"))
					  .setMouseDButtons($mouseBtnsCB.prop("checked"))
					  .setCaptionAlign($capAlign.val())
					  .setCaptionPos($capPos.val())
					  .setCaptionEffect($capEffects.val())
					  .updateChanges();
	        setLightbox();
	        setPanelWidth();
	    });

	    $resetButton.click(function () {
	        init();
	        $submitButton.trigger("click");
	    });

	    $linkType.change(function () {
	        $panelDir.attr("disabled", $(this).val() != "panel");
	    });

	    $capPos.change(function () {
	        var disable = $(this).val() == "outside";
	        $mouseCapCB.attr("disabled", disable);
	        $capEffects.attr("disabled", disable || !$mouseCapCB.prop("checked"));
	        $("label#mouse-cap-label").toggleClass("disable", disable);
	    });

	    $dBtnsCB.change(function () {
	        var disable = !$(this).prop("checked");
	        $mouseBtnsCB.attr("disabled", disable);
	        $("label#mouse-dbtns-label").toggleClass("disable", disable);
	    });

	    $indexCB.change(function () {
	        var disable = !$(this).prop("checked");
	        $numCB.attr("disabled", disable);
	        $("label#num-label").toggleClass("disable", disable);
	    });

	    $mouseCapCB.change(function () {
	        $capEffects.attr("disabled", !$(this).prop("checked"));
	    });

	    var init = function () {
	        $gridCol.val(4);
	        $gridRow.val(2);
	        $("input#multi-cat").prop("checked", true);
	        $linkType.val("panel");
	        $panelDir.val("bottom").attr("disabled", false);
	        $effects.val("h_slide");
	        $indexCB.prop("checked", "checked");
	        $playBtnCB.prop("checked", "checked");
	        $numCB.prop("checked", "checked").attr("disabled", false);
	        $dBtnsCB.prop("checked", "checked");
	        $infoCB.prop("checked", "checked");
	        $timerCB.prop("checked", "checked");
	        $mouseCapCB.prop("checked", "checked").attr("disabled", false);
	        $mouseBtnsCB.prop("checked", "checked").attr("disabled", false);
	        $capAlign.val("bottom");
	        $capPos.val("inside");
	        $capEffects.val("fade").attr("disabled", false);
	        $("label#num-label,label#mouse-cap-label,label#mouse-dbtns-label").removeClass("disable");
	    }

	    var setLightbox = function () {
	        if ($linkType.val() == "lightbox") {
	            var $links = $container.find("a");
	            if ($categories.filter(":checked").val() == "no") {
	                $links.attr("rel", "all");
	            }
	            else {
	                $container.find("a.set1").attr("rel", "set1");
	                $container.find("a.set2").attr("rel", "set2");
	                $container.find("a.set3").attr("rel", "set3");
	            }

	            $links.wtLightBox({
	                rotate: true,
	                delay: 4000,
	                transition_speed: 600,
	                display_number: true,
	                display_dbuttons: true,
	                display_timer: true,
	                display_caption: false,
	                mouseover_buttons: true,
	                cont_nav: true,
	                auto_fit: true
	            });
	        }
	    }

	    var setPanelWidth = function () {
	        var width = $container.find(">div").outerWidth();
	        if (width < panelWidth) {
	            width = panelWidth;
	        }
	        $panel.css({ width: width, marginLeft: -width / 2 });
	        $infoSection.width(width - infoPad);
	        $desc.width($infoSection.width() - descPad - formWidth);
	    }

	    init();
	}
);