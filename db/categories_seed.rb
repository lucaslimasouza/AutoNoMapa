
module CategoriesSeed
  def self.open_file
    File.readlines(Rails.root.join("db/categories.txt"))
  end

  def self.populate
    father = nil
    self.open_file.each do |category|
      if self.subcategory? category
        Category.create(name: self.format_name(category) , father_id: father.id)
      else
        father = Category.create(name: category.chomp)
      end
    end
  end

  def self.format_name(category)
    category.tr_s('-> ',' ').strip.chomp
  end

  def self.subcategory?(category)
    category.start_with? "->"
  end

end
