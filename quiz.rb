class Question 
	attr_accessor :prompt, :answer
	def initialize(prompt,answer)
	@prompt =prompt
	@answer=answer
	end
end


p1 = "What colour are apples?\n(A)red\n(B)purple\n(C)yellow"
p2 = "What colour are bananas?\n(A)pink\n(B)red\n(C)yellow"
p3 = "What colour are pears?\n(A)red\n(B)yellow\n(C)green"

questions = [
	Question.new(p1,"A"),
	Question.new(p2,"c"),
	Question.new(p3,"C")
]

def run_test(questions)
	answer = ""
	score = 0
	for question in questions
		puts question.prompt
		answer= gets.chomp()
		if answer == question.answer
			score +=1
		end
	end
	puts ("You got" + score.to_s + "/" + questions.length().to_s)
end

run_test(questions)
