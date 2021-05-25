

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> File Upload</title>
    </head>
    <body background="shikha6.jpg">
        <br><br><br><br>
    <center>
        
        <form action="uploadlect_ff" method="post" enctype="multipart/form-data">
            <table width="400px" align="center" border=2>
                <tr>
                    <td align="center" colspan="2">Form Details</td>
                </tr>
                <tr>
                    <td>Lecture ID</td>
                    <td>
                        <input type="text" required="" name="ID">
                    </td>
                </tr>
                <tr>
                    <td>Lecture Name  </td>
                    <td>
                        <input type="text" required="" name="name">
                    </td>
                </tr>
                <tr>
                    <td>Uploaded By </td>
                    <td>
                        <input type="text" required="" name="uploaded_by">
                    </td>
                </tr>
                <tr>
                    <td>Course </td>
                    <td>
                        <input type="text" required="" name="course">
                    </td>
                </tr>
                <tr>
                    <td>Select File </td>
                    <td>
                        <input type="file" required="" name="file">
                       
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Submit"></td>
                </tr>
            </table>

        </form>
        <br><a href = "VIEWLECTURE_FF.jsp">View Lecture</a>
    </center>
</body>
</html>
