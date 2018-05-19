<?php
$number = array(48,30,61,55,102,34,40,51,33,1, -32);

function box_plot_values($array)
{
     $return = array(
    'lower_outlier'  => 0,
    'min'            => 0,
    'q1'             => 0,
    'median'         => 0,
    'q3'             => 0,
    'max'            => 0,
    'higher_outlier' => 0,
);

$array_count = count($array);
sort($array, SORT_NUMERIC);

$return['min']            = $array[0];
$return['lower_outlier']  = array();
$return['max']            = $array[$array_count - 1];
$return['higher_outlier'] = array();
$middle_index             = floor($array_count / 2);
$return['median']         = $array[$middle_index]; // Assume an odd # of items
$lower_values             = array();
$higher_values            = array();

// If we have an even number of values, we need some special rules
    if ($array_count % 2 == 0)
    {
        // Handle the even case by averaging the middle 2 items
        $return['median'] = round(($return['median'] + $array[$middle_index - 1]) / 2);

        foreach ($array as $idx => $value)
        {
            if ($idx < ($middle_index - 1)) $lower_values[]  = $value; // We need to remove both of the values we used for the median from the lower values
            elseif ($idx > $middle_index)   $higher_values[] = $value;
        }
    }
    else
    {
        foreach ($array as $idx => $value)
        {
            if ($idx < $middle_index)     $lower_values[]  = $value;
            elseif ($idx > $middle_index) $higher_values[] = $value;
        }
    }

    $lower_values_count = count($lower_values);
    $lower_middle_index = floor($lower_values_count / 2);
    $return['q1']       = $lower_values[$lower_middle_index];
    if ($lower_values_count % 2 == 0)
        $return['q1'] = round(($return['q1'] + $lower_values[$lower_middle_index - 1]) / 2);

    $higher_values_count = count($higher_values);
    $higher_middle_index = floor($higher_values_count / 2);
    $return['q3']        = $higher_values[$higher_middle_index];
    if ($higher_values_count % 2 == 0)
        $return['q3'] = round(($return['q3'] + $higher_values[$higher_middle_index - 1]) / 2);

    // Check if min and max should be capped
    $iqr = $return['q3'] - $return['q1']; // Calculate the Inner Quartile Range (iqr)
	$selisih = 1.5 * $iqr;
    if ($return['q1'] > $iqr)                  $return['min'] = $return['q1'] - $selisih;
    if ($return['max'] - $return['q3'] > $iqr) $return['max'] = $return['q3'] + $selisih;

	//check outlier

	$joutlieratas = 0;
	$joutlierbawah = 0;
	foreach ($array as &$value){
		if ($value > $return['max']) $joutlieratas =  $joutlieratas + 1;
		if ($value < $return['min']) $joutlierbawah = $joutlierbawah + 1;


	}
  echo "<table class='table table-striped'><tbody><tr><th><b>Max</b></th><td id='max'>".$return['max']."</td></tr>";
  echo "<tr> <th><b>Q3</b></th> <td id='q3'>".$return['q3']."</td> </tr>";
  echo "<tr> <th><b>Median</b></th> <td id='med'>".$return['median']."</td> </tr>";
  echo "<tr> <th><b>Q1</b></th> <td id='q1'>".$return['q1']."</td> </tr>";
  echo "<tr> <th><b>min</b></th> <td id='min'>".$return['min']."</td> </tr>";
  echo "<tr class='danger'> <th><b>Banyak outlier atas</b></th> <td id='joutlieratas'>".$joutlieratas."</td> </tr>";
  echo "<tr class='danger'> <th><b>Banyak outlier bawah</b></th> <td id='joutlierbawah'>".$joutlierbawah."</td> </tr> </tbody> </table>";
}
box_plot_values($number);
?>
