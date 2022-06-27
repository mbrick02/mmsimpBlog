<div class="card record-details">
    <div class="card-heading">
        Fotos
    </div>
    <div class="card-body">
    	<p class="text-center">
    		<?= anchor($uploader_url, '<i class="fa fa-image"></i> Upload Pictures', array("class" => "button alt")) ?>
            <a href="<?= BASE_URL ?>pictures/order_pictures/<?= $target_module ?>/<?= $update_id ?>"><button class="button"><i class="fa fa-pencil"></i> ORDER PICTURES</button></a>
    	</p>

        <?php
        if (count($pictures) == 0) {
        ?>
            <div id="gallery-pics" style="border-bottom: 0; grid-template-columns: repeat(1, 1fr);">
                <p class="text-center">No hay fotos para este registro aún.</p>
            </div>
        <?php    
        } else {
        ?>
            <div id="gallery-pics">
                <?php
                foreach ($pictures as $picture) {
                    $picture_path = $target_directory.$picture;
                    echo '<div onclick="openPicPreview(\'preview-pic-modal\', \''.$picture_path.'\')">';
                    echo '<img src="'.$picture_path.'" alt="<?= $picture ?>"></div>';
                }
                ?>
            </div>
        <?php
        }
        ?>
    </div>
</div>

<div class="modal" id="preview-pic-modal" style="display: none;">
    <div class="modal-heading"><i class="fa fa-image"></i> Ver Foto</div>
    <div class="modal-body">
        <p id="preview-pic"></p>
        <?php 
        $attr_close = array( 
            "class" => "alt",
            "onclick" => "closeModal()"
        );   
        echo '<p>'.form_button('close', 'Cancel', $attr_close);

        $attr_ditch_pic = array( 
            "class" => "danger",
            "id" => "ditch-pic-btn",
            "onclick" => "ditchPreviewPic()"
        );
        echo form_button('delete_pic', 'DELETE THIS PICTURE', $attr_ditch_pic).'</p>';
        ?>
    </div>
</div>