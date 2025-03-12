<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Riza_project.Registration" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Student Registration</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        body {
            background: linear-gradient(135deg, #FFDAB9, #FF9F80);
            height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .card {
            width: 400px;
            padding: 30px;
            border-radius: 15px;
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
            background: white;
        }
        .form-control {
            border-radius: 10px;
            border: 1px solid #FF9F80;
        }
        .form-control:focus {
            border-color: #FF7043;
            box-shadow: 0 0 8px rgba(255, 112, 67, 0.5);
        }
        .btn-primary {
            background: linear-gradient(90deg, #FF9F80, #FF7043);
            border: none;
            border-radius: 10px;
            font-weight: bold;
            transition: 0.3s;
        }
        .btn-primary:hover {
            background: linear-gradient(90deg, #FF7043, #FF5733);
        }
        .form-label {
            font-weight: bold;
            color: #444;
        }
    </style>
</head>
<body>

    <div class="card text-center">
        <h3 class="mb-3">Student Registration</h3>
        <form runat="server">
            
            <div class="mb-2">
                <label class="form-label">Full Name</label>
                <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" required></asp:TextBox>
            </div>

            <div class="mb-2">
                <label class="form-label">Email</label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" required></asp:TextBox>
            </div>

            <div class="mb-2">
                <label class="form-label">Course</label>
                <asp:DropDownList ID="ddlCourse" runat="server" CssClass="form-control">
                    <asp:ListItem Text="Select Course" Value="" />
                    <asp:ListItem Text="BS Computer Science" Value="BSCS" />
                    <asp:ListItem Text="BS Information Technology" Value="BSIT" />
                </asp:DropDownList>
            </div>

            <div class="mb-2">
                <label class="form-label">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" required></asp:TextBox>
            </div>

            <div class="mb-3">
                <label class="form-label">Confirm Password</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" required></asp:TextBox>
            </div>

            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary w-100 mt-2" OnClick="btnRegister_Click" />

        </form>
    </div>

</body>
</html>
