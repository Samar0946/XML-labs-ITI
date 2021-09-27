let $items := (doc("cd_catalog.xml")/CATALOG/CD)
return 
<result>
<table>
<tr>
<th>TITLE</th>
<th>ARTIST</th>
<th>COUNTRY</th>
<th>COMPANY</th>
<th>PRICE</th>
<th>YEAR</th>
</tr>
{
    for $i in $items
    order by $i/PRICE
    return 
    <tr>
        <td>{data($i/TITLE)}</td>
        <td>{data($i/ARTIST)}</td>
        <td>{data($i/COUNTRY)}</td>
        <td>{data($i/COMPANY)}</td>
        <td>{data($i/PRICE)}</td>
        <td>{data($i/YEAR)}</td>
    </tr>
}
</table>
</result>