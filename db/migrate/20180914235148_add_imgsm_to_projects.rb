class AddImgsmToProjects < ActiveRecord::Migration[5.2]
  def change
    add_column(:projects, :imgsm, :string)
  end
end
