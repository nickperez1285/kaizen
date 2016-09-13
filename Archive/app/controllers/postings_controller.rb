class PostingsController < ApplicationController
  before_filter :authorize
  
  def index
    @user = User.find(current_user.id)

    @posting = @user.postings.new
    @postings = @user.postings.all 
    # ------------------------- makes first posting
    if @postings.count == 0 
     @user.postings.create 
    end 
    # -------------------
    @last_posting = @postings.last
    # @postings = Posting.all.order(created_at: :desc)

    # --------- prebuilds input form for each attribute 
    @posting.outlines.build
    @posting.layout_sections.build 
    @posting.evolves.build
    @posting.revs.build
    @posting.overviews.build
    @posting.tests.build
    @posting.educates.build
    @posting.creates.build
    @posting.hones.build
    @posting.index_sections.build
    @posting.notes.build
    @posting.contacts.build

    # -------------------------------------------------------


  if @last_posting.begin == nil 
   @last_posting.begin = '' 
  end 


  if @last_posting.outlines.count == 0 
   @last_posting.outlines.create 
  end 

  if @last_posting.layout_sections.count == 0 
    2.times{@last_posting.layout_sections.create} 
  end 

  if  @last_posting.evolves.count == 0 
   3.times{@last_posting.evolves.create} 
  end  

  if  @last_posting.revs.count == 0 
   5.times{@last_posting.revs.create} 
  end   

  if  @last_posting.overviews.count == 0 
   8.times{@last_posting.overviews.create} 
  end  

   if  @last_posting.tests.count == 0 
   13.times{@last_posting.tests.create} 
  end
   if  @last_posting.educates.count == 0 
   21.times{@last_posting.educates.create} 
  end    
  if  @last_posting.creates.count == 0 
   34.times{@last_posting.creates.create} 
  end 
    if  @last_posting.hones.count == 0 
   55.times{@last_posting.hones.create} 
  end 

 if  @last_posting.index_sections.count == 0 
   88.times{@last_posting.index_sections.create} 
  end 

 if  @last_posting.notes.count == 0 
   144.times{@last_posting.notes.create} 
  end 

  if @last_posting.contacts.count == 0 
    233.times{@last_posting.contacts.create}
  end 
# ------------------------
      @last_begin= @postings.last.begin
      @last_outline = @postings.last.outlines
      @last_layouts = @postings.last.layout_sections 
      @last_evolve= @postings.last.evolves
      @last_revs = @postings.last.revs
      @last_overviews = @postings.last.overviews
      @last_tests = @postings.last.tests
      @last_educates = @postings.last.educates
      @last_creates = @postings.last.creates
      @last_hones = @postings.last.hones
      @last_index_sections = @postings.last.index_sections
      @last_notes = @postings.last.notes
      @last_contacts = @postings.last.contacts

      @evolves_counter = 0 
      @revs_counter = 0 
      @overviews_counter =0 
      @tests_counter = 0 
      @educates_counter = 0 
      @hones_counter = 0 
      @creates_counter = 0 
      @index_counter = 0 
      @notes_counter = 0 
      @contacts_counter = 0 




  end 



    def create
     @posting = Posting.create(posting_params)

     if @posting.save 
      redirect_to(:action => 'index', :posting_id => Posting.last.id)
    else
      @postings = Posting.all
      flash('fail ')
    end
  end

  def show 
    @user = User.find(current_user.id)
    @postings = @user.postings.find(params[:id])
    @outlines = @postings.outlines
    @layouts = @postings.layout_sections
    @evolves = @postings.evolves
    @revs = @postings.revs
    @overviews = @postings.overviews
    @tests = @postings.tests
    @educates = @postings.educates
    @creates = @postings.creates
    @hones = @postings.hones
    @index_sections = @postings.index_sections
    @notes = @postings.notes
    @contacts = @postings.contacts




      @evolves_counter = 0 
      @layouts_counter = 0 
      @revs_counter = 0 
      @overviews_counter =0 
      @tests_counter = 0 
      @educates_counter = 0 
      @hones_counter = 0 
      @creates_counter = 0 
      @index_counter = 0 
      @notes_counter = 0 
      @contacts_counter = 0 
  end         




  private
  def posting_params
    params.require(:posting).permit(:begin, :user_id, :outlines_attributes =>[:tagline], :layout_sections_attributes =>[:primary, :secondary],  :evolves_attributes =>[:info] , :revs_attributes =>[:info], :overviews_attributes => [:info], :tests_attributes => [:info], :educates_attributes => [:info], :creates_attributes => [:info], :hones_attributes => [:info], :index_sections_attributes => [:info], :notes_attributes => [:info], :contacts_attributes => [:name, :email, :phone , :linkedinOrWebsite, :notes ]) 
  end

end
