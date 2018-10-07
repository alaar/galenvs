class RenameColumnTypeinProducttoSubcategory < ActiveRecord::Migration[5.1]
  rename_column :products, :type, :subCategory
end
