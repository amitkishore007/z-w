<div class="content-i">
  <div class="content-box">
<div class="loading">Loading&#8230;</div>
     <div class="row">
        <div class="col-sm-12">
           <div class="element-wrapper">
              <div class="element-content">
                 
                 <!-- find the coinbase price -->
                
          
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
     <!--------------------
        END - Chat Popup Box
        -------------------->
     <!--------------------
        START - Sidebar
        -------------------->
     <div class="row">
        <div class="col-sm-6">
           <div class="element-wrapper">
              <h6 class="element-header">Most Recent Activity</h6>
              <div class="element-box box-shadow">
                 <h4>Welcome to your Activity Feed</h4>
                 <p>No transactions yet? No problem. Get started by adding some zedexcoins to your wallet!</p>
                 <div class="element-box-content"><button class="mr-2 mb-2 btn btn-primary send-btn btn-rounded " type="button"> Buy ZEDX</button></div>
              </div>
           </div>
        </div>
        <div class="col-sm-6">
           <div class="element-wrapper">
              <h6 class="element-header">Did You Know?</h6>
              <div class="element-box box-shadow">
                 <h4>
                    <i class="os-icon os-icon-graph-down"></i>
                    Why does my balance keep changing?
                 </h4>
                 <p>Your zedexcoin balance will never change. However, as the exchange rate of zedexcoin fluctuates you will see changes in the local currency estimation of your wallet balance. Simply click the balance to switch between zedexcoin and your local currency.</p>

              </div>
           </div>
        </div>
     </div>
  </div>
</div>