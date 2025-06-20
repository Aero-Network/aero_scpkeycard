if not guthscp then
    return
end

--  base
SWEP.Base = "guthscp_keycard_base"

--  main informations
SWEP.PrintName = "SCP - Keycard LVL 1"
SWEP.Category = "GuthSCP"
SWEP.Author = "Guthen"
SWEP.Instructions = "You have clearance level one."

SWEP.Spawnable = true

--  keycard lvl
SWEP.GuthSCPLVL = 1


SWEP.GuthSCPRenderer = {
    --  World Model is a 3D model shown either in 3rd person or when looking to an other player 
    world_model = {
        model = "models/weapons/wania/c_keycard.mdl", --  model path
        skin = 3, --  skin index
        --  SWEP:Construction Kit's renderer allow to render additional models without these models being weapon models
        swep_ck = {
            enabled = true,

            --  commenting options below will revert the values to base weapon values
            bone = "ValveBiped.Bip01_R_Hand", --  bone attachment
            pos = Vector(3, -3, -1),
            angle = Angle(0, 0, 0),
            size = Vector(0.755, 0.755, 0.755)

            --  optionals options (to uncomment)
            -- rel = "",
            -- color = Color( 255, 255, 255, 255 ), 
            -- surpresslightning = false, 
            -- material = "", 
            -- bodygroup = {}
        }
    },
    --  View Model is a 3D model specially made to be use with a weapon which is shown in 1st person 
    view_model = {
        model = "models/weapons/wania/w_keycard.mdl",
        skin = 1, --  skin index
        use_hands = true, --  if hands should be drawn
        --  SWEP:Construction Kit's renderer allow to render additional models without these models being weapon models
        swep_ck = {
            enabled = true,

            --  commenting options below will revert the values to base weapon values
            bone = "ValveBiped.Bip01_R_Finger0" --  bone attachment

            --  optionals options (to uncomment)
            -- rel = "",
            -- color = Color( 255, 255, 255, 255 ), 
            -- surpresslightning = false, 
            -- material = "", 
            -- bodygroup = {}
        }
    }
}

--  register swep
guthscp.modules.guthscpkeycard.register_keycard_swep(SWEP)
