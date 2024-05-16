
        function instantDeath(target)
            if target:hasEffect(target.EFF_INSTANT_DEATH_RESISTANCE) then
                local resistance = target:getEffect(target.EFF_INSTANT_DEATH_RESISTANCE)
                local randomValue = math.random(1, 100)
                if randomValue <= resistance then
                    return
                end
            end
        
            target.loaded = false
        
            if target.onDeath then
                target:onDeath()
            end

            if target.parent then
                instantDeath(target.parent)
            end
        end


        