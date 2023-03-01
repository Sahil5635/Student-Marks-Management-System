<html>
  <html lang="en">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
    <title>Student Profile Page </title>

    <meta name="author" content="Codeconvey" />
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900&display=swap" rel="stylesheet"><link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css'>

    <!--Only for demo purpose - no need to add.-->
    <link rel="stylesheet" href="css/demo.css" />
    
	    <link rel="stylesheet" href="css/style.css">
</head>
<%@ page import="java.sql.*" %>
<%! 

%>
<body>
  <header class="ScriptHeader">
    <div class="rt-container">
    	<div class="col-rt-12">
        	<div class="rt-heading">
            	<h1>Student Profile Page </h1>
                <p>A responsive student profile.</p>
            </div>
        </div>
    </div>
</header>


<section>
  <div class="rt-container">
        <div class="col-rt-12">
            <div class="Scriptcontent">


              <%
              
        
              try{  
              
              Class.forName("com.mysql.jdbc.Driver");  
              Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");  
              String name=request.getParameter("sname");
              int id=Integer.parseInt(request.getParameter("sid"));
              PreparedStatement psmt=con.prepareStatement("select *,(select Marks from info1 where stu_ID=? AND cource_ID='CAI_04') as Mark4,(select Marks from info1 where stu_ID=? AND cource_ID='CAI_05') as Mark5,(Mark1+Mark2+Mark3)/3 as Percentage from student left join info on student.stu_ID = info.stu_ID where info.stu_ID=? and stu_name = ?;");  
              psmt.setInt(1,id);
              psmt.setInt(2,id);
              psmt.setInt(3,id);
              psmt.setString(4,name);

              ResultSet rs=psmt.executeQuery();  
              
              while(rs.next()) { %>
                
                 
                <div class="student-profile py-4">
                  <div class="container">
                    <div class="row">
                      <div class="col-lg-4">
                        <div class="card shadow-sm">
                          <div class="card-header bg-transparent text-center">
                            <img class="profile_img" src="images/download.png" alt="student dp">
                            <h3><%=rs.getString(2)%></h3>
                          </div>
                          <div class="card-body">
                            <p class="mb-0"><strong class="pr-1">Student ID:</strong><%=rs.getInt(6)%></p>
                            <p class="mb-0"><strong class="pr-1">Batch:</strong><%=rs.getString(3)%></p>
                            <p class="mb-0"><strong class="pr-1">Gender</strong><%=rs.getString(5)%></p>
                          </div>
                        </div>
                      </div>
                      <div class="col-lg-8">
                        <div class="card shadow-sm">
                          <div class="card-header bg-transparent border-0">
                            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>General Information</h3>
                          </div>
                          <div class="card-body pt-0">
                            <table class="table table-bordered">
                              <tr>
                                <th width="30%">Age</th>
                                <td width="2%">:</td>
                                <td><%=rs.getInt(4)%></td>
                              </tr>
                              <tr>
                                <th width="30%">Roll No.</th>
                                <td width="2%">:</td>
                                <td><%=rs.getString(7)%></td>
                              </tr>
                              <tr>
                                <th width="30%">CAI_01 Marks</th>
                                <td width="2%">:</td>
                                <td><%=rs.getInt(8)%></td>
                              </tr>
                              <tr>
                                <th width="30%">CAI_02 Marks</th>
                                <td width="2%">:</td>
                                <td><%=rs.getInt(9)%></td>
                              </tr>
                              <tr>
                                <th width="30%">CAI_03 Marks</th>
                                <td width="2%">:</td>
                                <td><%=rs.getInt(10)%></td>
                              </tr>
                              <tr>
                                <th width="30%">CAI_04 Marks</th>
                                <td width="2%">:</td>
                                <td><%=rs.getInt(11)%></td>
                              </tr>

                              <tr>
                                <th width="30%">CAI_05 Marks</th>
                                <td width="2%">:</td>
                                <td><%=rs.getInt(12)%></td>
                              </tr>
                            </table>
                          </div>
                        </div>
                        
                      
                          <div style="height: 26px"></div>
                        <div class="card shadow-sm">
                          <div class="card-header bg-transparent border-0">
                            <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Other Information</h3>
                           
                          </div>
                          <div class="card-body pt-0">
                              <p>Percentage==<%=rs.getInt(13)%></p> 
                          </div>
                        
                          <div class="ScriptTop">
                            <div class="rt-container">
                                <div class="col-rt-4" id="float-center">
                                    
                                </div>
                                <div class="col-rt-2">
                                  <ul style="margin-right: 104px;padding-right: -57px;padding-left: -33px;margin-left: -274px;">
                                    <li><a href="details1.html" title="Back to tutorial page">Back</a></li>
                                </ul>
                                    
                                </div>
                            </div>
                        </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- partial -->
                           
                        </div>
                    </div>
                    </div>
                </section>
              
              
            
               
              
              
              <%
              con.close();  
              }}
              catch(Exception e)
              { 
                e.printStackTrace();
              }  
              %>


              
            
            
                <!-- Analytics -->
            
              </body>
            </html>





































