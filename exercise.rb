project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  due_date: "December 14, 2019",
  id: "3284",
  steps: [
    {description: "conduct interviews", due_date: "August 1, 2018"},
    {description: "code of conduct", due_date: "January 1, 2018"},
    {description: "compile results", due_date: "January 15, 2019"},
    {description: "version 1", due_date: "January 15, 2019"},
    {description: "revisions", due_date: "March 30, 2019"},
    {description: "version 2", due_date: "July 12, 2019"},
    {description: "final edit", due_date: "October 1, 2019"},
    {description: "final version", due_date: "November 20, 2019"},
    {description: "Wrap up", due_date: "December 1, 2019"},
  ]
}


project[:steps].each do |step|
  project[:committee].each do |committee|
    step[:member] = committee
  end
end

puts project[:steps]

puts '---------------------'

committee_member = 0

project[:steps].each do |step|
  step[:member] = project[:committee][committee_member]
  committee_member += 1
  if committee_member == 3
    committee_member = 0
  end
end


puts project[:steps]

# puts '---------------------'
#
# project[:steps].each do |step|
#   step[:member] = project[:committee]
# end
#
# puts project[:steps]
