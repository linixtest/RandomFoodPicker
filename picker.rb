$restaurants = {
"hehe" => 2, 
"Ding Tai Fung" => 2,
"Meizhou Dongpo" => 3,
"Tasty Noodle House, Shanghai Cai" => 1,
"Seoul Tofu" => 1,
"Tatsu" => 0,
"Tsujita" => 0,
"In-n-out" => 1,
"Qin West Guishanyijia" => 1,
"Daikokuya" => 0,
"Taste of Taiwan" => 1,
"Shantouka" => 1,
"Marukame Udon" => 0,
"Tender Green" => 1,
"Palace Dim Sum" => 3,
"Mitsuwa" => 1,
"Sichuan impression" => 1,
}

def random_pick 
    sum = $restaurants.inject(0) do |count, (k, v)|
      count += v
      count
    end
    r = Random.new
    random_index = r.rand(sum)
    $restaurants.each do |k, v|
      if random_index < v 
        p "Final pick #{k}"
        break
      else
        random_index -= v
        p "Skip #{k}, random_index=#{random_index}"
      end
    end
end

random_pick
