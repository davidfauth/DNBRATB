<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Dun and Bradstreet</title>
<!-- noindex -->
<META HTTP-EQUIV="Content-Type" CONTENT="text/html;CHARSET=iso-8859-1">
<META NAME="Author" Content="OMB">
<META NAME="rating" CONTENT="General">
<META NAME="ROBOTS" CONTENT="ALL">
<meta name="MSSmartTagsPreventParsing" content="TRUE"><LINK media=all href="css/style_usa.css" type=text/css rel=stylesheet>
<LINK media=all href="css/style.css" type=text/css rel=stylesheet>
<LINK media=all href="css/nice_menus_default.css" type=text/css rel=stylesheet>
<LINK media=all href="css/nice_menus.css" type=text/css rel=stylesheet>
<LINK media=all href="css/api_doc.css" type=text/css rel=stylesheet>
			<style type="text/css" title="currentStyle">
			@import "/css/demo_page.css";
			@import "/css/demo_table.css";
		</style>
 	<script src="/js/jquery-1.3.2.min.js" type=text/javascript></script>
	<script src="/js/nice_menus.js" type=text/javascript></script> 
  
<script>var $j = jQuery.noConflict();</script> 
<script src="/js/jquery.dataTables.min.js" type=text/javascript></script>
<script>
$j(document).ready(function() {
	$j('#compData').dataTable( {
		"bPaginate": false,
		"bLengthChange": false,
		"bFilter": true,
		"bSort": false,
		"bInfo": false,
		"bAutoWidth": false } );
} );
	
</script>




</head>
<body>
<div id="container">
<div>
<table id=dnb_header width="1000" cellpadding="0" cellspacing="0" border="0" class="masthead">
<tr>
	<td><img src="images/dnbLogo.gif" alt="DNBLogo" border="0"></td>
	<td align="right">
<a class="dnbnav" href="/DNB/index.jsp">Home</a>
</td>
</tr>
</table>
</div>
<A name=nav></A>
<div class="nav">
<DIV class="block block-block unstyled-block" id=block-block-26></DIV>
<jsp:include flush="true" page='includes/menu.inc' />
<table cellspacing=1 id="compData" class="display" width="600"> 
<thead><tr><th>SIC Code</th></tr>
</thead>
<tbody>
<tr><td><h3>01 to 09 AGRICULTURE, FORESTRY, FISHING</h3></td></tr>

<tr><td><h4>1 Agricultural Production-Crops</h4></td></tr>
<tr><td>0111 Wheat</td></tr>
<tr><td>0112 Rice</td></tr>
<tr><td>0115 Corn</td></tr>
<tr><td>0116 Soybeans</td></tr>
<tr><td>0119 Cash Grains, Nec</td></tr>
<tr><td>0131 Cotton</td></tr>
<tr><td>0132 Tobacco</td></tr>
<tr><td>0133 Sugarcane and Sugar Beets</td></tr>
<tr><td>0134 Irish Potatoes</td></tr>
<tr><td>0139 Field Crops, Except Cash Grain</td></tr>
<tr><td>0161 Vegetables and Melons</td></tr>
<tr><td>0171 Berry Crops</td></tr>
<tr><td>0172 Grapes</td></tr>
<tr><td>0173 Tree Nuts</td></tr>
<tr><td>0174 Citrus Fruits</td></tr>
<tr><td>0175 Deciduous Tree Fruits</td></tr>
<tr><td>0179 Fruits and Tree Nuts, Nec</td></tr>
<tr><td>0181 Ornamental Nursery Products</td></tr>
<tr><td>0182 Food Crops Grown Under Cover</td></tr>
<tr><td>0191 General Farms, Primarily Crop</td></tr>
<tr><td><h4>2 Agricultural Production-Livestock</h4></td></tr>
<tr><td>0211 Beef Cattle Feedlots</td></tr>
<tr><td>0212 Beef Cattle, Except Feedlots</td></tr>
<tr><td>0213 Hogs</td></tr>
<tr><td>0214 Sheep and Goats</td></tr>
<tr><td>0219 General Livestock, Nec</td></tr>
<tr><td>0241 Dairy Farms</td></tr>
<tr><td>0251 Broiler, Fryer, and Roaster Chickens</td></tr>
<tr><td>0252 Chicken Eggs</td></tr>
<tr><td>0253 Turkeys and Turkey Eggs</td></tr>
<tr><td>0254 Poultry Hatcheries</td></tr>
<tr><td>0259 Poultry and Eggs, Nec</td></tr>
<tr><td>0271 Fur-bearing Animals and Rabbits</td></tr>
<tr><td>0272 Horses and Other Equines</td></tr>
<tr><td>0273 Animal Aquaculture</td></tr>
<tr><td>0279 Animal Specialties, Nec</td></tr>
<tr><td>0291 General Farms, Primarily animals</td></tr>
<tr><td>07 Agricultural Services</td></tr>
<tr><td>0711 Soil Preparation Services</td></tr>
<tr><td>0721 Crop Planting and Protection</td></tr>
<tr><td>0722 Crop Harvesting</td></tr>
<tr><td>0723 Crop Preparation Services For Market</td></tr>
<tr><td>0724 Cotton Ginning</td></tr>
<tr><td>0741 Veterinary Services For Livestock</td></tr>
<tr><td>0742 Veterinary Services, Specialties</td></tr>
<tr><td>0751 Livestock Services, Except Veterinary</td></tr>
<tr><td>0752 Animal Specialty Services</td></tr>
<tr><td>0761 Farm Labor Contractors</td></tr>
<tr><td>0762 Farm Management Services</td></tr>
<tr><td>0781 Landscape Counseling and Planning</td></tr>
<tr><td>0782 Lawn and Garden Services</td></tr>
<tr><td>0783 Ornamental Shrub and Tree Services</td></tr>
<tr><td>08 Forestry </td></tr>
<tr><td>0811 Timber Tracts</td></tr>
<tr><td>0831 Forest Products</td></tr>
<tr><td>0851 Forestry Services</td></tr>
<tr><td>09 Fishing, Hunting, and Trapping</td></tr>
<tr><td>0912 Finfish</td></tr>
<tr><td>0913 Shellfish</td></tr>
<tr><td>0919 Miscellaneous Marine Products</td></tr>
<tr><td>0921 Fish Hatcheries and Preserves</td></tr>
<tr><td>0971 Hunting, Trapping, Game Propagation</td></tr>
<tr><td><h3>10 to 14 MINING</h3></td></tr>
<tr><td>10 Metal Mining</td></tr>
<tr><td>1011 Iron Ores</td></tr>
<tr><td>1021 Copper Ores</td></tr>
<tr><td>1031 Lead and Zinc Ores</td></tr>
<tr><td>1041 Gold Ores</td></tr>
<tr><td>1044 Silver Ores</td></tr>
<tr><td>1061 Ferroalloy Ores, Except Vanadium</td></tr>
<tr><td>1081 Metal Mining Services</td></tr>
<tr><td>1094 Uranium-radium-vanadium Ores</td></tr>
<tr><td>1099 Metal Ores, Nec</td></tr>
<tr><td>12 Coal Mining </td></tr>
<tr><td>1221 Bituminous Coal and Lignite-surface Mining</td></tr>
<tr><td>1222 Bituminous Coal-underground Mining</td></tr>
<tr><td>1231 Anthracite Mining</td></tr>
<tr><td>1241 Coal Mining Services</td></tr>
<tr><td>13 Oil and Gas Extraction</td></tr>
<tr><td>1311 Crude Petroleum and Natural Gas</td></tr>
<tr><td>1321 Natural Gas Liquids</td></tr>
<tr><td>1381 Drilling Oil and Gas Wells</td></tr>
<tr><td>1382 Oil and Gas Exploration Services</td></tr>
<tr><td>1389 Oil and Gas Field Services, Nec</td></tr>
<tr><td>14 Nonmetallic Mining, Except Fuels</td></tr>
<tr><td>1411 Dimension Stone</td></tr>
<tr><td>1422 Crushed and Broken Limestone</td></tr>
<tr><td>1423 Crushed and Broken Granite</td></tr>
<tr><td>1429 Crushed and Broken Stone, Nec</td></tr>
<tr><td>1442 Construction Sand and Gravel</td></tr>
<tr><td>1446 Industrial Sand</td></tr>
<tr><td>1455 Kaolin and Ball Clay</td></tr>
<tr><td>1459 Clay and Related Minerals, Nec</td></tr>
<tr><td>1474 Potash, Soda, and Borate Minerals</td></tr>
<tr><td>1475 Phosphate Rock</td></tr>
<tr><td>1479 Chemical and Fertilizer Mining, Nec</td></tr>
<tr><td>1481 Nonmetallic Mineral Services, except Fuels</td></tr>
<tr><td>1499 Miscellaneous Nonmetallic Mining, except Fuels</td></tr>
<tr><td><h3>15 to 17 CONSTRUCTION</h3></td></tr>
<tr><td>15 General Building Contractors</td></tr>
<tr><td>1521 Single-family Housing Construction</td></tr>
<tr><td>1522 Residential Construction, Nec</td></tr>
<tr><td>1531 Operative Builders</td></tr>
<tr><td>1541 Industrial Buildings and Warehouses</td></tr>
<tr><td>1542 Nonresidential Construction, Nec</td></tr>
<tr><td>16 Heavy Constructions, Except Building</td></tr>
<tr><td>1611 Highway and Street Construction</td></tr>
<tr><td>1622 Bridge, Tunnel, and Elevated Highway</td></tr>
<tr><td>1623 Water, Sewer, and Utility Lines</td></tr>
<tr><td>1629 Heavy Construction, Nec</td></tr>
<tr><td>17 Special Trade Contractors</td></tr>
<tr><td>1711 Plumbing, Heating, Air-conditioning</td></tr>
<tr><td>1721 Painting and Paper Hanging</td></tr>
<tr><td>1731 Electrical Work</td></tr>
<tr><td>1741 Masonry and Other Stonework</td></tr>
<tr><td>1742 Plastering, Drywall, and Insulation</td></tr>
<tr><td>1743 Terrazzo, Tile, Marble, Mosaic Work</td></tr>
<tr><td>1751 Carpentry Work</td></tr>
<tr><td>1752 Floor Laying and Floor Work, Nec</td></tr>
<tr><td>1761 Roofing, Siding, and Sheetmetal Work</td></tr>
<tr><td>1771 Concrete Work</td></tr>
<tr><td>1781 Water Well Drilling</td></tr>
<tr><td>1791 Structural Steel Erection</td></tr>
<tr><td>1793 Glass and Glazing Work</td></tr>
<tr><td>1794 Excavation Work</td></tr>
<tr><td>1795 Wrecking and Demolition Work</td></tr>
<tr><td>1796 Installing Building Equipment</td></tr>
<tr><td>1799 Special Trade Contractors, Nec</td></tr>
<tr><td><h3>20 to 39 MANUFACTURING</h3></td></tr>
<tr><td>20 Food and Kindred Products</td></tr>
<tr><td>2011 Meat Packing Plants</td></tr>
<tr><td>2013 Sausages and Other Prepared Meats</td></tr>
<tr><td>2015 Poultry Slaughtering and Processing</td></tr>
<tr><td>2021 Creamery Butter</td></tr>
<tr><td>2022 Cheese; Natural and Processed</td></tr>
<tr><td>2023 Dry, Condensed, Evaporated Products</td></tr>
<tr><td>2024 Ice Cream and Frozen Deserts</td></tr>
<tr><td>2026 Fluid Milk</td></tr>
<tr><td>2032 Canned Specialties</td></tr>
<tr><td>2033 Canned Fruits and Specialties</td></tr>
<tr><td>2034 Dehydrated Fruits, Vegetables, Soups</td></tr>
<tr><td>2035 Pickles, Sauces, and Salad Dressings</td></tr>
<tr><td>2037 Frozen Fruits and Vegetables</td></tr>
<tr><td>2038 Frozen Specialties, Nec</td></tr>
<tr><td>2041 Flour and Other Grain Mill Products</td></tr>
<tr><td>2043 Cereal Breakfast Foods</td></tr>
<tr><td>2044 Rice Milling</td></tr>
<tr><td>2045 Prepared Flour Mixes and Doughs</td></tr>
<tr><td>2046 Wet Corn Milling</td></tr>
<tr><td>2047 Dog and Cat Food</td></tr>
<tr><td>2048 Prepared Feeds, Nec</td></tr>
<tr><td>2051 Bread, Cake, and Related Products</td></tr>
<tr><td>2052 Cookies and Crackers</td></tr>
<tr><td>2053 Frozen Bakery Products, Except Bread</td></tr>
<tr><td>2061 Raw Cane Sugar</td></tr>
<tr><td>2062 Cane Sugar Refining</td></tr>
<tr><td>2063 Beet Sugar</td></tr>
<tr><td>2064 Candy and Other Confectionery Products</td></tr>
<tr><td>2066 Chocolate and Cocoa Products</td></tr>
<tr><td>2067 Chewing Gum</td></tr>
<tr><td>2068 Salted and Roasted Nuts and Seeds</td></tr>
<tr><td>2074 Cottonseed Oil Mills</td></tr>
<tr><td>2075 Soybean Oil Mills</td></tr>
<tr><td>2076 Vegetable Oil Mills, Nec</td></tr>
<tr><td>2077 Animal and Marine Fats and Oils</td></tr>
<tr><td>2079 Edible Fats and Oils</td></tr>
<tr><td>2082 Malt Beverages</td></tr>
<tr><td>2083 Malt</td></tr>
<tr><td>2084 Wines, Brandy, and Brandy Spirits</td></tr>
<tr><td>2085 Distilled and Blended Liquors</td></tr>
<tr><td>2086 Bottled and Canned Soft Drinks</td></tr>
<tr><td>2087 Flavoring Extracts and Syrups, Nec</td></tr>
<tr><td>2091 Canned and Cured Fish and Seafoods</td></tr>
<tr><td>2092 Fresh or Frozen Packaged Fish</td></tr>
<tr><td>2095 Roasted Coffee</td></tr>
<tr><td>2096 Potato Chips and Similar Snacks</td></tr>
<tr><td>2097 Manufactured Ice</td></tr>
<tr><td>2098 Macaroni and Spaghetti</td></tr>
<tr><td>2099 Food Preparations, Nec</td></tr>
<tr><td>21 Tobacco Products</td></tr>
<tr><td>2111 Cigarettes</td></tr>
<tr><td>2121 Cigars</td></tr>
<tr><td>2131 Chewing and Smoking Tobacco</td></tr>
<tr><td>2141 Tobacco Stemming and Redrying</td></tr>
<tr><td>22 Textile Mill Products</td></tr>
<tr><td>2211 Broadwoven Fabric Mills, Cotton</td></tr>
<tr><td>2221 Broadwoven Fabric Mills, Manmade</td></tr>
<tr><td>2231 Broadwoven Fabric Mills, Wool</td></tr>
<tr><td>2241 Narrow Fabric Mills</td></tr>
<tr><td>2251 Women's Hosiery, Except Socks</td></tr>
<tr><td>2252 Hosiery, Nec</td></tr>
<tr><td>2253 Knit Outerwear Mills</td></tr>
<tr><td>2254 Knit Underwear Mills</td></tr>
<tr><td>2257 Weft Knit Fabric Mills</td></tr>
<tr><td>2258 Lace and Warp Knit Fabric Mills</td></tr>
<tr><td>2259 Knitting Mills, Nec</td></tr>
<tr><td>2261 Finishing Plants, Cotton</td></tr>
<tr><td>2262 Finishing Plants, Manmade</td></tr>
<tr><td>2269 Finishing Plants, Nec</td></tr>
<tr><td>2273 Carpets and Rugs</td></tr>
<tr><td>2281 Yarn Spinning Mills</td></tr>
<tr><td>2282 Throwing and Winding Mills</td></tr>
<tr><td>2284 Thread Mills</td></tr>
<tr><td>2295 Coated Fabrics, Not Rubberized</td></tr>
<tr><td>2296 Tire Cord and Fabrics</td></tr>
<tr><td>2297 Nonwoven Fabrics</td></tr>
<tr><td>2298 Cordage and Twine</td></tr>
<tr><td>2299 Textile Goods, Nec</td></tr>
<tr><td>23 Apparel/Other Textile Products</td></tr>
<tr><td>2311 Men's and Boy's Suits and Coats</td></tr>
<tr><td>2321 Men's and Boy's Furnishings</td></tr>
<tr><td>2322 Men's and Boy's Underwear and Nightwear</td></tr>
<tr><td>2323 Men's and Boy's Neckwear</td></tr>
<tr><td>2325 Men's and Boy's Trousers and Slacks</td></tr>
<tr><td>2326 Men's and Boy's Work Clothing</td></tr>
<tr><td>2329 Men's and Boy's Clothing, Nec</td></tr>
<tr><td>2331 Women's and Misses' Blouses and Shirts</td></tr>
<tr><td>2335 Women's, Junior's, and Misses' Dresses</td></tr>
<tr><td>2337 Women's and Misses' Suits and Coats</td></tr>
<tr><td>2339 Women's and Misses' Outerwear, Nec</td></tr>
<tr><td>2341 Women's and Children's Underwear</td></tr>
<tr><td>2342 Bras, Girdles, and Allied Garments</td></tr>
<tr><td>2353 Hats, Caps, and Millinery</td></tr>
<tr><td>2361 Girl's and Children's Dresses, Blouses</td></tr>
<tr><td>2369 Girl's and Children's Outerwear, Nec</td></tr>
<tr><td>2371 Fur Goods</td></tr>
<tr><td>2381 Fabric Dress and Work Gloves</td></tr>
<tr><td>2384 Robes and Dressing Gowns</td></tr>
<tr><td>2385 Waterproof Outerwear</td></tr>
<tr><td>2386 Leather and Sheep-lined Clothing</td></tr>
<tr><td>2387 Apparel Belts</td></tr>
<tr><td>2389 Apparel and Accessories, Nec</td></tr>
<tr><td>2391 Curtains and Draperies</td></tr>
<tr><td>2392 Household Furnishings, Nec</td></tr>
<tr><td>2393 Textile Bags</td></tr>
<tr><td>2394 Canvas and Related Products</td></tr>
<tr><td>2395 Pleating and Stitching</td></tr>
<tr><td>2396 Automotive and Apparel Trimmings</td></tr>
<tr><td>2397 Schiffli Machine Embroideries</td></tr>
<tr><td>2399 Fabricated Textile Products, Nec</td></tr>
<tr><td>24 Lumber and Wood Products</td></tr>
<tr><td>2411 Logging</td></tr>
<tr><td>2421 Sawmills and Planing Mills, General</td></tr>
<tr><td>2426 Hardwood Dimension and Flooring Mills</td></tr>
<tr><td>2429 Special Product Sawmills, Nec</td></tr>
<tr><td>2431 Millwork</td></tr>
<tr><td>2434 Wood Kitchen Cabinets</td></tr>
<tr><td>2435 Hardwood Veneer and Plywood</td></tr>
<tr><td>2436 Softwood Veneer and Plywood</td></tr>
<tr><td>2439 Structural Wood Members, Nec</td></tr>
<tr><td>2441 Nailed Wood Boxes and Shook</td></tr>
<tr><td>2448 Wood Pallets and Skids</td></tr>
<tr><td>2449 Wood Containers, Nec</td></tr>
<tr><td>2451 Mobile Homes</td></tr>
<tr><td>2452 Prefabricated Wood Buildings</td></tr>
<tr><td>2491 Wood Preserving</td></tr>
<tr><td>2493 Reconstituted Wood Products</td></tr>
<tr><td>2499 Wood Products, Nec</td></tr>
<tr><td>25 Furniture and Fixtures</td></tr>
<tr><td>2511 Wood Household Furniture</td></tr>
<tr><td>2512 Upholstered Household Furniture</td></tr>
<tr><td>2514 Metal Household Furniture</td></tr>
<tr><td>2515 Mattresses and Bedsprings</td></tr>
<tr><td>2517 Wood Television and Radio Cabinets</td></tr>
<tr><td>2519 Household Furniture, Nec</td></tr>
<tr><td>2521 Wood Office Furniture</td></tr>
<tr><td>2522 Office Furniture, Except Wood</td></tr>
<tr><td>2531 Public Building and Related Furniture</td></tr>
<tr><td>2541 Wood Partitions and Fixtures</td></tr>
<tr><td>2542 Partitions and Fixtures, Except Wood</td></tr>
<tr><td>2591 Drapery Hardware and Blinds and Shades</td></tr>
<tr><td>2599 Furniture and Fixtures, Nec</td></tr>
<tr><td>26 Paper and Allied Products</td></tr>
<tr><td>2611 Pulp Mills</td></tr>
<tr><td>2621 Paper Mills</td></tr>
<tr><td>2631 Paperboard Mills</td></tr>
<tr><td>2652 Setup Paperboard Boxes</td></tr>
<tr><td>2653 Corrugated and Solid Fiber Boxes</td></tr>
<tr><td>2655 Fiber Cans, Drums, and Similar Products</td></tr>
<tr><td>2656 Sanitary Food Containers</td></tr>
<tr><td>2657 Folding Paperboard Boxes</td></tr>
<tr><td>2671 Paper; Coated and Laminated Packaging</td></tr>
<tr><td>2672 Paper; Coated and Laminated, Nec</td></tr>
<tr><td>2673 Bags: Plastic, Laminated, and Coated</td></tr>
<tr><td>2674 Bags: Uncoated Paper and Multiwall</td></tr>
<tr><td>2675 Die-cut Paper and Board</td></tr>
<tr><td>2676 Sanitary Paper Products</td></tr>
<tr><td>2677 Envelopes</td></tr>
<tr><td>2678 Stationery Products</td></tr>
<tr><td>2679 Converted Paper Products, Nec</td></tr>
<tr><td>27 Printing and Publishing</td></tr>
<tr><td>2711 Newspapers</td></tr>
<tr><td>2721 Periodicals</td></tr>
<tr><td>2731 Book Publishing</td></tr>
<tr><td>2732 Book Printing</td></tr>
<tr><td>2741 Miscellaneous Publishing</td></tr>
<tr><td>2752 Commercial Printing, Lithographic</td></tr>
<tr><td>2754 Commercial Printing, Gravure</td></tr>
<tr><td>2759 Commercial Printing, Nec</td></tr>
<tr><td>2761 Manifold Business Forms</td></tr>
<tr><td>2771 Greeting Cards</td></tr>
<tr><td>2782 Blankbooks and Looseleaf Binders</td></tr>
<tr><td>2789 Bookbinding and Related Work</td></tr>
<tr><td>2791 Typesetting</td></tr>
<tr><td>2796 Platemaking & Related Services</td></tr>
<tr><td>28 Chemicals and Allied Products</td></tr>
<tr><td>2812 Alkalies and Chlorine</td></tr>
<tr><td>2813 Industrial Gases</td></tr>
<tr><td>2816 Inorganic Pigments</td></tr>
<tr><td>2819 Industrial Inorganic Chemicals, Nec</td></tr>
<tr><td>2821 Plastics Materials and Resins</td></tr>
<tr><td>2822 Synthetic Rubber</td></tr>
<tr><td>2823 Cellulosic Manmade Fibers</td></tr>
<tr><td>2824 Organic Fibers, Noncellulosic</td></tr>
<tr><td>2833 Medicinals and Botanicals</td></tr>
<tr><td>2834 Pharmaceutical Preparations</td></tr>
<tr><td>2835 Diagnostic Substances</td></tr>
<tr><td>2836 Biological Products, Except Diagnostic</td></tr>
<tr><td>2841 Soap and Other Detergents</td></tr>
<tr><td>2842 Polishes and Sanitation Goods</td></tr>
<tr><td>2843 Surface Active Agents</td></tr>
<tr><td>2844 Toilet Preparations</td></tr>
<tr><td>2851 Paints and Allied Products</td></tr>
<tr><td>2861 Gum and Wood Chemicals</td></tr>
<tr><td>2865 Cyclic Crudes and Intermediates</td></tr>
<tr><td>2869 Industrial Organic Chemicals, Nec</td></tr>
<tr><td>2873 Nitrogenous Fertilizers</td></tr>
<tr><td>2874 Phosphatic Fertilizers</td></tr>
<tr><td>2875 Fertilizers, Mixing Only</td></tr>
<tr><td>2879 Agricultural Chemicals, Nec</td></tr>
<tr><td>2891 Adhesives and Sealants</td></tr>
<tr><td>2892 Explosives</td></tr>
<tr><td>2893 Printing Ink</td></tr>
<tr><td>2895 Carbon Black</td></tr>
<tr><td>2899 Chemical Preparations, Nec</td></tr>
<tr><td>29 Petroleum and Coal Products</td></tr>
<tr><td>2911 Petroleum Refining</td></tr>
<tr><td>2951 Asphalt Paving Mixtures and Blocks</td></tr>
<tr><td>2952 Asphalt Felts and Coatings</td></tr>
<tr><td>2992 Lubricating Oils and Greases</td></tr>
<tr><td>2999 Petroleum and Coal Products, Nec</td></tr>
<tr><td>30 Rubber and Miscellaneous Plastics</td></tr>
<tr><td>3011 Tires and Inner Tubes</td></tr>
<tr><td>3021 Rubber and Plastics Footwear</td></tr>
<tr><td>3052 Rubber and Plastics Hose and Beltings</td></tr>
<tr><td>3053 Gaskets; Packing and Sealing Devices</td></tr>
<tr><td>3061 Mechanical Rubber Goods</td></tr>
<tr><td>3069 Fabricated Rubber Products, Nec</td></tr>
<tr><td>3081 Unsupported Plastics Film and Sheet</td></tr>
<tr><td>3082 Unsupported Plastics Profile Shapes</td></tr>
<tr><td>3083 Laminated Plastics Plate and Sheet</td></tr>
<tr><td>3084 Plastics Pipe</td></tr>
<tr><td>3085 Plastics Bottles</td></tr>
<tr><td>3086 Plastics Foam Products</td></tr>
<tr><td>3087 Custom Compound Purchased Resins</td></tr>
<tr><td>3088 Plastics Plumbing Fixtures</td></tr>
<tr><td>3089 Plastics Products, Nec</td></tr>
<tr><td>31 Leather and Leather Products</td></tr>
<tr><td>3111 Leather Tanning and Finishing</td></tr>
<tr><td>3131 Footwear Cut Stock</td></tr>
<tr><td>3142 House Slippers</td></tr>
<tr><td>3143 Men's Footwear, Except athletic</td></tr>
<tr><td>3144 Women's Footwear, Except athletic</td></tr>
<tr><td>3149 Footwear, Except Rubber, Nec</td></tr>
<tr><td>3151 Leather Gloves and Mittens</td></tr>
<tr><td>3161 Luggage</td></tr>
<tr><td>3171 Women's Handbags and Purses</td></tr>
<tr><td>3172 Personal Leather Goods, Nec</td></tr>
<tr><td>3199 Leather Goods, Nec</td></tr>
<tr><td>32 Stone, Clay, & Glass Products</td></tr>
<tr><td>3211 Flat Glass</td></tr>
<tr><td>3221 Glass Containers</td></tr>
<tr><td>3229 Pressed and Blown Glass, Nec</td></tr>
<tr><td>3231 Products of Purchased Glass</td></tr>
<tr><td>3241 Cement, Hydraulic</td></tr>
<tr><td>3251 Brick and Structural Clay Tile</td></tr>
<tr><td>3253 Ceramic Wall and Floor Tile</td></tr>
<tr><td>3255 Clay Refractories</td></tr>
<tr><td>3259 Structural Clay Products, Nec</td></tr>
<tr><td>3261 Vitreous Plumbing Fixtures</td></tr>
<tr><td>3262 Vitreous China Table and Kitchenware</td></tr>
<tr><td>3263 Semivitreous Table and Kitchenware</td></tr>
<tr><td>3264 Porcelain Electrical Supplies</td></tr>
<tr><td>3269 Pottery Products, Nec</td></tr>
<tr><td>3271 Concrete Block and Brick</td></tr>
<tr><td>3272 Concrete Products, Nec</td></tr>
<tr><td>3273 Ready-mixed Concrete</td></tr>
<tr><td>3274 Lime</td></tr>
<tr><td>3275 Gypsum Products</td></tr>
<tr><td>3281 Cut Stone and Stone Products</td></tr>
<tr><td>3291 Abrasive Products</td></tr>
<tr><td>3292 Asbestos Products</td></tr>
<tr><td>3295 Minerals, Ground or Treated</td></tr>
<tr><td>3296 Mineral Wool</td></tr>
<tr><td>3297 Nonclay Refractories</td></tr>
<tr><td>3299 Nonmetallic Mineral Products, Nec</td></tr>
<tr><td>33 Primary Metal Industries</td></tr>
<tr><td>3312 Blast Furnaces and Steel Mills</td></tr>
<tr><td>3313 Electrometallurgical Products</td></tr>
<tr><td>3315 Steel Wire and Related Products</td></tr>
<tr><td>3316 Cold Finishing of Steel Shapes</td></tr>
<tr><td>3317 Steel Pipe and Tubes</td></tr>
<tr><td>3321 Gray and Ductile Iron Foundries</td></tr>
<tr><td>3322 Malleable Iron Foundries</td></tr>
<tr><td>3324 Steel Investment Foundries</td></tr>
<tr><td>3325 Steel Foundries, Nec</td></tr>
<tr><td>3331 Primary Copper</td></tr>
<tr><td>3334 Primary Aluminum</td></tr>
<tr><td>3339 Primary Nonferrous Metals, Nec</td></tr>
<tr><td>3341 Secondary Nonferrous Metals</td></tr>
<tr><td>3351 Copper Rolling and Drawing</td></tr>
<tr><td>3353 Aluminum Sheet, Plate, and Foil</td></tr>
<tr><td>3354 Aluminum Extruded Products</td></tr>
<tr><td>3355 Aluminum Rolling and Drawing, Nec</td></tr>
<tr><td>3356 Nonferrous Rolling and Drawing, Nec</td></tr>
<tr><td>3357 Nonferrous Wiredrawing and Insulating</td></tr>
<tr><td>3363 Aluminum Die-castings</td></tr>
<tr><td>3364 Nonferrous Die-castings Except Aluminum</td></tr>
<tr><td>3365 Aluminum Foundries</td></tr>
<tr><td>3366 Copper Foundries</td></tr>
<tr><td>3369 Nonferrous Foundries, Nec</td></tr>
<tr><td>3398 Metal Heat Treating</td></tr>
<tr><td>3399 Primary Metal Products</td></tr>
<tr><td>34 Fabricated Metal Products</td></tr>
<tr><td>3411 Metal Cans</td></tr>
<tr><td>3412 Metal Barrels, Drums, and Pails</td></tr>
<tr><td>3421 Cutlery</td></tr>
<tr><td>3423 Hand and Edge Tools, Nec</td></tr>
<tr><td>3425 Saw Blades and Handsaws</td></tr>
<tr><td>3429 Hardware, Nec</td></tr>
<tr><td>3431 Metal Sanitary Ware</td></tr>
<tr><td>3432 Plumbing Fixture Fittings and Trim</td></tr>
<tr><td>3433 Heating Equipment, Except Electric</td></tr>
<tr><td>3441 Fabricated Structural Metal</td></tr>
<tr><td>3442 Metal Doors, Sash, and Trim</td></tr>
<tr><td>3443 Fabricated Plate Work (boiler Shop)</td></tr>
<tr><td>3444 Sheet Metalwork</td></tr>
<tr><td>3446 Architectural Metalwork</td></tr>
<tr><td>3448 Prefabricated Metal Buildings</td></tr>
<tr><td>3449 Miscellaneous Metalwork</td></tr>
<tr><td>3451 Screw Machine Products</td></tr>
<tr><td>3452 Bolts, Nuts, Rivets, and Washers</td></tr>
<tr><td>3462 Iron and Steel Forgings</td></tr>
<tr><td>3463 Nonferrous Forgings</td></tr>
<tr><td>3465 Automotive Stampings</td></tr>
<tr><td>3466 Crowns and Closures</td></tr>
<tr><td>3469 Metal Stampings, Nec</td></tr>
<tr><td>3471 Plating and Polishing</td></tr>
<tr><td>3479 Metal Coating and Allied Services</td></tr>
<tr><td>3482 Small Arms Ammunition</td></tr>
<tr><td>3483 Ammunition, Except For Small Arms, Nec</td></tr>
<tr><td>3484 Small Arms</td></tr>
<tr><td>3489 Ordnance and Accessories, Nec</td></tr>
<tr><td>3491 Industrial Valves</td></tr>
<tr><td>3492 Fluid Power Valves and Hose Fittings</td></tr>
<tr><td>3493 Steel Springs, Except Wire</td></tr>
<tr><td>3494 Valves and Pipe Fittings, Nec</td></tr>
<tr><td>3495 Wire Springs</td></tr>
<tr><td>3496 Miscellaneous Fabricated Wire Products</td></tr>
<tr><td>3497 Metal Foil and Leaf</td></tr>
<tr><td>3498 Fabricated Pipe and Fittings</td></tr>
<tr><td>3499 Fabricated Metal Products, Nec</td></tr>
<tr><td>35 Industrial Machinery & Equipment</td></tr>
<tr><td>3511 Turbines and Turbine Generator Sets</td></tr>
<tr><td>3519 Internal Combustion Engines, Nec</td></tr>
<tr><td>3523 Farm Machinery and Equipment</td></tr>
<tr><td>3524 Lawn and Garden Equipment</td></tr>
<tr><td>3531 Construction Machinery</td></tr>
<tr><td>3532 Mining Machinery</td></tr>
<tr><td>3533 Oil and Gas Field Machinery</td></tr>
<tr><td>3534 Elevators and Moving Stairways</td></tr>
<tr><td>3535 Conveyors and Conveying Equipment</td></tr>
<tr><td>3536 Hoists, Cranes, and Monorails</td></tr>
<tr><td>3537 Industrial Trucks and Tractors</td></tr>
<tr><td>3541 Machine Tools, Metal Cutting Type</td></tr>
<tr><td>3542 Machine Tools, Metal Forming Type</td></tr>
<tr><td>3543 Industrial Patterns</td></tr>
<tr><td>3544 Special Dies, Tools, Jigs, and Fixtures</td></tr>
<tr><td>3545 Machine Tool Accessories</td></tr>
<tr><td>3546 Power-driven Handtools</td></tr>
<tr><td>3547 Rolling Mill Machinery</td></tr>
<tr><td>3548 Welding Apparatus</td></tr>
<tr><td>3549 Metalworking Machinery, Nec</td></tr>
<tr><td>3552 Textile Machinery</td></tr>
<tr><td>3553 Woodworking Machinery</td></tr>
<tr><td>3554 Paper Industries Machinery</td></tr>
<tr><td>3555 Printing Trades Machinery</td></tr>
<tr><td>3556 Food Products Machinery</td></tr>
<tr><td>3559 Special Industry Machinery, Nec</td></tr>
<tr><td>3561 Pumps and Pumping Equipment</td></tr>
<tr><td>3562 Ball and Roller Bearings</td></tr>
<tr><td>3563 Air and Gas Compressors</td></tr>
<tr><td>3564 Blowers and Fans</td></tr>
<tr><td>3565 Packaging Machinery</td></tr>
<tr><td>3566 Speed Changers, Drives, and Gears</td></tr>
<tr><td>3567 Industrial Furnaces and Ovens</td></tr>
<tr><td>3568 Power Transmission Equipment, Nec</td></tr>
<tr><td>3569 General Industrial Machinery, Nec</td></tr>
<tr><td>3571 Electronic Computers</td></tr>
<tr><td>3572 Computer Storage Devices</td></tr>
<tr><td>3575 Computer Terminals</td></tr>
<tr><td>3577 Computer Peripheral Equipment, Nec</td></tr>
<tr><td>3578 Calculating and Accounting Equipment</td></tr>
<tr><td>3579 Office Machines, Nec</td></tr>
<tr><td>3581 Automatic Vending Machines</td></tr>
<tr><td>3582 Commercial Laundry Equipment</td></tr>
<tr><td>3585 Refrigeration and Heating Equipment</td></tr>
<tr><td>3586 Measuring and Dispensing Pumps</td></tr>
<tr><td>3589 Service Industry Machinery, Nec</td></tr>
<tr><td>3592 Carburetors, Pistons, Rings, Valves</td></tr>
<tr><td>3593 Fluid Power Cylinders and Actuators</td></tr>
<tr><td>3594 Fluid Power Pumps and Motors</td></tr>
<tr><td>3596 Scales and Balances, Except Laboratory</td></tr>
<tr><td>3599 Industrial Machinery, Nec</td></tr>
<tr><td>36 Electronic & Electric Equipment</td></tr>
<tr><td>3612 Transformers, Except Electric</td></tr>
<tr><td>3613 Switchgear and Switchboard Apparatus</td></tr>
<tr><td>3621 Motors and Generators</td></tr>
<tr><td>3624 Carbon and Graphite Products</td></tr>
<tr><td>3625 Relays and Industrial Controls</td></tr>
<tr><td>3629 Electrical Industrial Apparatus</td></tr>
<tr><td>3631 Household Cooking Equipment</td></tr>
<tr><td>3632 Household Refrigerators and Freezers</td></tr>
<tr><td>3633 Household Laundry Equipment</td></tr>
<tr><td>3634 Electric Housewares and Fans</td></tr>
<tr><td>3635 Household Vacuum Cleaners</td></tr>
<tr><td>3639 Household Appliances, Nec</td></tr>
<tr><td>3641 Electric Lamp Bulbs & Tubes</td></tr>
<tr><td>3643 Current-carrying Wiring Devices</td></tr>
<tr><td>3644 Noncurrent-carrying Wiring Devices</td></tr>
<tr><td>3645 Residential Lighting Fixtures</td></tr>
<tr><td>3646 Commercial Lighting Fixtures</td></tr>
<tr><td>3647 Vehicular Lighting Equipment</td></tr>
<tr><td>3648 Lighting Equipment, Nec</td></tr>
<tr><td>3651 Household Audio and Video Equipment</td></tr>
<tr><td>3652 Prerecorded Records and Tapes</td></tr>
<tr><td>3661 Telephone and Telegraph Apparatus</td></tr>
<tr><td>3663 Radio and T.V. Communications Equipment</td></tr>
<tr><td>3669 Communications Equipment, Nec</td></tr>
<tr><td>3671 Electron Tubes</td></tr>
<tr><td>3672 Printed Circuit Boards</td></tr>
<tr><td>3674 Semiconductors and Related Devices</td></tr>
<tr><td>3675 Electronic Capacitors</td></tr>
<tr><td>3676 Electronic Resistors</td></tr>
<tr><td>3677 Electronic Coils and Transformers</td></tr>
<tr><td>3678 Electronic Connectors</td></tr>
<tr><td>3679 Electronic Components, Nec</td></tr>
<tr><td>3691 Storage Batteries</td></tr>
<tr><td>3692 Primary Batteries, Dry and Wet</td></tr>
<tr><td>3694 Engine Electrical Equipment</td></tr>
<tr><td>3695 Magnetic and Optical Recording Media</td></tr>
<tr><td>3699 Electrical Equipment and Supplies, Nec</td></tr>
<tr><td>37 Transportation Equipment</td></tr>
<tr><td>3711 Motor Vehicles and Car Bodies</td></tr>
<tr><td>3713 Truck and Bus Bodies</td></tr>
<tr><td>3714 Motor Vehicle Parts and Accessories</td></tr>
<tr><td>3715 Truck Trailers</td></tr>
<tr><td>3716 Motor Homes</td></tr>
<tr><td>3721 Aircraft</td></tr>
<tr><td>3724 Aircraft Engines and Engine Parts</td></tr>
<tr><td>3728 Aircraft Parts and Equipment, Nec</td></tr>
<tr><td>3731 Shipbuilding and Repairing</td></tr>
<tr><td>3732 Boatbuilding and Repairing</td></tr>
<tr><td>3743 Railroad Equipment</td></tr>
<tr><td>3751 Motorcycles, Bicycles, and Parts</td></tr>
<tr><td>3761 Guided Missiles and Space Vehicles</td></tr>
<tr><td>3764 Space Propulsion Units and Parts</td></tr>
<tr><td>3769 Space Vehicle Equipment, Nec</td></tr>
<tr><td>3792 Travel Trailers and Campers</td></tr>
<tr><td>3795 Tanks and Tank Components</td></tr>
<tr><td>3799 Transportation Equipment, Nec</td></tr>
<tr><td>38 Instruments & Related Products</td></tr>
<tr><td>3812 Search and Navigation Equipment</td></tr>
<tr><td>3821 Laboratory Apparatus and Furniture</td></tr>
<tr><td>3822 Environmental Controls</td></tr>
<tr><td>3823 Process Control Instruments</td></tr>
<tr><td>3824 Fluid Meters and Counting Devices</td></tr>
<tr><td>3825 Instruments To Measure Electricity</td></tr>
<tr><td>3826 Analytical Instruments</td></tr>
<tr><td>3827 Optical Instruments and Lenses</td></tr>
<tr><td>3829 Measuring and Controlling Devices, Nec</td></tr>
<tr><td>3841 Surgical and Medical Instruments</td></tr>
<tr><td>3842 Surgical Appliances and Supplies</td></tr>
<tr><td>3843 Dental Equipment and Supplies</td></tr>
<tr><td>3844 X-ray Apparatus and Tubes</td></tr>
<tr><td>3845 Electromedical Equipment</td></tr>
<tr><td>3851 Ophthalmic Goods</td></tr>
<tr><td>3861 Photographic Equipment and Supplies</td></tr>
<tr><td>3873 Watches, Clocks, Watchcases, and Parts</td></tr>
<tr><td>39 Miscellaneous Manufacturing Industries</td></tr>
<tr><td>3911 Jewelry, Precious Metal</td></tr>
<tr><td>3914 Silverware and Plated Ware</td></tr>
<tr><td>3915 Jewelers' Materials and Lapidary Work</td></tr>
<tr><td>3931 Musical Instruments</td></tr>
<tr><td>3942 Dolls and Stuffed Toys</td></tr>
<tr><td>3944 Games, Toys, and Children's Vehicles</td></tr>
<tr><td>3949 Sporting and athletic Goods, Nec</td></tr>
<tr><td>3951 Pens and Mechanical Pencils</td></tr>
<tr><td>3952 Lead Pencils and Art Goods</td></tr>
<tr><td>3953 Marking Devices</td></tr>
<tr><td>3955 Carbon Paper and Inked Ribbons</td></tr>
<tr><td>3961 Costume Jewelry</td></tr>
<tr><td>3965 Fasteners, Buttons, Needles, and Pins</td></tr>
<tr><td>3991 Brooms and Brushes</td></tr>
<tr><td>3993 Signs and Advertising Specialties</td></tr>
<tr><td>3995 Burial Caskets</td></tr>
<tr><td>3996 Hard Surface Floor Coverings, Nec</td></tr>
<tr><td>3999 Manufacturing Industries, Nec</td></tr>
<tr><td><h3>40 to 49 TRANSPORTATION, COMMUNICATION AND UTILITIES</h3></td></tr>
<tr><td>40 Railroad Transportation</td></tr>
<tr><td>4011 Railroads, Line-haul Operating</td></tr>
<tr><td>4013 Switching and Terminal Services</td></tr>
<tr><td>41 Local and Interurban Transit</td></tr>
<tr><td>4111 Local and Suburban Transit</td></tr>
<tr><td>4119 Local Passenger Transportation, Nec</td></tr>
<tr><td>4121 Taxicabs</td></tr>
<tr><td>4131 Intercity and Rural Bus Transportation</td></tr>
<tr><td>4141 Local Bus Charter Service</td></tr>
<tr><td>4142 Bus Charter Service, Except Local</td></tr>
<tr><td>4151 School Buses</td></tr>
<tr><td>4173 Bus Terminal and Service Facilities</td></tr>
<tr><td>42 Trucking and Warehousing</td></tr>
<tr><td>4212 Local Trucking, Without Storage</td></tr>
<tr><td>4213 Trucking, Except Local</td></tr>
<tr><td>4214 Local Trucking With Storage</td></tr>
<tr><td>4215 Courier Services, Except By Air</td></tr>
<tr><td>4221 Farm Product Warehousing and Storage</td></tr>
<tr><td>4222 Refrigerated Warehousing and Storage</td></tr>
<tr><td>4225 General Warehousing and Storage</td></tr>
<tr><td>4226 Special Warehousing and Storage, Nec</td></tr>
<tr><td>4231 Trucking Terminal Facilities</td></tr>
<tr><td>43 U.S. Postal Service</td></tr>
<tr><td>4311 U.S. Postal Service</td></tr>
<tr><td>44 Water Transportation</td></tr>
<tr><td>4412 Deep Sea Foreign Transportation of Freight</td></tr>
<tr><td>4424 Deep Sea Domestic Transportation of Freight</td></tr>
<tr><td>4432 Freight Transportation On The Great Lakes</td></tr>
<tr><td>4449 Water Transportation of Freight</td></tr>
<tr><td>4481 Deep Sea Passenger Transportation, Except Ferry</td></tr>
<tr><td>4482 Ferries</td></tr>
<tr><td>4489 Water Passenger Transportation</td></tr>
<tr><td>4491 Marine Cargo Handling</td></tr>
<tr><td>4492 Towing and Tugboat Service</td></tr>
<tr><td>4493 Marinas</td></tr>
<tr><td>4499 Water Transportation Services, Nec</td></tr>
<tr><td>45 Transportation by Air</td></tr>
<tr><td>4512 Air Transportation, Scheduled</td></tr>
<tr><td>4513 Air Courier Services</td></tr>
<tr><td>4522 Air Transportation, Nonscheduled</td></tr>
<tr><td>4581 Airports, Flying Fields, and Services</td></tr>
<tr><td>46 Pipelines, Except Natural Gas</td></tr>
<tr><td>4612 Crude Petroleum Pipelines</td></tr>
<tr><td>4613 Refined Petroleum Pipelines</td></tr>
<tr><td>4619 Pipelines, Nec</td></tr>
<tr><td>47 Transportation Services</td></tr>
<tr><td>4724 Travel Agencies</td></tr>
<tr><td>4725 Tour Operators</td></tr>
<tr><td>4729 Passenger Transportation Arrangement</td></tr>
<tr><td>4731 Freight Transportation Arrangement</td></tr>
<tr><td>4741 Rental of Railroad Cars</td></tr>
<tr><td>4783 Packing and Crating</td></tr>
<tr><td>4785 Inspection and Fixed Facilities</td></tr>
<tr><td>4789 Transportation Services, Nec</td></tr>
<tr><td>48 Communication</td></tr>
<tr><td>4812 Radiotelephone Communication</td></tr>
<tr><td>4813 Telephone Communication, Except Radio</td></tr>
<tr><td>4822 Telegraph and Other Communications</td></tr>
<tr><td>4832 Radio Broadcasting Stations</td></tr>
<tr><td>4833 Television Broadcasting Stations</td></tr>
<tr><td>4841 Cable and Other Pay Television Services</td></tr>
<tr><td>4899 Communication Services, Nec</td></tr>
<tr><td>49 Electric, Gas, Sanitary Services</td></tr>
<tr><td>4911 Electric Services</td></tr>
<tr><td>4922 Natural Gas Transmission</td></tr>
<tr><td>4923 Gas Transmission and Distribution</td></tr>
<tr><td>4924 Natural Gas Distribution</td></tr>
<tr><td>4925 Gas Production and/or Distribution</td></tr>
<tr><td>4931 Electric and Other Services Combined</td></tr>
<tr><td>4932 Gas and Other Services Combined</td></tr>
<tr><td>4939 Combination Utilities, Nec</td></tr>
<tr><td>4941 Water Supply</td></tr>
<tr><td>4952 Sewerage Systems</td></tr>
<tr><td>4953 Refuse Systems</td></tr>
<tr><td>4959 Sanitary Services, Nec</td></tr>
<tr><td>4961 Steam and Air-conditioning Supply</td></tr>
<tr><td>4971 Irrigation Systems</td></tr>
<tr><td><h3>50 to 51 WHOLESALE TRADE</h3></td></tr>
<tr><td>50 Wholesale Trade-Durable Goods</td></tr>
<tr><td>5012 Automobiles and Other Motor Vehicles</td></tr>
<tr><td>5013 Motor Vehicle Supplies and New Parts</td></tr>
<tr><td>5014 Tires and Tubes</td></tr>
<tr><td>5015 Motor Vehicle Parts, Used</td></tr>
<tr><td>5021 Furniture</td></tr>
<tr><td>5023 Homefurnishings</td></tr>
<tr><td>5031 Lumber, Plywood, and Millwork</td></tr>
<tr><td>5032 Brick, Stone, and Related Material</td></tr>
<tr><td>5033 Roofing, Siding, and Insulation</td></tr>
<tr><td>5039 Construction Materials, Nec</td></tr>
<tr><td>5043 Photographic Equipment and Supplies</td></tr>
<tr><td>5044 Office Equipment</td></tr>
<tr><td>5045 Computers, Peripherals, and Software</td></tr>
<tr><td>5046 Commercial Equipment, Nec</td></tr>
<tr><td>5047 Medical and Hospital Equipment</td></tr>
<tr><td>5048 Ophthalmic Goods</td></tr>
<tr><td>5049 Professional Equipment, Nec</td></tr>
<tr><td>5051 Metals Service Centers and Offices</td></tr>
<tr><td>5052 Coal and Other Minerals and Ores</td></tr>
<tr><td>5063 Electrical Apparatus and Equipment</td></tr>
<tr><td>5064 Electrical Appliances, Television and Radio</td></tr>
<tr><td>5065 Electronic Parts and Equipment, Nec</td></tr>
<tr><td>5072 Hardware</td></tr>
<tr><td>5074 Plumbing and Hydronic Heating Supplies</td></tr>
<tr><td>5075 Warm Air Heating and Air Conditioning</td></tr>
<tr><td>5078 Refrigeration Equipment and Supplies</td></tr>
<tr><td>5082 Construction and Mining Machinery</td></tr>
<tr><td>5083 Farm and Garden Machinery</td></tr>
<tr><td>5084 Industrial Machinery and Equipment</td></tr>
<tr><td>5085 Industrial Supplies</td></tr>
<tr><td>5087 Service Establishment Equipment</td></tr>
<tr><td>5088 Transportation Equipment and Supplies</td></tr>
<tr><td>5091 Sporting and Recreation Goods</td></tr>
<tr><td>5092 Toys and Hobby Goods and Supplies</td></tr>
<tr><td>5093 Scrap and Waste Materials</td></tr>
<tr><td>5094 Jewelry and Precious Stones</td></tr>
<tr><td>5099 Durable Goods, Nec</td></tr>
<tr><td>51 Wholesale Trade-Nondurable Goods</td></tr>
<tr><td>5111 Printing and Writing Paper</td></tr>
<tr><td>5112 Stationery and Office Supplies</td></tr>
<tr><td>5113 Industrial and Personal Service Paper</td></tr>
<tr><td>5122 Drugs, Proprietaries, and Sundries</td></tr>
<tr><td>5131 Piece Goods and Notions</td></tr>
<tr><td>5136 Men's and Boy's Clothing</td></tr>
<tr><td>5137 Women's and Children's Clothing</td></tr>
<tr><td>5139 Footwear</td></tr>
<tr><td>5141 Groceries, General Line</td></tr>
<tr><td>5142 Packaged Frozen Goods</td></tr>
<tr><td>5143 Dairy Products, Except Dried or Canned</td></tr>
<tr><td>5144 Poultry and Poultry Products</td></tr>
<tr><td>5145 Confectionery</td></tr>
<tr><td>5146 Fish and Seafoods</td></tr>
<tr><td>5147 Meats and Meat Products</td></tr>
<tr><td>5148 Fresh Fruits and Vegetables</td></tr>
<tr><td>5149 Groceries and Related Products, Nec</td></tr>
<tr><td>5153 Grain and Field Beans</td></tr>
<tr><td>5154 Livestock</td></tr>
<tr><td>5159 Farm-product Raw Materials, Nec</td></tr>
<tr><td>5162 Plastics Materials and Basic Shapes</td></tr>
<tr><td>5169 Chemicals and Allied Products, Nec</td></tr>
<tr><td>5171 Petroleum Bulk Stations and Terminals</td></tr>
<tr><td>5172 Petroleum Products, Nec</td></tr>
<tr><td>5181 Beer and Ale</td></tr>
<tr><td>5182 Wine and Distilled Beverages</td></tr>
<tr><td>5191 Farm Supplies</td></tr>
<tr><td>5192 Books, Periodicals, and Newspapers</td></tr>
<tr><td>5193 Flowers and Florists Supplies</td></tr>
<tr><td>5194 Tobacco and Tobacco Products</td></tr>
<tr><td>5198 Paints, Varnishes, and Supplies</td></tr>
<tr><td>5199 Nondurable Goods, Nec</td></tr>
<tr><td>52 to 59 RETAIL TRADE</td></tr>
<tr><td>52 Building Materials and Garden Supplies</td></tr>
<tr><td>5211 Lumber and Other Building Materials</td></tr>
<tr><td>5231 Paint, Glass, and Wallpaper Stores</td></tr>
<tr><td>5251 Hardware Stores</td></tr>
<tr><td>5261 Retail Nurseries and Garden Stores</td></tr>
<tr><td>5271 Mobile Home Dealers</td></tr>
<tr><td>53 General Merchandise Stores</td></tr>
<tr><td>5311 Department Stores</td></tr>
<tr><td>5331 Variety Stores</td></tr>
<tr><td>5399 Miscellaneous General Merchandise Stores</td></tr>
<tr><td>54 Food Stores</td></tr>
<tr><td>5411 Grocery Stores</td></tr>
<tr><td>5421 Meat and Fish Markets</td></tr>
<tr><td>5431 Fruit and Vegetable Markets</td></tr>
<tr><td>5441 Candy, Nut, and Confectionery Stores</td></tr>
<tr><td>5451 Dairy Products Stores</td></tr>
<tr><td>5461 Retail Bakeries</td></tr>
<tr><td>5499 Miscellaneous Food Stores</td></tr>
<tr><td>55 Automotive Dealers & Service Stations</td></tr>
<tr><td>5511 New and Used Car Dealers</td></tr>
<tr><td>5521 Used Car Dealers</td></tr>
<tr><td>5531 Auto and Home Supply Stores</td></tr>
<tr><td>5541 Gasoline Service Stations</td></tr>
<tr><td>5551 Boat Dealers</td></tr>
<tr><td>5561 Recreational Vehicle Dealers</td></tr>
<tr><td>5571 Motorcycle Dealers</td></tr>
<tr><td>5599 Automotive Dealers, Nec</td></tr>
<tr><td>56 Apparel and Accessory Stores</td></tr>
<tr><td>5611 Men's and Boys' Clothing Stores</td></tr>
<tr><td>5621 Women's Clothing Stores</td></tr>
<tr><td>5632 Women's Accessory and Specialty Stores</td></tr>
<tr><td>5641 Children's and Infants' Wear Stores</td></tr>
<tr><td>5651 Family Clothing Stores</td></tr>
<tr><td>5661 Shoe Stores</td></tr>
<tr><td>5699 Miscellaneous Apparel and Accessories Stores</td></tr>
<tr><td>57 Furniture and Homefurnishings</td></tr>
<tr><td>5712 Furniture Stores</td></tr>
<tr><td>5713 Floor Covering Stores</td></tr>
<tr><td>5714 Drapery and Upholstery Stores</td></tr>
<tr><td>5719 Miscellaneous Homefurnishings</td></tr>
<tr><td>5722 Household Appliance Stores</td></tr>
<tr><td>5731 Radio, Television, and Electronic Stores</td></tr>
<tr><td>5734 Computer and Software Stores</td></tr>
<tr><td>5735 Record and Prerecorded Tape Stores</td></tr>
<tr><td>5736 Musical Instrument Stores</td></tr>
<tr><td>58 Eating and Drinking Places</td></tr>
<tr><td>5812 Eating Places</td></tr>
<tr><td>5813 Drinking Places</td></tr>
<tr><td>59 Miscellaneous Retail</td></tr>
<tr><td>5912 Drug Stores and Proprietary Stores</td></tr>
<tr><td>5921 Liquor Stores</td></tr>
<tr><td>5932 Used Merchandise Stores</td></tr>
<tr><td>5941 Sporting Goods and Bicycle Shops</td></tr>
<tr><td>5942 Book Stores</td></tr>
<tr><td>5943 Stationery Stores</td></tr>
<tr><td>5944 Jewelry Stores</td></tr>
<tr><td>5945 Hobby, Toy, and Game Shops</td></tr>
<tr><td>5946 Camera and Photographic Supply Stores</td></tr>
<tr><td>5947 Gift, Novelty, and Souvenir Shop</td></tr>
<tr><td>5948 Luggage and Leather Goods Stores</td></tr>
<tr><td>5949 Sewing, Needlework, and Piece Goods</td></tr>
<tr><td>5961 Catalog and Mail-order Houses</td></tr>
<tr><td>5962 Merchandising Machine Operators</td></tr>
<tr><td>5963 Direct Selling Establishments</td></tr>
<tr><td>5983 Fuel Oil Dealers</td></tr>
<tr><td>5984 Liquefied Petroleum Gas Dealers</td></tr>
<tr><td>5989 Fuel Dealers, Nec</td></tr>
<tr><td>5992 Florists</td></tr>
<tr><td>5993 Tobacco Stores and Stands</td></tr>
<tr><td>5994 News Dealers and Newsstands</td></tr>
<tr><td>5995 Optical Goods Stores</td></tr>
<tr><td>5999 Miscellaneous Retail Stores, Nec</td></tr>
<tr><td><h3>60 to 67 FINANCE, INSURANCE AND REAL ESTATE</h3></td></tr>
<tr><td>60 Depository Institutions</td></tr>
<tr><td>6011 Federal Reserve Banks</td></tr>
<tr><td>6019 Central Reserve Depository, Nec</td></tr>
<tr><td>6021 National Commercial Banks</td></tr>
<tr><td>6022 State Commercial Banks</td></tr>
<tr><td>6029 Commercial Banks, Nec</td></tr>
<tr><td>6035 Federal Savings Institutions</td></tr>
<tr><td>6036 Savings Institutions, Except Federal</td></tr>
<tr><td>6061 Federal Credit Unions</td></tr>
<tr><td>6062 State Credit Unions</td></tr>
<tr><td>6081 Foreign Bank and Branches and Agencies</td></tr>
<tr><td>6082 Foreign Trade and International Banks</td></tr>
<tr><td>6091 Nondeposit Trust Facilities</td></tr>
<tr><td>6099 Functions Related To Depository Banking</td></tr>
<tr><td>61 Nondepository Institutions</td></tr>
<tr><td>6111 Federal and Federally Sponsored Credit</td></tr>
<tr><td>6141 Personal Credit Institutions</td></tr>
<tr><td>6153 Short-term Business Credit</td></tr>
<tr><td>6159 Miscellaneous Business Credit</td></tr>
<tr><td>6162 Mortgage Bankers and Correspondents</td></tr>
<tr><td>6163 Loan Brokers</td></tr>
<tr><td>62 Security and Commodity Brokers</td></tr>
<tr><td>6211 Security Brokers and Dealers</td></tr>
<tr><td>6221 Commodity Contracts Brokers, Dealers</td></tr>
<tr><td>6231 Security and Commodity Exchanges</td></tr>
<tr><td>6282 Investment Advice</td></tr>
<tr><td>6289 Security and Commodity Service</td></tr>
<tr><td>63 Insurance Carriers</td></tr>
<tr><td>6311 Life Insurance</td></tr>
<tr><td>6321 Accident and Health Insurance</td></tr>
<tr><td>6324 Hospital and Medical Service Plans</td></tr>
<tr><td>6331 Fire, Marine, and Casualty Insurance</td></tr>
<tr><td>6351 Surety Insurance</td></tr>
<tr><td>6361 Title Insurance</td></tr>
<tr><td>6371 Pension, Health, and Welfare Funds</td></tr>
<tr><td>6399 Insurance Carriers, Nec</td></tr>
<tr><td>64 Insurance Agents, Brokers/Services</td></tr>
<tr><td>6411 Insurance Agents, Brokers, and Service</td></tr>
<tr><td>65 Real Estate</td></tr>
<tr><td>6512 Nonresidential Building Operators</td></tr>
<tr><td>6513 Apartment Building Operators</td></tr>
<tr><td>6514 Dwelling Operators, Except Apartments</td></tr>
<tr><td>6515 Mobile Home Site Operators</td></tr>
<tr><td>6517 Railroad Property Lessors</td></tr>
<tr><td>6519 Real Property Lessors, Nec</td></tr>
<tr><td>6531 Real Estate Agents and Managers</td></tr>
<tr><td>6541 Title abstract Offices</td></tr>
<tr><td>6552 Subdividers and Developers, Nec</td></tr>
<tr><td>6553 Cemetery Subdividers and Developers</td></tr>
<tr><td>67 Holding & Investment Offices</td></tr>
<tr><td>6712 Bank Holding Companies</td></tr>
<tr><td>6719 Holding Companies, Nec</td></tr>
<tr><td>6722 Management Investment, Open-ended</td></tr>
<tr><td>6726 Investment Offices, Nec</td></tr>
<tr><td>6732 Trusts: Educational, Religious, Etc.</td></tr>
<tr><td>6733 Trusts, Nec</td></tr>
<tr><td>6792 Oil Royalty Traders</td></tr>
<tr><td>6794 Patent Owners and Lessors</td></tr>
<tr><td>6798 Real Estate Investment Trusts</td></tr>
<tr><td>6799 Investors, Nec</td></tr>
<tr><td><h3>70 to 89 SERVICES</h3></td></tr>
<tr><td>70 Hotels & Other Lodging Places</td></tr>
<tr><td>7011 Hotels and Motels</td></tr>
<tr><td>7021 Rooming and Boarding Houses</td></tr>
<tr><td>7032 Sporting and Recreational Camps</td></tr>
<tr><td>7033 Trailer Parks and Campsites</td></tr>
<tr><td>7041 Membership-basis Organization Hotels</td></tr>
<tr><td>72 Personal Services</td></tr>
<tr><td>7211 Power Laundries, Family and Commercial</td></tr>
<tr><td>7212 Garment Pressing and Cleaners' Agents</td></tr>
<tr><td>7213 Linen Supply</td></tr>
<tr><td>7215 Coin-operated Laundries and Cleaning</td></tr>
<tr><td>7216 Drycleaning Plants, Except Rugs</td></tr>
<tr><td>7217 Carpet and Upholstery Cleaning</td></tr>
<tr><td>7218 Industrial Launderers</td></tr>
<tr><td>7219 Laundry and Garment Services, Nec</td></tr>
<tr><td>7221 Photographic Studios, Portrait</td></tr>
<tr><td>7231 Beauty Shops</td></tr>
<tr><td>7241 Barber Shops</td></tr>
<tr><td>7251 Shoe Repair and Shoeshine Parlors</td></tr>
<tr><td>7261 Funeral Service and Crematories</td></tr>
<tr><td>7291 Tax Return Preparation Services</td></tr>
<tr><td>7299 Miscellaneous Personal Services</td></tr>
<tr><td>73 Business Services</td></tr>
<tr><td>7311 Advertising Agencies</td></tr>
<tr><td>7312 Outdoor Advertising Services</td></tr>
<tr><td>7313 Radio, Television, Publisher Representatives</td></tr>
<tr><td>7319 Advertising, Nec</td></tr>
<tr><td>7322 Adjustment and Collection Services</td></tr>
<tr><td>7323 Credit Reporting Services</td></tr>
<tr><td>7331 Direct Mail Advertising Services</td></tr>
<tr><td>7334 Photocopying and Duplicating Services</td></tr>
<tr><td>7335 Commercial Photography</td></tr>
<tr><td>7336 Commercial Art and Graphic Design</td></tr>
<tr><td>7338 Secretarial and Court Reporting</td></tr>
<tr><td>7342 Disinfecting and Pest Control Services</td></tr>
<tr><td>7349 Building Maintenance Services, Nec</td></tr>
<tr><td>7352 Medical Equipment Rental</td></tr>
<tr><td>7353 Heavy Construction Equipment Rental</td></tr>
<tr><td>7359 Equipment Rental and Leasing, Nec</td></tr>
<tr><td>7361 Employment Agencies</td></tr>
<tr><td>7363 Help Supply Services</td></tr>
<tr><td>7371 Custom Computer Programming Services</td></tr>
<tr><td>7372 Prepackaged Software</td></tr>
<tr><td>7373 Computer Integrated Systems Design</td></tr>
<tr><td>7374 Data Processing and Preparation</td></tr>
<tr><td>7375 Information Retrieval Services</td></tr>
<tr><td>7376 Computer Facilities Management</td></tr>
<tr><td>7377 Computer Rental and Leasing</td></tr>
<tr><td>7378 Computer Maintenance and Repair</td></tr>
<tr><td>7379 Computer Related Services, Nec</td></tr>
<tr><td>7381 Detective and Armored Car Services</td></tr>
<tr><td>7382 Security Systems Services</td></tr>
<tr><td>7383 News Syndicates</td></tr>
<tr><td>7384 Photofinish Laboratories</td></tr>
<tr><td>7389 Business Services, Nec</td></tr>
<tr><td>75 Auto Repair, Services, Parking</td></tr>
<tr><td>7513 Truck Rental and Leasing, Without Drivers</td></tr>
<tr><td>7514 Passenger Car Rental</td></tr>
<tr><td>7515 Passenger Car Leasing</td></tr>
<tr><td>7519 Utility Trailer Rental</td></tr>
<tr><td>7521 Automobile Parking</td></tr>
<tr><td>7532 Top and Body Repair and Paint Shops</td></tr>
<tr><td>7533 Auto Exhaust System Repair Shops</td></tr>
<tr><td>7534 Tire Retreading and Repair Shops</td></tr>
<tr><td>7536 Automotive Glass Replacement Shops</td></tr>
<tr><td>7537 Automotive Transmission Repair Shops</td></tr>
<tr><td>7538 General Automotive Repair Shops</td></tr>
<tr><td>7539 Automotive Repair Shops, Nec</td></tr>
<tr><td>7542 Carwashes</td></tr>
<tr><td>7549 Automotive Services, Nec</td></tr>
<tr><td>76 Miscellaneous Repair Services</td></tr>
<tr><td>7622 Radio and Television Repair</td></tr>
<tr><td>7623 Refrigeration Service and Repair</td></tr>
<tr><td>7629 Electrical Repair Shops</td></tr>
<tr><td>7631 Watch, Clock, and Jewelry Repair</td></tr>
<tr><td>7641 Reupholstery and Furniture Repair</td></tr>
<tr><td>7692 Welding Repair</td></tr>
<tr><td>7694 Armature Rewinding Shops</td></tr>
<tr><td>7699 Repair Services, Nec</td></tr>
<tr><td>78 Motion Pictures</td></tr>
<tr><td>7812 Motion Picture and Video Production</td></tr>
<tr><td>7819 Services Allied To Motion Pictures</td></tr>
<tr><td>7822 Motion Picture and Tape Distribution</td></tr>
<tr><td>7829 Motion Picture Distribution Services</td></tr>
<tr><td>7832 Motion Picture Theaters, Except Drive-in</td></tr>
<tr><td>7833 Drive-in Motion Picture Theaters</td></tr>
<tr><td>7841 Video Tape Rental</td></tr>
<tr><td>79 Amusement & Recreation Services</td></tr>
<tr><td>7911 Dance Studios, Schools, and Halls</td></tr>
<tr><td>7922 Theatrical Producers and Services</td></tr>
<tr><td>7929 Entertainers and Entertainment Groups</td></tr>
<tr><td>7933 Bowling Centers</td></tr>
<tr><td>7941 Sports Clubs, Managers, and Promoters</td></tr>
<tr><td>7948 Racing, Including Track Operation</td></tr>
<tr><td>7991 Physical Fitness Facilities</td></tr>
<tr><td>7992 Public Golf Courses</td></tr>
<tr><td>7993 Coin-operated Amusement Devices</td></tr>
<tr><td>7996 Amusement Parks</td></tr>
<tr><td>7997 Membership Sports and Recreation Clubs</td></tr>
<tr><td>7999 Amusement and Recreation, Nec</td></tr>
<tr><td>80 Health Services</td></tr>
<tr><td>8011 Offices and Clinics of Medical Doctors</td></tr>
<tr><td>8021 Offices and Clinics of Dentists</td></tr>
<tr><td>8031 Offices and Clinics of Osteopathic Physicians</td></tr>
<tr><td>8041 Offices and Clinics of Chiropractors</td></tr>
<tr><td>8042 Offices and Clinics of Optometrists</td></tr>
<tr><td>8043 Offices and Clinics of Podiatrists</td></tr>
<tr><td>8049 Offices of Health Practitioner</td></tr>
<tr><td>8051 Skilled Nursing Care Facilities</td></tr>
<tr><td>8052 Intermediate Care Facilities</td></tr>
<tr><td>8059 Nursing and Personal Care, Nec</td></tr>
<tr><td>8062 General Medical and Surgical Hospitals</td></tr>
<tr><td>8063 Psychiatric Hospitals</td></tr>
<tr><td>8069 Specialty Hospitals, Except Psychiatric</td></tr>
<tr><td>8071 Medical Laboratories</td></tr>
<tr><td>8072 Dental Laboratories</td></tr>
<tr><td>8082 Home Health Care Services</td></tr>
<tr><td>8092 Kidney Dialysis Centers</td></tr>
<tr><td>8093 Specialty Outpatient Clinics, Nec</td></tr>
<tr><td>8099 Health and Allied Services, Nec</td></tr>
<tr><td>81 Legal Services</td></tr>
<tr><td>8111 Legal Services</td></tr>
<tr><td>82 Educational Services</td></tr>
<tr><td>8211 Elementary and Secondary Schools</td></tr>
<tr><td>8221 Colleges and Universities</td></tr>
<tr><td>8222 Junior Colleges</td></tr>
<tr><td>8231 Libraries</td></tr>
<tr><td>8243 Data Processing Schools</td></tr>
<tr><td>8244 Business and Secretarial Schools</td></tr>
<tr><td>8249 Vocational Schools, Nec</td></tr>
<tr><td>8299 Schools and Educational Services</td></tr>
<tr><td>83 Social Services</td></tr>
<tr><td>8322 Individual and Family Services</td></tr>
<tr><td>8331 Job Training and Related Services</td></tr>
<tr><td>8351 Child Day Care Services</td></tr>
<tr><td>8361 Residential Care</td></tr>
<tr><td>8399 Social Services, Nec</td></tr>
<tr><td>84 Museums, Botanicals, Zoos</td></tr>
<tr><td>8412 Museums and Art Galleries</td></tr>
<tr><td>8422 Botanical and Zoological Gardens</td></tr>
<tr><td>86 Membership Organizations</td></tr>
<tr><td>8611 Business Associations</td></tr>
<tr><td>8621 Professional Organizations</td></tr>
<tr><td>8631 Labor Organizations</td></tr>
<tr><td>8641 Civic and Social Associations</td></tr>
<tr><td>8651 Political Organizations</td></tr>
<tr><td>8661 Religious Organizations</td></tr>
<tr><td>8699 Membership Organizations, Nec</td></tr>
<tr><td>87 Engineering & Management Services</td></tr>
<tr><td>8711 Engineering Services</td></tr>
<tr><td>8712 Architectural Services</td></tr>
<tr><td>8713 Surveying Services</td></tr>
<tr><td>8721 Accounting, Auditing, and Bookkeeping</td></tr>
<tr><td>8731 Commercial Physical Research</td></tr>
<tr><td>8732 Commercial Nonphysical Research</td></tr>
<tr><td>8733 Noncommercial Research Organizations</td></tr>
<tr><td>8734 Testing Laboratories</td></tr>
<tr><td>8741 Management Services</td></tr>
<tr><td>8742 Management Consulting Services</td></tr>
<tr><td>8744 Facilities Support Services</td></tr>
<tr><td>8748 Business Consulting, Nec</td></tr>
<tr><td>88 Private Households</td></tr>
<tr><td>8811 Private Households</td></tr>
<tr><td>89 Services, Nec</td></tr>
<tr><td>8999 Services, Nec</td></tr>
<tr><td><h3>91-97 PUBLIC ADMINISTRATION</h3></td></tr>
<tr><td>91 Executive, Legislative and General</td></tr>
<tr><td>9111 Executive Offices</td></tr>
<tr><td>9121 Legislative Bodies</td></tr>
<tr><td>9131 Executive and Legislative Combined</td></tr>
<tr><td>9199 General Government, Nec</td></tr>
<tr><td>92 Justice, Public Order, Safety</td></tr>
<tr><td>9211 Courts</td></tr>
<tr><td>9221 Police Protection</td></tr>
<tr><td>9222 Legal Counsel and Prosecution</td></tr>
<tr><td>9223 Correctional Institutions</td></tr>
<tr><td>9224 Fire Protection</td></tr>
<tr><td>9229 Public Order and Safety, Nec</td></tr>
<tr><td>93 Finance, Taxation and Monetary</td></tr>
<tr><td>9311 Finance, Taxation, and Monetary Policy</td></tr>
<tr><td>94 Administration of Human Resources</td></tr>
<tr><td>9411 Administration of Educational Programs</td></tr>
<tr><td>9431 Administration of Public Health Programs</td></tr>
<tr><td>9441 Administration of Social and Manpower Programs</td></tr>
<tr><td>9451 Administration of Veterans' Affairs</td></tr>
<tr><td>95 Environmental Quality and Housing</td></tr>
<tr><td>9511 Air, Water, and Solid Waste Management</td></tr>
<tr><td>9512 Land, Mineral, and Wildlife Conservation</td></tr>
<tr><td>9531 Housing Programs</td></tr>
<tr><td>9532 Urban and Community Development</td></tr>
<tr><td>96 Administration of Economic Programs</td></tr>
<tr><td>9611 Administration of General Economic Programs</td></tr>
<tr><td>9621 Regulation, Administration of Transportation</td></tr>
<tr><td>9631 Regulation, Administration of Utilities</td></tr>
<tr><td>9641 Regulation of Agricultural Marketing</td></tr>
<tr><td>9651 Regulation, Miscellaneous Commercial Sectors</td></tr>
<tr><td>9661 Space Research and Technology</td></tr>
<tr><td>97 National Security and International Affairs</td></tr>
<tr><td>9711 National Security</td></tr>
<tr><td>9721 International Affairs</td></tr>

</tbody>
</table>

</body>
</html>