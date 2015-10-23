class CreationPage
	include PageObject
	
	page_url "http://www.cscc.edu/"
	
	text_field(:input, :id => "input")
	button(:submit, :id => "submit")
	
	def enter_search
		self.input = "csci 2994"
		self.submit
	end
end