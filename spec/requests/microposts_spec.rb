require 'rails_helper'

	describe "Micropost pages" do 

		let(:user) { FactoryGirl.create(:user) }

		before {visit user_path(user)}

		describe "Micropost creation" do 

			describe "with invalid information" do 

				it "should not create a micropost" do 
					expect { click_button "Post"}.not_to change(Micropost , :count)
				end

				describe "error messages" do 
					before {click_button "Post"}

					it "should have the error message" do 
						expect(page).to have_content('error')
					end

				end 

			end 

			describe "with valid information" do 

				before { fill_in 'micropost_content' , with: 'Lorem ipsun'}

				it "should create a micropost" do 
					expect { click_button "Post"}.to change(Micropost , :count).by(1)
				end

			end 

		end 


	  	describe "micropost destruction" do
	   		
	   		before { FactoryGirl.create(:micropost, user: user) }

	      	it "should delete a micropost" do
	        	expect { click_link "delete" }.to change(Micropost, :count).by(-1)
	      	end
	    end
	  
	end 
