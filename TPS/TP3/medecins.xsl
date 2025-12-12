<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <meta charset="UTF-8"/>
        <title>Liste des Médecins</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            margin: 30px;
            color: #222;
          }
          h1 {
            color: #003366;
          }
          table {
            width: 80%;
            border-collapse: collapse;
            margin-top: 20px;
            background: #fff;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
          }
          th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
          }
          th {
            background-color: #e0eafc;
          }
        </style>
      </head>

      <body>
        <h1>Liste des Médecins</h1>
        <table>
          <tr>
            <th>ID</th>
            <th>Nom</th>
            <th>Prénom</th>
            <th>Genre</th>
            <th>Spécialité</th>
            <th>Service</th>
            <th>Téléphones</th>
            <th>Emails</th>
          </tr>

          <xsl:for-each select="Hopital/Medecins/Medecin">
            <tr>
              <td><xsl:value-of select="@idMedecin"/></td>
              <td><xsl:value-of select="Nom"/></td>
              <td><xsl:value-of select="Prenom"/></td>
              <td><xsl:value-of select="Genre"/></td>
              <td><xsl:value-of select="Specialite"/></td>
              <td><xsl:value-of select="Service"/></td>
              <td>
                <xsl:for-each select="Telephones/Telephone">
                  <div>
                    <xsl:value-of select="@type"/>:
                    <xsl:value-of select="."/>
                  </div>
                </xsl:for-each>
              </td>
              <td>
                <xsl:for-each select="Emails/Email">
                  <div>
                    <xsl:value-of select="@type"/>:
                    <xsl:value-of select="."/>
                  </div>
                </xsl:for-each>
              </td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
