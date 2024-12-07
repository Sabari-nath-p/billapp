import 'package:bill/Screens/HomeScreen/Models/ContentModel.dart';

String htmlContent(ContentModel model) => """
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
</head>
<body style="font-family: Arial, sans-serif; line-height: 1.6; margin: 0; padding: 20px; width: 210mm; height: 297mm; color: #333; background-color: #f9f9f9;">
    
    
    <div style="text-align: center; font-weight: bold; margin-top: 20px; margin-bottom: 20px; font-size: 20px;">
        RELEASE ORDER
    </div> 

   
    <div style="text-align: right; font-size: 16px; margin-bottom: 20px;">
        <p style="margin: 0;"><strong>R.O No:</strong> ${model.roNumber} <br>
        <strong>Date:</strong> ${model.date} <br>
        <strong>Code:</strong> ${model.code}</p>
    </div>

    
    <div style="margin-top: 20px; font-size: 15px;">
        <p><strong>To</strong></p>
        <p>The Marketing Manager<br>
        Malayala Manorama<br>
        Alappuzha</p>

        <p>Sir,</p>
        <p>Kindly insert the advertisements as per details given hereunder in your esteemed publication:</p>

        <table style="width: 100%; border-collapse: collapse; margin-top: 15px; font-size: 14px;">
            <tr>
                <td colspan="2" style="border: 1px solid #ddd; padding: 10px; background-color: #f2f2f2; font-weight: bold; text-align: center;">Details</td>
            </tr>
            <tr>
                <td style="border: 1px solid #ddd; padding: 10px; width: 40%; font-weight: bold;">Client</td>
                <td style="border: 1px solid #ddd; padding: 10px; width: 60%;">${model.client}</td>
            </tr>
            <tr>
                <td style="border: 1px solid #ddd; padding: 10px; font-weight: bold;">Date of Insertion</td>
                <td style="border: 1px solid #ddd; padding: 10px;">${model.date}</td>
            </tr>
            <tr>
                <td style="border: 1px solid #ddd; padding: 10px; font-weight: bold;">Caption</td>
                <td style="border: 1px solid #ddd; padding: 10px;">${model.caption}</td>
            </tr>
            <tr>
                <td style="border: 1px solid #ddd; padding: 10px; font-weight: bold;">Space</td>
                <td style="border: 1px solid #ddd; padding: 10px;">${model.space}</td>
            </tr>
            <tr>
                <td style="border: 1px solid #ddd; padding: 10px; font-weight: bold;">Position</td>
                <td style="border: 1px solid #ddd; padding: 10px;">${model.position}</td>
            </tr>
            <tr>
                <td style="border: 1px solid #ddd; padding: 10px; font-weight: bold;">Rate</td>
                <td style="border: 1px solid #ddd; padding: 10px;">${model.rate}</td>
            </tr>
            <tr>
                <td style="border: 1px solid #ddd; padding: 10px; font-weight: bold;">Material</td>
                <td style="border: 1px solid #ddd; padding: 10px;">${model.material}</td>
            </tr>
            <tr>
                <td style="border: 1px solid #ddd; padding: 10px; font-weight: bold;">Cheque/Cash/DD</td>
                <td style="border: 1px solid #ddd; padding: 10px;">${model.payment}</td>
            </tr>
            <tr>
                <td style="border: 1px solid #ddd; padding: 10px; font-weight: bold;">Special Instruction</td>
                <td style="border: 1px solid #ddd; padding: 10px;">${model.instruction}</td>
            </tr>
        </table>

        
        <p style="font-size: 13px; font-style: italic; color: #555; margin-top: 20px; padding: 10px; background-color: #f8f8f8;">
            NOTE: Voucher Copy should be sent immediately on publication directly to our client as well as for record. 
            If for any reason you are unable to insert our client's advertisements on the scheduled dates, 
            please intimate us immediately so as to inform the client and arrange an alternative date.
        </p>
    </div>

    
    <div style="text-align: right; margin-top: 40px; font-size: 15px;">
        <p>Thank you,<br>
        <strong>Sabarinath P</strong></p>
    </div>
</body>
</html>
""";
