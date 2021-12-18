<?php
        if(isset($_GET['pd_id']))
        {
                $pd_id=$_GET['pd_id'];
        }else{
                $pd_id=" ";
        }
        $sql = "SELECT * FROM product where pd_id='$pd_id'";
        $objStatement = $objPDO->prepare($sql);
        $objStatement->execute();
        $data = $objStatement->fetchAll(PDO::FETCH_OBJ);
        // $n = $objStatement ->rowCount();
        //     echo "co $n ket qua";
        // var_dump($sql);
        // var_dump($data);
       
?>
<?php
        //hàm lấy ngôi sao
        function star($rate){
                for($i=0;$i<5;$i++){
                        if(($rate-$i)>0.5){
                             include("./assets/icon/star-fill.svg");                                   
                        }
                        if(($rate-$i)<=0.5 && ($rate-$i) > 0){
                                include("./assets/icon/star-half.svg");                                   
                        }
                        if(($rate-$i)<=0){
                                include("./assets/icon/star.svg");                                   
                        }    
                }
        }
?>

<div class="show_product">
        <div class="title">
             <h1>“The difference between style and fashion is quality”</h1>
             <p>Detail Product</p>
        </div>
        <div class="content" >
               <div id="left">   
                      <?php
                        foreach($data as $r)
                        {
                                ?>
                                 <img src="../../products/<?php echo $r->pd_img?>" alt="h1"> 
                                <?php
                                 $sql_lib = "SELECT * FROM library where pd_id='$r->pd_id'";
                                 $objStatement = $objPDO->prepare($sql_lib);
                                 $objStatement->execute();
                                 $data_lib = $objStatement->fetchAll(PDO::FETCH_OBJ);
                                foreach($data_lib as $s)
                                {
                                        ?>
                                         <img src="../../products/detail_pd/<?php echo $s->img_lib?>" alt="h2"> 
                                        <?php
                                }
                        }
                      ?>
                      
               </div>
               <div id="right">
                        <div class="name-pd">
                                <?php
                                foreach($data as $r)
                                {
                                 ?>
                                         <h2><?php echo $r->pd_name?></h2>
                                 <?php
                                }
                                ?>
                        </div>
                        <div class="price-pd">
                        <?php
                                foreach($data as $r)
                                {
                                 ?>
                                         <h2>$<?php echo $r->pd_price?>.00</h2>
                                 <?php
                                }
                        ?>
                        </div>
                        <div class="desk-pd">
                               <h2>In Stock</h2>
                                <?php
                                        foreach($data as $r)
                                        {
                                                ?>
                                                   <h5><?php echo $r->pd_desc?></h5>     
                                                <?php
                                        }
                                ?>
                        </div>
                        <div class="choose-size">
                                <label for="size">Choose Size</label>
                                <div>
                                        <select id="size">
                                                <option value="slz">Select Size</option>
                                                <option value="s">Size X</option>
                                                <option value="m">Size M</option>
                                                <option value="l">Size L</option>
                                                <option value="xl">Size XL</option>  
                                        </select>
                                </div>
                        </div>
                        <div class="choose-qty">
                                <label for="qty">QUANTITY</label> 
                                <div>
                                        <select id="qty">
                                                <option value="slz">Select Qty</option>
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                        </select>        
                                </div>
                                
                        </div>
                        <div class ="add-to-cart">
                                <button class="atc">Add To Cart </button>    
                        </div>
                        <!--R A T I N G-->
                              
                        <div class = "user-rate">
                                <div class="rate-title">
                                        <h2>Ratings And Reviews </h2>        
                                </div>
                               <div class="rate-data">
                                        <?php
                                                $sql_rate = "SELECT * FROM rating where pd_id='$r->pd_id'";
                                                $objStatement = $objPDO->prepare($sql_rate);
                                                $objStatement->execute();
                                                $data1 = $objStatement->fetchAll(PDO::FETCH_OBJ);
                                        ?>  
     
                                        <div class="rate-detail">
                                               <?php    
                                                        foreach($data1 as $rt)
                                                        {
                                                                ?><h4>User@<?php echo $rt->user_id?></h4><?php   
                                                                ?><p><?php star($rt->point) ?></p><?php        
                                                              
                                                        }            
                                                ?>
                                        </div>                                          
                               </div>
                        </div>
                         <!--END R A T I N G-->

               </div>
        </div>
</div>
