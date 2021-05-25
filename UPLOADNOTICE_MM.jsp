<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> File Upload</title>
    </head>
    <body background="shikha6.jpg">
        <br><br><br><br>
    <center>
        
        <form action="uploadnotice_mm " method="post" enctype="multipart/form-data">
            <table width="400px" align="center" border=2>
                <tr>
                    <td align="center" colspan="2">Form Details</td>
                </tr>
                <tr>
                    <td>Notice ID </td>
                    <td>
                        <input type="text" required="" name="ID">
                    </td></tr>
                <tr>
                    <td>Notice Name </td>
                    <td>
                        <input type="text" required="" name="name">
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
        <br><a href = "VIEWNOTICE_MM.jsp">View Notice</a>
    </center>
</body>
</html>
