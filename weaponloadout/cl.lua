RegisterCommand('weploadout', function(source, args)
    local player = GetPlayerPed(-1)
    if args[1] == 'leo' then
        GiveWeaponToPed(player, GetHashKey("weapon_carbinerifle"), 9999, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_combatpistol"), 9999, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_stungun"), 9999, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_flashlight"), 9999, false, false)
        GiveWeaponComponentToPed(player, GetHashKey("weapon_carbinerifle"), GetHashKey('COMPONENT_AT_AR_FLSH'))
        GiveWeaponComponentToPed(player, GetHashKey("weapon_carbinerifle"), GetHashKey('COMPONENT_AT_AR_AFGRIP'))
        GiveWeaponComponentToPed(player, GetHashKey("weapon_combatpistol"), GetHashKey('COMPONENT_AT_PI_FLSH'))
        notify("~b~Weapons: ~c~Leo Loadout Equipped")
    elseif args[1] == 'civ' then
        GiveWeaponToPed(player, GetHashKey("weapon_combatpistol"), 9999, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_knife"), 9999, false, false)
        notify("~b~Weapons: ~c~Civilian Loadout Equipped")
    elseif args[1] == 'fire' then
        GiveWeaponToPed(player, GetHashKey("weapon_battleaxe"), 9999, false, false)
        GiveWeaponToPed(player, GetHashKey("weapon_fireextinguisher"), 9999, false, false)
        notify("~b~Weapons: ~c~Fire Loadout Equipped")
    else
        notify('~b~Weapons: ~r~You did not enter a valid loadout type. ~c~(Types: leo, civ, fire')
    end
end)

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end