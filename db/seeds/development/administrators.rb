Administrator.create!(
  email: 'hanako@example.com',
  password: 'foobar',
)
Administrator.create!(
  email: 'suspended@example.com',
  password: 'foobar',
  suspended: true
)
