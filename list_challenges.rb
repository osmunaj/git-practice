def threed(list)
    total_threes = 0                                                                         #Threed ===>  Complete
    list.each do |n|
        if n == 3
            total_threes += 1
        end
    end
    i = 0
    (list.size- 1).times do
        if list[i] == 3 && list[i + 1] == 3
            return false
        end 
        i += 1
    end
    if total_threes == 3
        return true
    else
        return false
    end
end

# puts threed([1,3,5,7,3,6,3,5]) #===> True
# puts threed([1,3,5,3,5]) #===> False
# puts threed([1,4,2,3,3,1,5,3]) #==> False

def same_first_last(list)                                                                   #Same First Last ===> Complete
    if list.size > 1 && list[(list.size - 1)] == list[0]
        return true
    else
        return false
    end
end

# puts same_first_last([1,3,4,5,1,7,8,7,1]) #===> True
# puts same_first_last([2]) #===> False
# puts same_first_last([4,1,3,5,8,2]) #===> False



def get_sandwich(sandwich)                                                                  #Get Sandwich ===> Complete                                
    i = 0
    bread1end = 0
    bread2start = 0         
    inside = ""    
    sandwich.size.times do
        if sandwich[i..i + 4] == "bread"
            i += 5
            bread1end = i
            (sandwich.size - i).times do
                if sandwich[i..i + 4] == "bread"
                    bread2start = i - 1
                    return sandwich[bread1end..bread2start]
                end
                i += 1
            end
        end
        i += 1
    end
    return "Not a sandwich"

end

# puts get_sandwich("breadjambread") #===> Jam
# puts get_sandwich("ghhdggrhbreadturkeybread") #===> turkey
# puts get_sandwich("qweyrioiutysegbreadhasuidigu") #===> "ham"


def shift_left(list)                                                                            #Shift left ===> Complete
    new_list = list                                                                                                                  
    i = 0
    first = list[0]
    

    list.size.times do
        new_list[i] = list[i + 1]
        i += 1
    end
    new_list[list.size - 1] = first
    return new_list
end

# print shift_left([1,5,6,8,2]) #===> 5,6,8,2,1



def can_balance(array)                                                                                  #Can balance ===> Incomplete                             Dificulty: Hard
    starting_int = 0
    passing_int = 0
    sum1 = 0
    sum2 = 0
    array.size.times do

        sum1 += array[passing_int]

        sum2 += array[array.size - passing_int - 1]

        passing_int += 1    
    end

    return false
end
# puts can_balance([1,5,6,3,4,5]) #===> True
# puts can_balance([1,3,4]) #===> True
# puts can_balance([5,6,11,3]) #===> False

def count_code(str)                                                                                    #Count Code ===> Complete           
    total = 0
    i = 0
    str.size.times do
        if str[i] == "c" && str[i+1] == "o" && str[i+3] == "e"
            total += 1
        end
        i += 1
    end
    return total
end

# puts count_code("codecodecooegoefa") #===> 3
# puts count_code("agfuksfyvasthwc") #===> 0
# puts count_code("codecode") #===> 2


def middle_way(list1, list2)                                                                        #Middle way ===> Complete
    new_list = [0,0]
    new_list[0] = list1[(list1.size / 2)]
    new_list[1] = list2[(list2.size / 2)]
    return new_list
end

# print middle_way([1,5,2,7,4,2,4],[4,1,7,13,5]) #===> [7,7]



def either_2_4(list)                                                                                #Either 2 4 ===> Complete
    i = 1
    two = false
    four = false
    list.each do
        if list[i] == 2 && list[i - 1] == 2
            two = true
        end
        if list[i] == 4 && list[i - 1] == 4
            four = true
        end
        i += 1
    end

    
    if two == true && four == false || two == false && four == true
        return true
    else
        return false
    end
end

# puts either_2_4([3,4,2,1,4]) #==> False
# puts either_2_4([2,5,6,7,5,2,2,7,5,5,2,2]) #==> True
# puts either_2_4([4,4,2,2]) #==> False

def max_span(list)                                                                                  #Max Span ===> Incomplete                                   Dificulty: hard
    max = 0
    greatestmax = 0
    list.each do |n|
        list.each do |m|
            if m == n
                if max > greatestmax
                    greatestmax = max
                end
            else
                max += 1
            end
        end
    end
    return greatestmax
end
puts max_span([1,3,2,5,4,5,1]) #==> 4
# puts max_span([4,1,3,5,1,5,5,6,4,12,9,6]) #==> 7
# puts max_span([9,4,1,3,4,1,6,2,1,7]) #==> 5


def g_happy(str)                                                                                       #G Happy ===> Complete
    str.size.times do
        if str[i] == "g" && str[i - 1] != "g" && str[i + 1] != "g" 
            return false
        end
        i += 1
    end
    return true
end

# puts g_happy("gghshggewgg") #===> true
# puts g_happy("ggheszgsiausy") #==> false
# puts g_happy("ggjiasuggsiodaggg") #===> True


def merge(list1, list2)                                                                             #Merge ===> Complete
    final_list = [0,0]
    i = 0
    list_i = 0
    list1.size.times do
        final_list[i] = list1[list_i] 
        i += 1
        list_i += 1
    end

    list_i = 0

    list2.size.times do
        final_list[i] = list2[list_i] 
        i += 1
        list_i += 1
    end
    
    return final_list.sort
end

# print merge([2,5,1],[8,1,7,2,7])
