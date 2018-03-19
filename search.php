<?php 

    include "includes/functions.php";

    $CategoryErr = '';
	$KeywordsErr = '';
	$Category_ID = 0;
	$Checked  = 0;
	$BookKeywords = "";
    $Error = false;
	
	if(isset($_POST['submit'])){
	   $Checked = $_POST['search'];
        
		if ($Checked == 1 ) {
			//TODO: Validation of Category input
            $Category_ID = $_POST['BookCategory'];
            if ($Category_ID == 0){
                $CategoryErr = 'You MUST select a category!';
                $Error = true;
            }
		}
		if ($Checked == 2 ) {
			//TODO:Validation of Keywords input
            if(empty($_POST['keywords']))
			{
                $KeywordsErr = 'You MUST write a keyword!';
                $Error = true;
            } else $BookKeywords = $_POST['keywords'];
        }		 
				
    }        
?>
<script>
function updateSeachBy(){
	document.getElementById("searchBy").checked = true;
}
</script>
<?php include "includes/header.php"; ?>
    
<body>
<div  id="page" align="center">
<div id="content" style="width:800px">
	<?php include "includes/menu.php"; ?>
	
<div id="contenttext">
	<?php $logoTitle = "Search Books"; 
          $logoImage = "images/search.jpg"; ?>
	<?php include 'includes/logo.php'; ?>
    <br/>
    <br/>
    <br/>
	 <strong><div class="bodytext" align="left" style="width:850px">
      

       
       <div class="col-xs-6" >
         
           <form action="#" method="post" style= "Width:850px">
              
			  <input type="radio" name="search" id = "searchALL" value="0" <?php if($Checked == 0){echo "checked"; } ?>> Search All Books<br>
			  <br/> 
			  <input type="radio" name="search" id = "searchByCategory" value="1" <?php if($Checked == 1){echo "checked"; } ?>> Search By Category:
			  
				<select name='BookCategory' style="font-weight:bold;font-size:13pt" onChange="updateSeachBy()">
				<option value = '0'>None </option>
				<?php 
				    for($i=1; $i<=4; $i++){
				       $category = Get_Category_Name($i);
					   echo "<option value=\"$i\" ";
					
                        if($Category_ID == $i){echo "selected"; }
						      echo ">$category</option>";
					    }
				?>
				</select><big><font color=#CC0000><?php echo $CategoryErr;?></font></big>
				<br/><br/> 
				<input type="radio" name="search" id = "searchByTitle" value="2" <?php if($Checked == 2){echo "checked"; } ?>> Search By Keywords:
				<input type="text" name="keywords" value ='<?php echo $BookKeywords;?>' style="font-weight:bold;" >
				<big><font color=#CC0000><?php echo $KeywordsErr;?></font></big>
			  
				<br/><br/>
				
				<input type="submit" name="submit" value="Search Books">
              
               
              </form>           
           
		  
    </div><br/><br/><br/>

    </div> 
 	 
    </strong>
		
				
	</div>
     
         <div class="col-xs-6" >
     
       <?php 
			echo "<hr size='5' width='750'>";
			if(isset($_POST['submit'])){
				$query = Get_Search_Query($Checked, $Category_ID, $BookKeywords);
				$array_books = Get_All_Books($query);
				Display($array_books); 
			} 
			echo "<hr size='5' width='750'>";
    ?>		      
    </div> 
     <?php include "includes/footer.php"; ?>
    </div>
	</div>
</body>
</html>