#Exercise 4
#Name:  Arnold Redoblado
#Date:  2016-03-22
#Purpose:  Display counter from 1 to 100.
#          For multiples of 3, output "Bit", multiples of 5, output "Maker",
#          multiples of 3 and 5, output "Bitmaker."

counter = (1..100)

counter.each { | counter |

  #Reset flags
    div3 = false
    div5 = false

  #Figure out if counter is divisible by 3 or 5
    div3 = true if counter % 3 == 0
    div5 = true if counter % 5 == 0

    #Display either Bit, Maker, Bitmaker or number
    if div3  && !div5
          puts "Bit"
      elsif !div3 && div5
          puts "Maker"
      elsif div3 && div5
          puts "Bitmaker"
       else
          puts counter
    end

}
