<?php
$file = __DIR__.'/struct.txt';
$f = fopen($file, 'r');
$content = fread($f, filesize($file));

fclose($f);
$data = "`".$content."`";
//echo $content;
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="apple-touch-icon" href="%PUBLIC_URL%/logo192.png" />
    <style type = "text/css">
      body {
        margin: 0;
        font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen',
          'Ubuntu', 'Cantarell', 'Fira Sans', 'Droid Sans', 'Helvetica Neue',
          sans-serif;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        color: white;
        background-color: #ddd;

      }

      code {
        font-family: source-code-pro, Menlo, Monaco, Consolas, 'Courier New',
          monospace;
      }

      .lineSVG {
        width: 100%;
        height: 140px;
      }

      .frame {
        display: block;
        width: 100%;
      }

      .item {
        display: inline-flex;
        vertical-align: middle;
        background-color: #ddd;
        height: 140px;
      }

      .itemContent {
        width: 100%;
        height: 100%;
        display: flex;
        align-items: center;
        justify-content: center;
        position: relative;
      }

      .real {
        background-color: rgb(27, 0, 71);
      }

      .empty {
        background-color: #ddd;
      }

      .circut {
        z-index: 1;
        height: 70px;
        width: 100px;
        border-radius: 10% 10% 10% 10%;
        flex-direction: column;
        display: flex;
        justify-content: flex-start;
        outline: none;
        font-size: 20px;
      }

      .circut > div{
        width: 100%;
        height: 50%;
        display: flex;
        justify-content: center;
        align-items: center;
      }



      .lineOrigin {
        position: absolute;
        width: 100%;
        top: 50%;

      }

    </style>
  </head>
  <body>
    <div id="root">

    </div>
      
  </body>
</html>

<script>

const data = JSON.parse(<?php echo $data; ?>)


const createTree = (data) => {
  const eS = "$"
  const del = "|"
  const iw = 200 

  const findGF = (data) => {
    const GF = data.find(item => (!data.find(target => (item.pid === target.id))))
    if (GF) {return GF} else throw 'CycledTree'
  }

  const addTLevel = (data, startlevel = 100) => {
    data[data.findIndex(target => target.id === findGF(data).id)].tlevel = startlevel
    const tlevelObject = {tlevel: startlevel, items:[findGF(data)]}
    return addNextTLevel(data, tlevelObject)

  }

  const addNextTLevel = (data, tlevelObject) => {
    const newItems = tlevelObject.items.map(item => {
      const thisNewItems = data.filter(target => target.pid === item.id)
      if (thisNewItems.length) {
        thisNewItems.forEach(item => {
          data[data.findIndex(target => target.id === item.id)].tlevel = tlevelObject.tlevel - 1
        })
      }     
      return thisNewItems
    }).flat()    
    if (newItems.length) return addNextTLevel(data, {tlevel: tlevelObject.tlevel - 1, items: newItems}) 
    else return data
  }

  const widthSort = (a,b) => (b.tlevel !== a.tlevel) ? (+a.tlevel - +b.tlevel):
    (b.pid !== a.pid) ? ((b.pid > a.pid) ? -1: 1):
    ((b.id > a.id) ? -1: 1)

  const treeSort = (a,b) => (b.tlevel !== a.tlevel) ? (+a.tlevel - +b.tlevel):
    (b.tree > a.tree) ? -1: 1

  const tlevelSort = (a,b) => (b.tlevel - a.tlevel)

  const addWidth = (data) => {
    const dNw = data.map((item) => ({...item, width: 0, childs: [], entity: "real", tree: ""})
    ).sort(widthSort)

    dNw.forEach((item, i, arr) => {
      if (item.pid) {
        const targetId = arr.indexOf(arr.find(target => target.id===item.pid))
        if (arr[targetId] && arr[targetId].id) {
          arr[targetId].childs.push(item.id)
        }
      }
      if (item.childs.length) {      
        item.width = item.childs.map((cid) => arr.find(item => item.id===cid).width).reduce((a,b) => a+b)
      } else {
        item.width = 1
      }
    })
    return dNw.sort(tlevelSort)
  }

  const makeNet = (dNw) => {
    const dIn = dNw.concat([])
    dIn.forEach((item, i, arr) => {
      if ((!(item.childs.length)) && (arr.find(target => target.tlevel < item.tlevel))) {
        arr.push({
          id: item.id + eS, 
          pid: item.id, 
          tlevel: +item.tlevel-1, 
          width: 1,
          entity: "empty",
          childs: [],
          tree: item.tree + del + item.id + eS
        })
        item.childs.push(item.id+eS)
        
      }
      item.tree = (arr.find(target => target.id === item.pid)) ? 
      arr.find(target => target.id === item.pid).tree + del + item.id:
      item.id
    })
    return (dIn.length>dNw.length) ? makeNet(dIn): dIn.sort(treeSort).sort(tlevelSort)
  }

  const dIn = makeNet(addWidth(addTLevel(data)))
  console.log(dIn)
  const tlevels = dIn.map((item) => item.tlevel)
  const netWidth = dIn.find((item) => item.tlevel == Math.max(...tlevels)).width

  /////////////////////////////////////

  const root = document.getElementById('root')
  const frame = document.createElement('div')
  frame.setAttribute('class', 'frame')
  frame.setAttribute('style', `width: ${netWidth * iw}px`)
  root.appendChild(frame)

  dIn.forEach((item, i, data) => {
    const childsBP = [];
    item.childs.map(child => {
      const childW = data.find(target => target.id === child).width;
      childsBP.push(childsBP.length > 0 ? +childsBP[childsBP.length - 1] + 2 * childW : 2 * childW);
    });
    const childsP = childsBP.map((pos, num, arr) => num === 0 ? pos / 2 : (pos + arr[num - 1]) / 2);
    const itemN = document.createElement('div')
    itemN.setAttribute('class', 'item')
    itemN.setAttribute('style', `width: ${item.width * iw}px`)
    frame.appendChild(itemN)
    const itemContentN = document.createElement('div')
    itemContentN.setAttribute('class', 'itemContent')
    itemN.appendChild(itemContentN)
    const lineOriginN = document.createElement('div')
    lineOriginN.setAttribute('class', 'lineOrigin')
    itemContentN.appendChild(lineOriginN)
    const svgN = document.createElementNS("http://www.w3.org/2000/svg", "svg")
    svgN.setAttribute('class', 'lineSVG')
    lineOriginN.appendChild(svgN)
    item.childs.forEach((child, num) => {
      if (data.find(target => target.id === child).entity === 'real') svgN.innerHTML += `<line x1="50%" y1="25%" x2=${100*childsP[num]/2/item.width}% y2='75%' stroke='black'></line>`   
    })
    const circleN = document.createElement('div')
    circleN.setAttribute('class', `${(item.entity === 'real') ? 'real': 'empty'} circut`)
    circleN.innerHTML=`${(item.entity !== 'empty') ? `<div>${item.id}</div><div>level: ${item.level}</div>`: ''}`
    itemContentN.appendChild(circleN)
  })  

}

createTree(data)
createTree(data2)
createTree(data3)
</script>