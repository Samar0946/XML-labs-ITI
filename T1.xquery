let $items := (doc("cd_catalog.xml")/CATALOG/CD)
return 
<result>
<table>
<tr>
<th>Title</th>
<th>Artist</th>
</tr>
{
    for $item in $items
    where $item/PRICE > 10
    return 
    <tr>
        <td>{data($item/TITLE)}</td>
        <td>{data($item/ARTIST)}</td>
    </tr>
}
</table>
</result>