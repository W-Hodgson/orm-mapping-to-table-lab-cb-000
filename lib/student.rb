class Student

  attr_accessor :name, :grade

  attr_reader :id

  def initialize(name, grade, id="nil")
    @name = name
    @grade = grade
    @id = id
  end

  def self.create_table
    DB[:conn].execute("CREATE TABLE IF NOT EXISTS students(id INTEGER PRIMARY KEY, name TEXT, grade INTEGER)")
  end

  def self.drop_table
    DB[:conn].execute("DROP TABLE students")
  end

  def save
    DB[:conn].execute
  end
  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

end
