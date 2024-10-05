$modelname "w_r_cannonball.mdl"


$model "w_serv" "w_cannonball.dmx"

$surfaceprop "Weapon"


$cdmaterials "models\weapons\tf2_reshed\loosecannon"


$sequence "ref" "w_cannonball.dmx"

$collisionmodel "col_cannonball.dmx"
{
    $concave
	$mass 50
}

