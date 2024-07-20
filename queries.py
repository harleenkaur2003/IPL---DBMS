import mysql.connector

def execute_query(cursor, query):
    cursor.execute(query)
    return cursor.fetchall()


def all_players(cursor):
    query = "SELECT * FROM Players"
    execute_query(cursor, query)
    data=execute_query(cursor, query)
    for i in data:
        print(i)

# Fetch all teams
def all_teams(cursor):
    query = "SELECT teamID FROM Teams"
    data=execute_query(cursor, query)
    for i in data:
        print(i)

# Fetch all matches
def all_matches(cursor):
    query = "SELECT * FROM Matches"
    execute_query(cursor, query)
    data=execute_query(cursor, query)
    for i in data:
        print(i)

# Fetch all umpires
def all_umpires(cursor):
    query = "SELECT * FROM Umpire"
    execute_query(cursor, query)
    data=execute_query(cursor, query)
    for i in data:
        print(i)

def total_wickets(cursor):
    query = "SELECT Players.Name, PlayerDetails.TotalWickets FROM Players INNER JOIN PlayerDetails ON Players.PlayerID = PlayerDetails.PlayerID;"
    execute_query(cursor, query)
    data=execute_query(cursor, query)
    for i in data:
        print(i)

def total_runs(cursor):
    query = "SELECT Players.Name, PlayerDetails.TotalRuns FROM Players JOIN PlayerDetails ON Players.PlayerID = PlayerDetails.PlayerID;"
    execute_query(cursor, query)
    data=execute_query(cursor, query)
    for i in data:
        print(i)

def insert_match(cursor,mno,mtype,mdate,sname,city,mom):
    query="INSERT INTO matches(MatchNo,Matchtype,MatchDate,StadiumName,City,ManOfTheMatch) values ({},'{}','{}','{}','{}','{}')".format(mno,mtype,mdate,sname,city,mom)
    execute_query(cursor,query)
    con.commit()

def delete_umpire(cursor,uname):
    query="DELETE FROM Umpire WHERE Name='{}';".format(uname)
    execute_query(cursor,query)
    con.commit()

def update_team_details(cursor,tid,amount):
    query="UPDATE TeamDetails SET SponsorAmount={} WHERE TeamID='{}';".format(amount,tid)
    execute_query(cursor,query)
    con.commit()

#_main_
con=mysql.connector.connect(host='localhost',password='Ishank@sql5',user='root',database='IPL')
cursor=con.cursor()
print("\t\t\t\t\t\t\t\t\tWelcome to the Database of Indian premier Leage 2024")
print("This database gives all the information about the IPL 2024.It gives all the details of the players,matches,teams,team owners,coaches of each team and even the stadium in which a particular match is played.")  
print("Select one of the choices that you want:")
print("1.List of all teams in IPL")
print("2.List of all players in IPL")
print("3.List of all matches in IPL")
print("4.List of all stadium in IPL")
print("5.List of all umpires in IPL")
print("6.List of total wickets in IPL")
print("7.List of total runs in IPL")
print("8.Insert a new match that happened")
print("9.Delete an umpire record")
print("10.Update Sponsor Amount of a team")

choice=int(input("Enter a choice you want:"))
if(choice==1):
    all_teams(cursor)
if(choice==2):
    all_players(cursor)
if(choice==3):
    all_matches(cursor)
if(choice==4):
    all_stadium(cursor)
if(choice==5):
    all_umpires(cursor)
if(choice==6):
    total_wickets(cursor)
if(choice==7):
    total_runs(cursor)
if(choice==8):
    mno=int(input("Enter the match number:"))
    mtype=input("Enter the match type:")
    mdate=input("Enter the match date in format YYYY-MM-DD:")
    sname=input("Enter the stadium name:")
    city=input("Enter the name of the city:")
    mom=input("Enter the name of the player who was the man of the match:")
    insert_match(cursor,mno,mtype,mdate,sname,city,mom)
    print("The Record has been inserted successfully")
if(choice==9):
    uname=input("Enter the umpire's name, for deleting their record:")
    delete_umpire(cursor,uname)
    print("Record deleted successfully")
if(choice==10):
    tid=input("Enter the Team ID whose Sponsor Amount has to be changed:")
    amount=int(input("Enter the new sponsor amount of the team:"))
    update_team_details(cursor,tid,amount)
    print("Details updated successfully")

con.close()
cv2.imwrite('rose2.jpg',result)          #Output of the image
