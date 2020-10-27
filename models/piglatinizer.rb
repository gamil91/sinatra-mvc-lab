
class PigLatinizer

    # def initialize(words)
    #     @words = words
    # end

    def piglatinize(words)
        arr = words.split
        arr1 = arr.map {|word| pig_it(word)}
        arr1.join(" ")
    end

    def pig_it(word)
    consonants = /[bBcCdDfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXyYzZ]/
    word = word
        if word.start_with?(consonants)
            first = word.chars.rotate.join 
            if first.start_with?(consonants)
                second = first.chars.rotate.join
                if second.start_with?(consonants)
                    third = second.chars.rotate.join << "ay"
                else
                    second << "ay"
                end
            else
                first << "ay"
            end
        else
            word << "way"
        end
    end




end

# def pig_it(word)
#     @arr = @words.split
#     arr1 = []
#     consonants = /[bBcCdDfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXyYzZ]/
#     @arr.each do |word| 
#         if word.start_with?(consonants)
#             first = word.chars.rotate.join 
#             if first.start_with?(consonants)
#                 second = first.chars.rotate.join
#                 if second.start_with?(consonants)
#                     third = second.chars.rotate.join << "ay"
#                     arr1 << third 
#                 else
#                     second << "ay"
#                     arr1 << second
#                 end
#             else
#                 first << "ay"
#                 arr1 << first
#             end
#         else
#             word << "way"
#             arr1 << word
#         end
#     end
#     arr1.join(" ")
#     end



