<link rel="stylesheet" type="text/css" href="css/mycss.css">
<div class="app-main__outer">
        <div class="app-main__inner">
            <div class="app-page-title">
                <div class="page-title-wrapper">
                    <div class="page-title-heading">
                        <div>EXAMINEE RESULT</div>
                    </div>
                </div>
            </div>        
            
            <div class="col-md-12">
                <div class="main-card mb-3 card">
                    <div class="card-header">Examinee Result
                    </div>
                    <div class="table-responsive">
                        <table class="align-middle mb-0 table table-borderless table-striped table-hover" id="tableList">
                            <thead>
                            <tr>
                                <th>Fullname</th>
								<th>Exam Name</th>
                                <th>Attend Question</th>
								<th>Right Question</th>
                                <th>Marks</th>
                                <!-- <th width="10%"></th> -->
                            </tr>
                            </thead>
                            <tbody>
                              <?php 
                                $selExmne = $conn->query("SELECT examinee_tbl.exmne_fullname as sName, 
											result.user_id as Id, result.attend_que as attend_que ,result.right_ans as right_ans,result.exam_date as exam_date FROM 
											examinee_tbl inner JOIN result ON examinee_tbl.exmne_id=result.user_id");
                                if($selExmne->rowCount() > 0)
                                {
                                    while ($selExmneRow = $selExmne->fetch(PDO::FETCH_ASSOC)) { ?>
                                        <tr>
                                           <td><?php echo $selExmneRow['sName']; ?></td>
										   <td><?php 
                                                //$eid = $selExmneRow['exmne_id'];
                                                $selExName = $conn->query("SELECT * FROM exam_tbl")->fetch(PDO::FETCH_ASSOC);
                                              //  $exam_id = $selExName['ex_id'];
                                                echo $selExName['ex_title'];
                                              ?>
										   
										   </td>
                                           <td><?php echo $selExmneRow['attend_que']; ?></td>
										   <td><?php echo $selExmneRow['right_ans']; ?></td>
										    <td><?php echo $selExmneRow['right_ans']; ?></td>
                                          
                                            
                                           </td>
											
                                            <!-- <td>
                                               <a rel="facebox" href="facebox_modal/updateExaminee.php?id=<?php echo $selExmneRow['exmne_id']; ?>" class="btn btn-sm btn-primary">Print Result</a>

                                           </td> -->
                                        </tr>
                                    <?php }
                                }
                                else
                                { ?>
                                    <tr>
                                      <td colspan="2">
                                        <h3 class="p-3">No Course Found</h3>
                                      </td>
                                    </tr>
                                <?php }
                               ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
      
        
</div>
         
