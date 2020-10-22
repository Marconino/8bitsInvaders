--Menu

local gameState = ""
local fontUHD = love.graphics.newFont("Assets/PixelArt.ttf", 50)

local gameX = 0
local gameY = 0
local gameW = 0
local gameH = 0
local gameColl = false

local gameoverColl = false
local victoryColl = false


local retryX = 0
local retryY = 0
local retryW = 0
local retryH = 0
local retryColl = false

local returnMenuX = 0
local returnMenuY = 0
local returnMenuW = 0
local returnMenuH = 0
local returnMenuColl = false

local levelsX = 0
local levelsY = 0
local levelsW = 0
local levelsH = 0
local levelsColl = false

local shopX = 0
local shopY = 0
local shopW = 0
local shopH = 0
local shopColl = false

local returnShopX = 0
local returnShopY = 0
local returnShopW = 0
local returnShopH = 0
local returnShopColl = 0

local gameMoney = 0
local shopMoney = 0
local moneyX = 0
local moneyY = 0
local moneyW = 0
local moneyH = 0

local returnButtonX = 0
local returnButtonY = 0
local returnButtonW = 0
local returnButtonH = 0
local returnButtonColl = false

local exitX = 0
local exitY = 0
local exitW = 0
local exitH = 0

--Ennemy

local ennemyX = 0
local ennemyY = 0
local ennemyW = 0
local ennemyH = 0
local ennemyColl = false

local ennemyX_2 = 0
local ennemyY_2 = 0
local ennemyW_2 = 0
local ennemyH_2 = 0
local spawnEnnemy = 0
local ennemyColl_2 = false

--Ally 

local allyX = 0
local allyY = 0
local allyW = 0
local allyH = 0
local spawnAlly = 0
local allyColl = false

--Level 1

local level_1X = 0
local level_1Y = 0
local level_1W = 0
local level_1H = 0
local level_1Coll = false

local timer = 30
local score = 0
local bestScore_l1 = 0
local hp = 100

--Level 2

local level_2X = 0
local level_2Y = 0
local level_2W = 0
local level_2H = 0
local level_2Coll = false

local bestScore_l2 = 0

--Shop

local item_1 = false
local itemEquip_1 = false
local itemX_1 = 200
local itemY_1 = 96
local itemW_1 = 200
local itemH_1 = 94
local itemPrice_1 = 1000
local itemColl_1 = false

local item_2 = false
local itemEquip_2= false
local itemX_2 = 500
local itemY_2 = 96
local itemW_2 = 200
local itemH_2 = 94
local itemPrice_2 = 1500
local itemColl_2 = false

local item_3 = false
local itemEquip_3 = false
local itemX_3 = 800
local itemY_3 = 96
local itemW_3 = 200
local itemH_3 = 94
local itemPrice_3 = 2000
local itemColl_3 = false

local item_4 = false
local itemEquip_4 = false
local itemX_4 = 200
local itemY_4 = 286
local itemW_4 = 200
local itemH_4 = 94
local itemPrice_4 = 2500
local itemColl_4 = false

--Assets

local assetMenu = love.graphics.newImage("Assets/Menu.png")
local assetEnnemy = love.graphics.newImage("Assets/Ennemy1.png")
local assetEnnemy_2 = love.graphics.newImage("Assets/Ennemy2.png")
local assetAlly = love.graphics.newImage("Assets/Ally.png")
local asset100HP = love.graphics.newImage("Assets/Hp100.png")
local asset75HP = love.graphics.newImage("Assets/Hp75.png")
local asset50HP = love.graphics.newImage("Assets/Hp50.png")
local asset25HP = love.graphics.newImage("Assets/Hp25.png")
local assetShopCollFalse = love.graphics.newImage("Assets/ShopCollFalse.png")
local assetShopItem1 = love.graphics.newImage("Assets/ShopItem1.png")
local assetShopItem2 = love.graphics.newImage("Assets/ShopItem2.png")
local assetShopItem3 = love.graphics.newImage("Assets/ShopItem3.png")
local assetShopItem4 = love.graphics.newImage("Assets/ShopItem4.png")
local assetMoney = love.graphics.newImage("Assets/Golds.png")
local assetLevels = love.graphics.newImage("Assets/Levels.png")
local assetGameover = love.graphics.newImage("Assets/GameOver.png")
local assetVictory = love.graphics.newImage("Assets/Victory.png")
local assetCursor = love.graphics.newImage("Assets/Cursor1.png")
local assetCursor_2 = love.graphics.newImage("Assets/Cursor2.png")
local assetCursor_3 = love.graphics.newImage("Assets/Cursor3.png")
local assetCursor_4 = love.graphics.newImage("Assets/Cursor4.png")


function love.load()
--Menu
  gameState = "menu"


  gameX = 230
  gameY = 121
  gameW = 743
  gameH = 130

  hp = 100
  score = 0
  timer = 30

  retryX = 676
  retryY = 369
  retryW = 329
  retryH = 218

  returnMenuX = 196
  returnMenuY = 368
  returnMenuW = 329
  returnMenuH = 218

  shopX = 230
  shopY = 287
  shopW = 743
  shopH = 130

  moneyX = 990
  moneyY = 640
  moneyW = 90
  moneyH = 90

  returnButtonX = 31
  returnButtonY = 16
  returnButtonW = 80
  returnButtonH = 80

  levelsX = 230
  levelsY = 453
  levelsW = 743
  levelsH = 130

  level_1X = 196
  level_1Y = 130
  level_1W = 330
  level_1H = 220

  level_2X = 675
  level_2Y = 130
  level_2W = 330
  level_2H = 220

  exitX = 982
  exitY = 611
  exitW = 206
  exitH = 95

  ennemyX = love.math.random(100,900)
  ennemyY = love.math.random(300,550)
  ennemyW = 90
  ennemyH = 90

  allyW = 90
  allyH = 90

  ennemyW_2 = 90
  ennemyH_2 = 90

end
function love.update(dt)

--TIMER

  if gameState == "level_1" or gameState == "level_2" then
    timer = timer - dt
    if timer == 0 or timer < 0 then 
      timer = 0
    end
  end

--BESTSCORE

  if gameState == "victory_l1" or gameState == "victory_l2" then
    timer = 30
    gameMoney = 0
    if gameState == "victory_l1" then
      if score > bestScore_l1 then 
        bestScore_l1 = score
      end
      score = 0
    end
    if gameState == "victory_l2" then 
      if score > bestScore_l2 then 
        bestScore_l2 = score
      end
      score = 0
    end
  end

  --RETRY

  if gameState == "gameover_l1" then
    timer = 30
    score = 0
    gameMoney = 0
    if retryColl == true then
      gameState = "level_1"
      score = 0
    end
  end

  if gameState == "gameover_l2" then
    timer = 30
    score = 0
    gameMoney = 0
    if retryColl == true then
      gameState = "level_2"
      score = 0
    end
  end

  if gameState == "level_1" or gameState == "level_2" then 
    retryColl = false
  end

--COOLDOWN ALLY

  if gameColl == true then
    if spawnAlly <= 2 then
      spawnAlly = spawnAlly + dt
      while spawnAlly > 2 and spawnAlly < 3 do
        for compteur = 0, 30, 1/60 do
          spawnAlly = 0
          allyX = love.math.random(100,900)
          allyY = love.math.random(300,550)
        end
      end
    end
  end

--COOLDOWN ENNEMY_2

  if gameColl == true then
    if spawnEnnemy <= 2 then
      spawnEnnemy = spawnEnnemy+ dt
      while spawnEnnemy > 2 and spawnAlly < 3 do
        for compteur = 0, 30, 1/60 do
          spawnEnnemy = 0
          ennemyX_2 = love.math.random(100,900)
          ennemyY_2 = love.math.random(300,550)
        end
      end
    end
  end

  --VICTORY

  if timer == 0 then
    if score >= 3000 then 
      if gameState == "level_1" then
        gameState = "victory_l1"
        if gameState == "victory_l1" then
          shopMoney = shopMoney + gameMoney
        end
      end
      if gameState == "level_2" then
        gameState = "victory_l2"
        if gameState == "victory_l2" then
          shopMoney = shopMoney + gameMoney
        end
      end
    end
  end

--GAMEOVER

  if hp == 0 or hp < 0 or timer == 0 and score < 3000 then 
    if gameState == "level_1" then
      gameState = "gameover_l1"
    end
    if gameState == "level_2" then
      gameState = "gameover_l2"
    end
  elseif gameState == "level_1" or gameState == "level_2" then
    gameoverColl = false
  end

--EQUIP ITEM

  if item_1 == true then
    itemPrice_1 = 0
  end

  if itemEquip_1 == true then
    love.mouse.setVisible(false)
  end

  if item_2 == true then
    itemPrice_2 = 0
  end

  if itemEquip_2 == true then
    love.mouse.setVisible(false)
  end

  if item_3 == true then
    itemPrice_3 = 0
  end

  if itemEquip_3 == true then
    love.mouse.setVisible(false)
  end

  if item_4 == true then
    itemPrice_4 = 0
  end

  if itemEquip_4 == true then
    love.mouse.setVisible(false)
  end

--RETURN MENU OR SHOP

  if returnMenuColl == true then
    gameState = "menu"
  end

  if returnShopColl == true then
    gameState = "shop"
    returnShopColl = false
  end
end

function love.draw()

--FONT UHD

  love.graphics.setFont(fontUHD)

--GRAPHICS LEVEL 1 AND LEVEL 2

  if gameState == "level_1" or gameState == "level_2" then 
    love.graphics.draw(assetEnnemy, ennemyX, ennemyY)
    love.graphics.printf(score, 1000, 70, 200, 'center')
    if allyX > 100 and allyY < 550 then
      love.graphics.draw(assetAlly, allyX, allyY)
    end
    love.graphics.draw(assetMoney, 1150, 660)
    love.graphics.printf(gameMoney, moneyX, moneyY, 150, 'right')
    love.graphics.printf("TIMER", 50, 20, 300, "left")
    love.graphics.printf(math.ceil(timer), 80, 70, 130 , 'center')
    love.graphics.printf("SCORE", 1000, 20, 200, 'center')
    love.graphics.printf("BEST SCORE", 500, 20, 200, 'center')
    if hp == 100 then 
      love.graphics.draw(asset100HP, 22, 680)
    elseif hp == 75 then
      love.graphics.draw(asset75HP, 22, 680)
    elseif hp == 50 then
      love.graphics.draw(asset50HP, 22, 680)
    elseif hp == 25 then
      love.graphics.draw(asset25HP, 22, 680)
    end
    if gameState == "level_1" then 
      love.graphics.printf(bestScore_l1, 500, 130, 200, 'center')
    end
    if gameState == "level_2" then
      love.graphics.printf(bestScore_l2, 500, 130, 200, 'center')
      if ennemyX_2 > 100 and ennemyY_2 < 550 then
        love.graphics.draw(assetEnnemy_2, ennemyX_2, ennemyY_2)
      end
    end
    if itemEquip_1 == true then
      love.graphics.draw(assetCursor, love.mouse.getPosition())
    end 
    if itemEquip_2 == true then
      love.graphics.draw(assetCursor_2, love.mouse.getPosition())
    end 
    if itemEquip_3 == true then
      love.graphics.draw(assetCursor_3, love.mouse.getPosition())
    end 
    if itemEquip_4 == true then
      love.graphics.draw(assetCursor_4, love.mouse.getPosition())
    end
  end


  --GRAPHICS GAMEOVER

  if gameState == "gameover_l1" or gameState == "gameover_l2" then
    love.graphics.draw(assetGameover, 0, 0)
    if itemEquip_1 == true then
      love.graphics.draw(assetCursor, love.mouse.getPosition())
    end 
    if itemEquip_2 == true then
      love.graphics.draw(assetCursor_2, love.mouse.getPosition())
    end 
    if itemEquip_3 == true then
      love.graphics.draw(assetCursor_3, love.mouse.getPosition())
    end 
    if itemEquip_4 == true then
      love.graphics.draw(assetCursor_4, love.mouse.getPosition())
    end
  end

  --GRAPHICS VICTORY

  if gameState == "victory_l1" or gameState == "victory_l2" then
    love.graphics.draw(assetVictory, 0, 0)
    if itemEquip_1 == true then
      love.graphics.draw(assetCursor, love.mouse.getPosition())
    end 
    if itemEquip_2 == true then
      love.graphics.draw(assetCursor_2, love.mouse.getPosition())
    end 
    if itemEquip_3 == true then
      love.graphics.draw(assetCursor_3, love.mouse.getPosition())
    end 
    if itemEquip_4 == true then
      love.graphics.draw(assetCursor_4, love.mouse.getPosition())
    end
  end

  --GRAPHICS MENU

  if gameState == "menu" or gameState == "menu and level_1" or gameState == "menu and level_2" then 
    love.graphics.draw(assetMenu, 0, 0)
    returnMenuColl = false
    if itemEquip_1 == true then
      love.graphics.draw(assetCursor, love.mouse.getPosition())
    end 
    if itemEquip_2 == true then
      love.graphics.draw(assetCursor_2, love.mouse.getPosition())
    end 
    if itemEquip_3 == true then
      love.graphics.draw(assetCursor_3, love.mouse.getPosition())
    end 
    if itemEquip_4 == true then
      love.graphics.draw(assetCursor_4, love.mouse.getPosition())
    end
  end

  --GRAPHICS LEVELS

  if gameState == "levels" then 
    love.graphics.draw(assetLevels, 0, 0)
    if itemEquip_1 == true then
      love.graphics.draw(assetCursor, love.mouse.getPosition())
    end 
    if itemEquip_2 == true then
      love.graphics.draw(assetCursor_2, love.mouse.getPosition())
    end 
    if itemEquip_3 == true then
      love.graphics.draw(assetCursor_3, love.mouse.getPosition())
    end 
    if itemEquip_4 == true then
      love.graphics.draw(assetCursor_4, love.mouse.getPosition())
    end
  end

  --GRAPHICS SHOP

  if gameState == "menu/shop and level_1" or gameState == "menu/shop and level_2" then
    love.graphics.draw(assetShopCollFalse, 0 ,0)
    love.graphics.draw(assetMoney, 1150, 40)
    love.graphics.printf(shopMoney, 940, 20, 200, 'right')
    if itemEquip_1 == true then
      love.graphics.draw(assetCursor, love.mouse.getPosition())
    end 
    if itemEquip_2 == true then
      love.graphics.draw(assetCursor_2, love.mouse.getPosition())
    end 
    if itemEquip_3 == true then
      love.graphics.draw(assetCursor_3, love.mouse.getPosition())
    end 
    if itemEquip_4 == true then
      love.graphics.draw(assetCursor_4, love.mouse.getPosition())
    end
  end

  if gameState == "shop" or gameState == "menu/shop and level_1" or gameState == "menu/shop and level_2" then 

    love.graphics.draw(assetShopCollFalse)


    if itemColl_1 == true then 
      love.graphics.draw(assetShopItem1)
      love.graphics.draw(assetMoney, 1150, 40)
      love.graphics.draw(assetMoney, 910, 600)
      love.graphics.printf(itemPrice_1, 730, 580, 200, 'center') 
      love.graphics.printf(shopMoney, 940, 20, 200, 'right')
    end
    if itemEquip_1 == true then
      love.graphics.draw(assetCursor, love.mouse.getPosition())
    end 

    if itemColl_2 == true then 
      love.graphics.draw(assetShopItem2)
      love.graphics.draw(assetMoney, 1150, 40)
      love.graphics.draw(assetMoney, 910, 600)
      love.graphics.printf(itemPrice_2, 730, 580, 200, 'center') 
      love.graphics.printf(shopMoney, 940, 20, 200, 'right')
    end
    if itemEquip_2 == true then
      love.graphics.draw(assetCursor_2, love.mouse.getPosition())
    end 

    if itemColl_3 == true then 
      love.graphics.draw(assetShopItem3)
      love.graphics.draw(assetMoney, 1150, 40)
      love.graphics.draw(assetMoney, 910, 600)
      love.graphics.printf(itemPrice_3, 730, 580, 200, 'center') 
      love.graphics.printf(shopMoney, 940, 20, 200, 'right')
    end
    if itemEquip_3 == true then
      love.graphics.draw(assetCursor_3, love.mouse.getPosition())
    end 

    if itemColl_4 == true then 
      love.graphics.draw(assetShopItem4)
      love.graphics.draw(assetMoney, 1150, 40)
      love.graphics.draw(assetMoney, 910, 600)
      love.graphics.printf(itemPrice_4, 730, 580, 200, 'center') 
      love.graphics.printf(shopMoney, 940, 20, 200, 'right')
    end

    if itemEquip_4 == true then
      love.graphics.draw(assetCursor_4, love.mouse.getPosition())
    end
  end


end

function love.mousepressed(x, y, mouseButton)

  --COLLISION MENU

    if gameState == "menu" or gameState == "menu and level_1" or gameState == "menu and level_2" then
      if gameState == "menu and level_1" or gameState == "menu and level_2" then
        if (gameX < x and x < gameX + gameW and gameY < y and y < gameY + gameH) then
          gameColl = true
          if gameColl == true and gameState == "menu and level_1" then
            gameState = "level_1"
          end
          if gameColl == true and gameState == "menu and level_2" then
            gameState = "level_2"
          end
        else
          gameColl = false
        end
      end

  --COLLISION SHOP

      if (shopX < x and x < shopX + shopW and shopY < y and y < shopY + shopH) then
        if gameState == "menu" then 
          shopColl = true
          gameState = "shop"
        end
        if gameState == "menu and level_1" then 
          shopColl = true
          gameState = "menu/shop and level_1"
        end
        if gameState == "menu and level_2" then 
          shopColl = true
          gameState = "menu/shop and level_2"
        end
      else 
        shopColl = false
      end

  --COLLISION LEVELS

      if (levelsX < x and x < levelsX + levelsW and levelsY < y and y < levelsY + levelsH) then
        levelsColl = true
        gameState = "levels"
      else 
        levelsColl = false
      end
      if (exitX < x and x < exitX + exitW and exitY < y and y < exitY + exitH) then
        love.event.quit()
      end
    end

  --COLLISION LEVEL 1/LEVEL 2

    if gameState == "levels" then
      if (level_1X < x and x < level_1X + level_1W and level_1Y < y and y < level_1Y + level_1H) then
        level_1Coll = true
        gameState = "menu and level_1"
      else 
        level_1Coll = false
      end
      if (level_2X < x and x < level_2X + level_2W and level_2Y < y and y < level_2Y + level_2H) then
        level_2Coll = true
        gameState = "menu and level_2"
      else 
        level_2Coll = false
      end
    end

  --COLLISION RETURN TO MENU (SHOP)

    if gameState == "shop" or gameState == "menu/shop and level_1" or gameState == "menu/shop and level_2" then
      if (returnButtonX < x and x < returnButtonX + returnButtonW and returnButtonY < y and y < returnButtonY + returnButtonH) then
        if gameState == "shop" then
          returnButtonColl = true
          gameState = "menu"
        end
        if gameState == "menu/shop and level_1" then
          returnButtonColl = true
          gameState = "menu and level_1"
        end
        if gameState == "menu/shop and level_2" then
          returnButtonColl = true
          gameState = "menu and level_2"
        end
      else 
        returnButtonColl = false
      end
    end

  --COLLISION ENNEMY/ALLY

    if gameState == "level_1" or gameState == "level_2" then
      if (ennemyX < x and x < ennemyX + ennemyW and ennemyY < y and y < ennemyY + ennemyH) then
        ennemyColl = true
      else
        ennemyColl = false
      end
      if (allyX < x and x < allyX + allyW and allyY < y and y < allyY + allyH) then
        allyColl = true
      else
        allyColl = false
      end

  --RESPAWN ENNEMY/ALLY

      if ennemyColl == true then
        ennemyX = love.math.random(100, 900)
        ennemyY = love.math.random(300,550)
        ennemyW = 90
        ennemyH = 90

        gameMoney = gameMoney + 10  
        score = score + 100
      end

      if allyColl == true then
        allyX = love.math.random(100,900)
        allyY = love.math.random(300,550)
        allyW = 90
        allyH = 90

        score = score - 400
        hp = hp - 25
        gameMoney = gameMoney - 20

      end
    end
  end


function love.mousemoved(x, y)
  love.mouse.getPosition(x,y)

  --COLLISON ITEM 1

  if gameState == "shop" or gameState == "menu/shop and level_1" or gameState == "menu/shop and level_2" then
    if (itemX_1 < x and x < itemX_1 + itemW_1 and itemY_1 < y and y < itemY_1 + itemH_1) then
      itemColl_1 = true
    else 
      itemColl_1 = false
    end
  end

  --COLLISON ITEM 2

  if gameState == "shop" or gameState == "menu/shop and level_1" or gameState == "menu/shop and level_2" then
    if (itemX_2 < x and x < itemX_2 + itemW_2 and itemY_2 < y and y < itemY_2 + itemH_2) then
      itemColl_2 = true
    else 
      itemColl_2 = false
    end
  end

  --COLLISON ITEM 3

  if gameState == "shop" or gameState == "menu/shop and level_1" or gameState == "menu/shop and level_2" then
    if (itemX_3 < x and x < itemX_3 + itemW_3 and itemY_3 < y and y < itemY_3 + itemH_3) then
      itemColl_3 = true
    else 
      itemColl_3 = false
    end
  end

  --COLLISON ITEM 4

  if gameState == "shop" or gameState == "menu/shop and level_1" or gameState == "menu/shop and level_2" then
    if (itemX_4 < x and x < itemX_4 + itemW_4 and itemY_4 < y and y < itemY_4 + itemH_4) then
      itemColl_4 = true
    else 
      itemColl_4 = false
    end
  end

  --COLLISION ENNEMY 2

  if gameState == "level_2" then
    if (ennemyX_2 < x and x < ennemyX_2 + ennemyW_2 and ennemyY_2 < y and y < ennemyY_2 + ennemyH_2) then
      ennemyColl_2 = true
    else
      ennemyColl_2 = false
    end

  --RESPAWN ENNEMY 2

    if ennemyColl_2 == true then
      ennemyX_2 = love.math.random(100,900)
      ennemyY_2 = love.math.random(300,550)
      ennemyW_2 = 90
      ennemyH_2 = 90

      score = score - 50
      hp = hp - 25
    end
  end


end

function love.keypressed(key) 
  
  --CHEATCODE
  
  if gameState == "levels" then
    if key == "c" then
      shopMoney = 8000
    end
  end

  --BUY/EQUIP ITEM

  if gameState == "shop" or gameState == "menu/shop and level_1" or gameState == "menu/shop and level_2" then
    if itemColl_1 == true then
      if itemPrice_1 <= shopMoney then
        if key == "a" then
          shopMoney = shopMoney - itemPrice_1
          item_1 = true
        end
        if key == "e" and item_1 == true then
          itemEquip_1 = true
          itemEquip_2 = false
          itemEquip_3 = false
          itemEquip_4 = false
        end
      end
    end
    
    if itemColl_2 == true then
      if itemPrice_2 <= shopMoney then
        if key == "a" then
          shopMoney = shopMoney - itemPrice_2
          item_2 = true
        end
        if key == "e" and item_2 == true then
          itemEquip_1 = false
          itemEquip_2 = true
          itemEquip_3 = false
          itemEquip_4 = false
        end
      end
    end
    
    if itemColl_3 == true then
      if itemPrice_3 <= shopMoney then
        if key == "a" then
          shopMoney = shopMoney - itemPrice_3
          item_3 = true
        end
        if key == "e" and item_3 == true then
          itemEquip_1 = false
          itemEquip_2 = false
          itemEquip_3 = true
          itemEquip_4 = false
        end
      end
    end
    
    if itemColl_4 == true then
      if itemPrice_4 <= shopMoney then
        if key == "a" then
          shopMoney = shopMoney - itemPrice_4
          item_4 = true
        end
        if key == "e" and item_4== true then
          itemEquip_1 = false
          itemEquip_2 = false
          itemEquip_3 = false
          itemEquip_4 = true
        end
      end
    end
  end


  --CONTROLS RETRY/RETURN MENU (gameover)
  
  if gameState == "gameover_l1" or gameState == "gameover_l2" then
    retryColl = false
    returnMenuColl = false
    if key == "r" then
      retryColl = true
      hp = 100
    end
    if key == "escape" then
      returnMenuColl = true
      gameState = "menu"
      hp = 100
    end
  end
  
  --CONTROLS SHOP/RETURN MENU (victory)

  if gameState == "victory_l1" or gameState == "victory_l2" then
    returnShopColl = false
    returnMenuColl = false
    if key == "s" then
      returnShopColl = true
      gameState = "shop"
      hp = 100
      timer = 30
    end
    if key == "escape" then
      returnMenuColl = true
      gameState = "menu"
      hp = 100
    end
  end
end