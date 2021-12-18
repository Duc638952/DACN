<div class="show_product">
        <div class="title">
             <h1>“The difference between style and fashion is quality”</h1>
             <p>ALL PRODUCTS/</p>
        </div>
        <?php
            $sql = "SELECT * from product";
            $objStatement = $objPDO->prepare($sql);
            $objStatement->execute();
            // $n = $objStatement ->rowCount();
            // echo "co $n ket qua";
            $data = $objStatement->fetchAll(PDO::FETCH_OBJ);
            $i=0;
            foreach($data as $r)
            {   
                $i++;
                ?>
                <div class="product-item">
                    <img src="../products/<?php echo $r->pd_img?>" alt="id_img" class="imge">
                        <div class="text">
                            <div>
                                <a href="../user/detail_pd/detail_pd.php?pd_id=<?php echo $r->pd_id?>"><?php echo $r->pd_name ?></a>
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

