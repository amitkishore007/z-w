<div class="content-i">
    <div class="content-box">
        <div class="row">
           <div class="col-sm-12">
           <div class="element-wrapper">
              <div class="element-content">
                 
                 <div class="row">
                    <div class="col-sm-4">
                       <div class="element-box el-tablo box-shadow crypto-type">
                           <div class="value "><?php echo count($balance) ? $balance->balance :'0.00'; ?> Zedx</div>
                       </div>
                    </div>
                    <div class="col-sm-4">
                       <div class="element-box el-tablo box-shadow crypto-price">
                          <div class="value ">$<?php echo isset($current_price) ? $current_price->USD :'Nill'; ?> USD</div>
                       </div>
                    </div>
                    <div class="col-sm-4">
                       <h6 class="element-header">
                          BE YOUR OWN BANK.
                       </h6>
                       <div class="el-buttons-list full-width">
                          <div class="actions-right"><a class="btn btn-default send-btn" data-toggle="modal" data-target=".bd-example-modal-lg" href="#"><i class="os-icon os-icon-mail-18"></i><span>Send </span></a></div>
                          
                          <button class="btn btn-primary my-btn" data-toggle="modal" data-target=".bd-example-modal-Receive">
                          <i class="os-icon os-icon-arrow-2-down"></i>Receive</button>
                          
                       </div>
                    </div>
                 </div>
              </div>
           </div>
        </div>
        </div>




        <div class="container">
            <div class="row">
                <div class="col-md-8">

                    <?php if(isset($all_wallet_balance)): ?>
                      <?php $name = array('BTC'=>'Bitcoin','LTC'=>'Litecoin','DOGE'=>'Dogecoin','DASH'=>'Dashcoin','ETH'=>'Ethereum','BDC'=>'Blackdiamond coin'); ?>
                    <div class="row">
                    <?php foreach ($all_wallet_balance as $wallet): ?>
                       <?php //if($wallet->is_active): ?>
                        <div class="col-sm-4" id='wallet_<?php echo $wallet->wallet_type; ?>'>
                            <div class="box el-tablo box-shadow">

                                <h5 class="box"><?php echo htmlentities($name[$wallet->wallet_type]); ?></h5>
                                <p class="colum"><?php echo htmlentities($wallet->wallet_type); ?></p>
                                <div class="colum-bottom"> Amount: <?php echo htmlentities($wallet->balance); ?></div>
                            </div>
                        </div>
                      <?php //endif;  ?>
                       
                  <?php endforeach; ?>
                  
                    </div>
                  <?php endif; ?>

                  
                </div>

             
            </div>
        </div>
    </div>
</div>