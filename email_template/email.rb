prof_course = {
  "Dan Ionescu" => ["ionescu@site.uottawa.ca", "SEG4145"],
  "Dimitrios Makrakis" => ["dimitris@site.uottawa.ca", "CEG4190"],
  "Gregor v. Bochmann" => ["bochmann@eecs.uottawa.ca", "SEG2106"],
  "Timothy Lethbridge" => ["tcl@eecs.uottawa.ca", "SEG/CEG/ELG2911"],
  "Karelyn Davis" => ["kdavi6@uOttawa.ca", "MAT2377"],
  "Herna Viktor" => ["hlviktor@eecs.uottawa.ca", "CSI2101"],
  "Ahmed Kharmouch" => ["karmouch@site.uottawa.ca", "ITI1500"],
  "Mountassir M'Hammed" => ["mmountas@uOttawa.ca", "MAT2777"],
  "Joseph Khoury" => ["jkhoury@uottawa.ca", "MAT1748"],
  "Matthew McLennan" => ["mmcle020@uOttawa.ca", "PHI2794"],
  "Christian Gigault" => ["cgigault@uOttawa.ca", "PHY2723"],
  "Liam Peyton" => ["lpeyton@site.uottawa.ca", "SEG4910"],
  "Rafael Falcon" => ["rfalcon@uottawa.ca", "CSI4106"],
  "Emad Gad" => ["egad@eecs.uottawa.ca", "ELG2136"]
}

def get_email_body(name, email, course)
  text = <<-eos
To : #{email}
Subject : #{course}, some students will be absent

Dear Prof #{name},

If I am contacting you because some students of your #{course} class will be attending a conference from __January 16, 19h__ until __January 19__.

As you may know, uOttawa will be sending a large delegation of students to CUSEC this year.  CUSEC is a conference for students in fields related to computing.

__I would kindly ask if you could support student attendance to this conference by avoiding  tests, quizzes, assignments or other form of evaluation on those dates.__  This would greatly relieve students as they seek professional and personal development while attending this conference.

The delegation is funded by the Faculty of Engineering's and the Engineering Student Society's endowment funds.  The Faculty (of Engineering) Council also passed a motion this Fall supporting students attendance to such conferences.

Thanks for your time, and please let me know if you have any inquiries regarding the conference or the absence of students. If you would like to have a list of students who will miss your class, let me know and I will send you one.  However, please note that registrations are still open, so the list may change.
  eos
  return text
end

prof_course.each do |name, details|
  puts get_email_body(name, details[0], details[1])
end
