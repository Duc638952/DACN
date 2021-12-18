<div class="show_product">
    <div class="title">
    <?php
        $n = isset($_GET['Search_title'])?$_GET['Search_title']:'';
        $s = "%$n%";
    ?>
        <p>keyword : <?php echo $n ?></p>
    </div>
        <?php
            $sql = "SELECT * from product Where pd_id like? OR pd_name LIKE? OR cat_id like? OR pd_price LIKE? ";
            $a =[$s, $s, $s, $s];
            $objStatement = $objPDO->prepare($sql);
            $objStatement->execute($a);
            // $n = $objStatement ->rowCount();
            // echo "co $n ket qua";
            $data = $objStatement->fetchAll(PDO::FETCH_OBJ);
            $i=0;
            foreach($data as $r)
            {   
                $i++;
                ?>
                <div class="product-item">
                    <img src="../../products/<?php echo $r->pd_img?>" alt="img" class="imge">
                        <div class="text">
                            <div>
                                <a href="../../user/detail_pd/detail_pd.php?pd_id=<?php echo $r->pd_id?>"><?php echo $r->pd_name ?></a>
                            </div>
                            <div>
                                $<?php echo $r->pd_price?>.00
                            </div>
                        </div>
                </div>
                <?php
            }
        ?>
</div>

