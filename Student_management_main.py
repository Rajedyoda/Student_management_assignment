from datetime import date

class Student:

    def __init__(self, name, rollno,Dob):
        self.name = name
        self.rollno = rollno
        self.m1 = Dob
    
 
    def accept(self, Name, Rollno,Dob):
   
        ob = Student(Name, Rollno, Dob)
        ls.append(ob)
    
    # student details function  
    def display(self, ob):
        print("Name : ", ob.name)
        print("RollNo : ", ob.rollno)
        print("Date of Birth : ", ob.Dob)
        print("\n")
        
    # Search Function
    def search(self, rn):
        for i in range(ls.__len__()):
            if(ls[i].rollno == rn):
                return i
            
    # Delete Function
    def delete(self, rn):
        i = obj.search(rn)
        del ls[i]
 
    # Update Function
    def update(self, rn, No):
        i = obj.search(rn)
        roll = No
        ls[i].rollno = roll
    

ls = []
obj = Student('', 0, 0, 0)
 
print("\nOperations used, ")
print("\n1.Accept Student details\n2.Display Student Details\n3.Search Details of a Student\n4.Delete Details of Student\n5.Update Student Details\n6.Exit")
 
ch = int(input("Enter choice:"))
# if(ch == 1):
