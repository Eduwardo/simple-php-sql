<!DOCTYPE html>
<html lang="it">
   <head>
      <meta charset="utf-8">
      <meta content="width=device-width, initial-scale=1.0" name="viewport">
      <title>Elaborato</title>
      <meta name="description" content="">
      <meta name="author" content="">
      <link
         href='https://fonts.googleapis.com/css?family=Lato:400,300italic,300,100italic,100,400italic,700,700italic,900,900italic'
         rel='stylesheet' type='text/css'>
      <link href='./styles.css' rel='stylesheet' type='text/css'>
      <script src="./aeroporti.js" type="text/javascript"></script>
      <script src="./nazioni.js" type="text/javascript"></script>
      <script src="./pcontrollo.js" type="text/javascript"></script>
      <link href="style.css" rel="stylesheet">
      <script></script>
      <?php
         // ====== CONNESSIONE DATABASE
         function fConnectToDatabase()
         {
             $servername = "localhost";
             $username = "simbotin2021@localhost";
             $password = "password";
             $dbname = "my_simbotin2021";
             $connection = mysqli_connect($servername, $username, $password, $dbname)
             or die('Connection error: ' . mysql_error());
             return $connection;
         }
         
         $conn = fConnectToDatabase();
         ?>
      <style>
               body {
         background: #f5f4f4;
         font: 1rem 'Fira Sans', sans-serif;
         font-weight: 100;
         }
         .row h4 {
			color: #3e6ea2;
			line-height: 1.4;
			margin: 1em 0 0.5em;
			padding: 0;
			font-weight: 400;
		}
         .pick_label {
         font: 1rem 'Fira Sans', sans-serif;
         color: white;
         font-size: large
         }
         .pick_input {
         font-size: large;
         border-radius: 4px;
         border: 2px solid #29578a;
         }
         .tabled_custom table {
         border: 0 1px 1px 1px solid #cecece;
         width: 100%;
         border-spacing: 0;
         }
         .tabled_custom th, .tabled_custom td {
         padding: 8px;
         text-align: center;
         font-weight: 100;
         }
         .tabled_custom {
         width: 80%;
         margin: auto;
         border: 1px solid #e0dede;
         box-shadow: 0 0 3px rgb(0 0 0 / 9%);
         border-radius: 4px;
         background: #fff;
         }
         .tabled_custom select {
         border: none;
         outline: none;
         color: #4174ab;
         cursor: pointer;
         margin: 10px 0 10px 30px;
         text-transform: uppercase;
         white-space: nowrap;
         overflow: hidden !important;
         text-overflow: ellipsis;
         }
         .tabled_custom thead {
         background: #4174ab;
         border-spacing: 0;
         color: white;
         text-transform: uppercase;
         font-weight: 100 !important;
         }
         .count {
         background: #4caf50;
         color: white;
         padding: 4px;
         border-radius: 40%;
         }
         .title {
         	text-align: center;
         }
         h2.site-title {
         	    font-style: italic;
			margin: 0 0 0.5em;
			text-align: center;
			position: relative;
			padding-bottom: 0.5em;
			color: #fff;
			}
		.destination_title {
			max-width: 310px;
		}
		@media (max-width: 450px) { 
			body {
	         background: #f5f4f4;
	         font: 0.7rem 'Fira Sans', sans-serif !important;
	         font-weight: 100;
	         }
	         .destination_title {
			max-width: 260px !important;
			}
          }
          select, input {
          	background: #ffffff;
          }
      </style>
    <script>
    	// Script che mantiene salvata la posizione della scroll al reload
        document.addEventListener("DOMContentLoaded", function(event) { 
            var scrollpos = localStorage.getItem('scrollpos');
            if (scrollpos) window.scrollTo(0, scrollpos);
        });

        window.onbeforeunload = function(e) {
            localStorage.setItem('scrollpos', window.scrollY);
        };
    </script>
</script>
   </head>
   <body>
      <form id="form" name="form" action="" method="post">
         <header id="header" class="site-header">
            <div class="row">
               <div class="col-12"></div>
            </div>
            <div class="row welcome">
               <div class="col-12 nofloat">
                  <h1 class="site-title">ELABORATO</h1>
                  <h2 class="site-title">“ Viaggiare sicuri in aereo ”</h2>
                  <div id="date_picker" style="text-align: center;">
                     <label for="datepicker" class="pick_label">Ricerca per data:</label>
                     <input type="date" id="datepicker" class="pick_input" name="datepicker"
                        value="<?php echo empty($_POST['datepicker']) ? '2021-05-01' : $_POST['datepicker'] ?>"
                        min="2021-01-01" onchange="document.getElementById('form').submit()">
                  </div>
                  <script>
                     // Set max date picker
                     document.getElementById('datepicker').max = new Date(new Date().getTime() - new Date().getTimezoneOffset() * 60000).toISOString().split("T")[0];
                  </script>
               </div>
            </div>
         </header>
         <section class="section help">
            <div class="container">
               <div class="row">
                  <div class="title">
                  	<h4>NUMERO PASSEGGERI PER NAZIONALITA'</h4>
                  </div>
                  <div class="tabled_custom">
                     <!----- LISTA NAZIONI  ------>
                     <select id="country_group" name="Nazioni" onchange="document.getElementById('country_group_value').value = this.value; document.getElementById('form').submit()" style="max-width: 160px">
                        <option value="" disabled selected>Seleziona Nazione</option>
                     </select>
                     <input type="hidden" id="country_group_value" name="country_group_value"
                        value="<?php echo empty($_POST['country_group_value']) ? '' : $_POST['country_group_value'] ?>"/>
                     <script>
                        // Creazione lista nazioni ordinati per alfabeto
                        nazioni = nazioni.sort((a, b) => a.localeCompare(b));
                        for (var nazione of nazioni) {
                            var opt_a = document.createElement('option');
                            opt_a.value = nazione;
                            opt_a.innerHTML = nazione;
                            document.getElementById("country_group").appendChild(opt_a);
                        }
                        document.getElementById('country_group').value = document.getElementById('country_group_value').value;
                     </script>
                     <br>
                     <?php
                        $date_time_start = empty($_POST['datepicker']) ? '2021-05-01 00:00:00' : $_POST['datepicker'] . ' 00:00:00';
                        $date_time_end = empty($_POST['datepicker']) ? '2021-05-01 23:59:59' : $_POST['datepicker'] . ' 23:59:59';
                        $country_group_selected = empty($_POST['country_group_value']) ? '' : $_POST['country_group_value'];
                        
                        // ====== COUNTER PASSEGGERI PER NAZIONE
                        $sql = "SELECT *, COUNT(passeggeri.id_nazione) AS counterPasseggeri
                        FROM nazione
                        INNER JOIN passeggeri ON nazione.id_nazione=passeggeri.id_nazione
                        INNER JOIN controlli ON controlli.id_passeg=passeggeri.id_passeg
                        WHERE controlli.data_ora_inizio >= '" . $date_time_start . "' 
                        AND controlli.data_ora_inizio <= '" . $date_time_end . "'
                        AND nazione.nazione = '" . $country_group_selected . "'
                        GROUP BY nazione.id_nazione";
                        $result = mysqli_query($conn, $sql);
                        
                        
                        if (mysqli_num_rows($result) > 0) {
                        echo "
                        <table>
                           <thead>
                           <tr>
                             <th>Nazione</th>
                             <th>Numero passeggeri</th>
                           </tr>
                           </thead>
                           <tbody> 
                        ";
                        
                        
                        while ($row = mysqli_fetch_assoc($result)) {
                        	echo "<tr>
                        		<td>{$row["nazione"]}</td>
                        		<td><span class='count'>{$row["counterPasseggeri"]}</span></td>
                        </tr>";
                        }
                        
                        echo "
                           </tbody>
                         </table>
                        ";
                        }
                        ?>
                  </div>
               </div>
               <div class="row">
                  <div class="title">
                  	<h4>PASSEGGERI PER NAZIONALITA' E STATO VACCINAZIONE</h4>
                  </div>
                  <div class="tabled_custom">
                     <!----- LISTA NAZIONI  ------>
                     <select id="country" name="Nazioni" onchange="document.getElementById('country_value').value = this.value; document.getElementById('form').submit()" style="max-width: 160px;">
                        <option value="" disabled selected>Seleziona Nazione</option>
                     </select>
                     <input type="hidden" id="country_value" name="country_value"
                        value="<?php echo empty($_POST['country_value']) ? '' : $_POST['country_value'] ?>"/>
                     <script>
                        // Creazione lista nazioni ordinati per alfabeto
                        nazioni = nazioni.sort((a, b) => a.localeCompare(b));
                        for (var nazione of nazioni) {
                            var opt = document.createElement('option');
                            opt.value = nazione;
                            opt.innerHTML = nazione;
                            document.getElementById("country").appendChild(opt);
                        }
                        document.getElementById('country').value = document.getElementById('country_value').value;
                     </script>
                     <!----- LISTA STATO VACCINAZIONE  ------>
                     <select id="vaccine" name="Vaccino"
                        onchange="document.getElementById('vaccine_value').value = this.value; document.getElementById('form').submit()" style="max-width: 300px;">
                        <option value="" disabled selected>Seleziona stato vaccinazione</option>
                        <option value="0">Non vaccinato</option>
                        <option value="1">Vaccinato</option>
                     </select>
                     <input type="hidden" id="vaccine_value" name="vaccine_value"
                        value="<?php echo empty($_POST['vaccine_value']) && $_POST['vaccine_value'] !== '0' ? '' : $_POST['vaccine_value'] ?>"/>
                     <script>
                        document.getElementById('vaccine').value = document.getElementById('vaccine_value').value;
                     </script>
                     <br>
                     <?php
                        $country_selected = empty($_POST['country_value']) ? '' : $_POST['country_value'];
                        $vaccine_selected = empty($_POST['vaccine_value']) && $_POST['vaccine_value'] !== '0' ? '' : $_POST['vaccine_value'];
                        
                        // ====== QUERY
                        $sql = "SELECT *
                        FROM passeggeri
                        INNER JOIN nazione ON nazione.id_nazione=passeggeri.id_nazione
                        INNER JOIN controlli ON controlli.id_passeg=passeggeri.id_passeg
                        WHERE controlli.data_ora_inizio >= '" . $date_time_start . "' 
                        AND controlli.data_ora_inizio <= '" . $date_time_end . "'
                        AND nazione.nazione = '" . $country_selected . "'
                        ";
                        if (isset($vaccine_selected) && $vaccine_selected !== '') {
                        	$sql = $sql . "AND controlli.cert_vaccinazione = '" . $vaccine_selected . "'";
                        }
                        $result = mysqli_query($conn, $sql);
                        
                        if (mysqli_num_rows($result) > 0) {
                        	echo "
                        <table>
                            <thead>
                            <tr>
                              <th>Nome</th>
                              <th>Cognome</th>
                              <th>Documento</th>
                            </tr>
                            </thead>
                            <tbody> 
                        	";
                        
                        
                            while ($row = mysqli_fetch_assoc($result)) {
                            	echo "<tr>
                            		<td>{$row["nome"]}</td>
                            		<td>{$row["cognome"]}</td>
                            		<td>{$row["tipo_doc"]}</td>
                          		</tr>";
                            }
                        
                            echo "
                            </tbody>
                          </table>
                        	";
                        } 
                        ?>
                  </div>
               </div>
               <div class="row">
                  <div class="title">
                  	<h4>PASSEGGERI PER DESTINAZIONE E PUNTO DI CONTROLLO</h4>
                  </div>
                  <div class="tabled_custom">
                     <!----- LISTA AEROPORTI  ------>
                     <select id="airport" name="Aeroporto"
                        onchange="document.getElementById('airport_value').value = this.value; document.getElementById('form').submit()" class="destination_title">
                        <option value="" disabled selected>Seleziona Aeroporto di destinazione</option>
                     </select>
                     <input type="hidden" id="airport_value" name="airport_value"
                        value="<?php echo empty($_POST['airport_value']) ? '' : $_POST['airport_value'] ?>"/>
                     <script>
                        // Creazione lista aeroporti ordinati per alfabeto
                        aeroporti = aeroporti.sort((a, b) => a.localeCompare(b));
                        for (var aeroporto of aeroporti) {
                            var opt_2 = document.createElement('option');
                            opt_2.value = aeroporto;
                            opt_2.innerHTML = aeroporto;
                            document.getElementById("airport").appendChild(opt_2);
                        }
                        document.getElementById('airport').value = document.getElementById('airport_value').value;
                     </script>
                     <!----- LISTA PUNTI CONTROLLO  ------>
                     <select id="checkpoint" name="Punti Controllo"
                        onchange="document.getElementById('checkpoint_value').value = this.value; document.getElementById('form').submit()"  style="max-width: 300px;">
                        <option value="" disabled selected>Seleziona punto di controllo</option>
                     </select>
                     <input type="hidden" id="checkpoint_value" name="checkpoint_value"
                        value="<?php echo empty($_POST['checkpoint_value']) ? '' : $_POST['checkpoint_value'] ?>"/>
                     <script>
                        // Creazione lista aeroporti ordinati per alfabeto
                        checkpoints = checkpoints.sort((a, b) => a.localeCompare(b));
                        for (var checkpoint of checkpoints) {
                            var opt_3 = document.createElement('option');
                            opt_3.value = checkpoint;
                            opt_3.innerHTML = checkpoint;
                            document.getElementById("checkpoint").appendChild(opt_3);
                        }
                        document.getElementById('checkpoint').value = document.getElementById('checkpoint_value').value;
                     </script>
                     <br>
                     <?php
                        $destination_selected = empty($_POST['airport_value']) ? '' : $_POST['airport_value'];
                        $checkpoint_selected = empty($_POST['checkpoint_value']) ? '' : $_POST['checkpoint_value'];
                        
                        // ====== QUERY
                        $sql = "SELECT *
                        FROM passeggeri
                        INNER JOIN nazione ON nazione.id_nazione=passeggeri.id_nazione
                        INNER JOIN controlli ON controlli.id_passeg=passeggeri.id_passeg
                        INNER JOIN punti_controllo ON punti_controllo.id_pcontrollo=controlli.id_pcontrollo
                        INNER JOIN aeroporti ON aeroporti.id_aeroporto=controlli.id_aeroporti_destinazione
                        WHERE controlli.data_ora_inizio >= '" . $date_time_start . "'
                        AND controlli.data_ora_inizio <= '" . $date_time_end . "'
                        AND aeroporti.nome_aeroporto = '" . $destination_selected . "'
                        AND punti_controllo.pcontrollo = '" . $checkpoint_selected . "'
                        ";
                        $result = mysqli_query($conn, $sql);
                        
                        if (mysqli_num_rows($result) > 0) {
                        	echo "
                        <table>
                            <thead>
                            <tr>
                              <th>Nome</th>
                              <th>Cognome</th>
                              <th>Documento</th>
                            </tr>
                            </thead>
                            <tbody> 
                        	";
                        
                        
                            while ($row = mysqli_fetch_assoc($result)) {
                            	echo "<tr>
                            		<td>{$row["nome"]}</td>
                            		<td>{$row["cognome"]}</td>
                            		<td>{$row["tipo_doc"]}</td>
                          		</tr>";
                            }
                        
                            echo "
                            </tbody>
                          </table>
                        	";
                        } 
                        ?>
                  </div>
               </div>
            </div>
         </section>
         <section class="section">
            <div class="container">
               <div class="row">
                  <div class="col-12 nofloat">
                     <p class="goodby"></p>
                  </div>
               </div>
            </div>
         </section>
         <section class="section">
            <div class="site-footer" style="background: #4174ab">
            <div class="container">
               <div class="row">
                  <div class="col-12 nofloat" style="color: white;">
                     <span style="font-weight: 600;">Alunni</span>: Mastroddi Valentino e Simbotin Alexandro - <span style="font-weight: 600;">ELABORATO</span> @2021
                  </div>
               </div>
            </div>
            <?php mysqli_close($conn); ?>
         </section>
      </form>
   </body>
</html>