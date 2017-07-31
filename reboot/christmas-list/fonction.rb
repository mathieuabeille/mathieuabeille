def list_item(item)
  puts "----Ta liste du père noël------"
  item.each_with_index do |x,y|
    crux = " " if x["gift_status"] == false
    crux = "X" if x["gift_status"] == true
    puts "#{y+1}. [#{crux}] #{x["gift_name"]}"
  end
  puts "-------------------------------"
end

def add_item(item)
  puts "Que veux-tu ajouter à ta liste?"
  gift = gets.chomp
  gift_status = false
  hash = {}
  hash["gift_name"] = gift
  hash["gift_status"] = gift_status
  item << hash
end


def delete_item(item)
  puts "Que veux-tu supprimer de ta liste?(par index)"
  index = gets.chomp.to_i
  item.delete_at(index - 1)
end

def mark_item(item)
  puts "Que veux-tu marquer?(par index)"
  index = gets.chomp.to_i - 1
  item[index]["gift_status"]= true
end

def error_message
  puts "erreur"
end

[{"gift_name"=>"as", "gift_status"=>false}, {"gift_name"=>"afbghfd", "gift_status"=>false}]
