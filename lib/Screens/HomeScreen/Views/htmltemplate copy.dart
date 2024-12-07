import 'package:bill/Screens/HomeScreen/Models/ContentModel.dart';

String htmlContent(ContentModel model) => """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Release Order</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            margin: 30px;
            color: #333;
            background-color: #f9f9f9;
        }
        .header {
            text-align: right;
            font-size: 16px;
            margin-bottom: 20px;
        }
        .header p {
            margin: 0;
        }
        .content {
            margin-top: 20px;
            font-size: 15px;
        }
        .content p {
            margin: 10px 0;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
            font-size: 14px;
        }
        table th, table td {
            border: 1px solid #ddd;
            padding: 10px;
            text-align: left;
        }
        table th {
            background-color: #f2f2f2;
            font-weight: bold;
        }
        table td {
            background-color: #fff;
        }
        .note {
            font-size: 13px;
            font-style: italic;
            color: #555;
            margin-top: 20px;
            padding: 10px;
            background-color: #f8f8f8;
           
        }
        .footer {
            text-align: right;
            margin-top: 40px;
            font-size: 15px;
        }
                .he ad {
            text-align: center;
              font-weight: bold;
            margin-top: 40px;
            margin-bottom:20px;
            font-size: 20px;
        }
        .footer p {
            margin: 0;
        }
    </style>
</head>
<body>
    <div class="head" >
        
         RELEASE ORDER
    </div> 
   
  
    
    <div class="header">
        <p><strong>R.O No:</strong> ${model.roNumber} <br>
           <strong>Date:</strong> ${model.date} <br>
           <strong>Code:</strong> ${model.code}</p>
    </div>

    <div class="content">
        <p><strong>To</strong></p>
        <p>The Marketing Manager<br>
        Malayala Manorama<br>
        Alappuzha</p>

        <p>Sir,</p>
        <p>Kindly insert the advertisements as per details given hereunder in your esteemed publication:</p>

        <table>
            <tr>
                <th>Field</th>
                <th>Details</th>
            </tr>
            <tr>
                <td><strong>Client</strong></td>
                <td>${model.client} P</td>
            </tr>
            <tr>
                <td><strong>Date of Insertion</strong></td>
                <td>${model.date}</td>
            </tr>
            <tr>
                <td><strong>Caption</strong></td>
                <td>${model.caption}</td>
            </tr>
            <tr>
                <td><strong>Space</strong></td>
                <td>${model.space}</td>
            </tr>
            <tr>
                <td><strong>Position</strong></td>
                <td>${model.position}</td>
            </tr>
            <tr>
                <td><strong>Rate</strong></td>
                <td>${model.rate}</td>
            </tr>
            <tr>
                <td><strong>Material</strong></td>
                <td>${model.material}</td>
            </tr>
            <tr>
                <td><strong>Cheque/Cash/DD</strong></td>
                <td>${model.payment}</td>
            </tr>
            <tr>
                <td><strong>Special Instruction</strong></td>
                <td>${model.instruction}</td>
            </tr>
        </table>

        <p class="note">
            NOTE: Voucher Copy should be sent immediately on publication directly to our client as well as for record. 
            If for any reason you are unable to insert our client's advertisements on the scheduled dates, 
            please intimate us immediately so as to inform the client and arrange an alternative date.
        </p>
    </div>

    <div class="footer">
        <p>Thank you,<br>
        <strong>Sabarinath P</strong></p>
    </div>
</body>
</html>
""";
