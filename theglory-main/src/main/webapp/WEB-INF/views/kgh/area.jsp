<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>ZingSoft Demo</title>
  <script nonce="undefined" src="https://cdn.zingchart.com/zingchart.min.js"></script>
  <style>
    @import 'https://fonts.googleapis.com/css?family=Open+Sans';

    .zc-body {
      background-color: #2B313B;
    }

    .chart--container {
      height: 100%;
      width: 100%;
      min-height: 530px;
    }

    .zc-ref {
      display: none;
    }
  </style>
</head>
​

<body class="zc-body">
  ​
  <div id="myChart" class="chart--container">
    <a href="https://www.zingchart.com/" rel="noopener" class="zc-ref">Powered by ZingChart</a>
  </div>

  <script>
  
  var Area = ${strArea};
  console.log(Area);
  console.log(Area[0]);

  
  ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "b55b025e438fa8a98e32482b5f768ff5"]; // CHART CONFIG
  // -----------------------------
  let chartConfig = {
    type: 'pie',
    backgroundColor: '#2B313B',
    title: {
      text: 'Global Browser Usage',
      align: 'left',
      fontColor: '#fff',
      fontFamily: 'Open Sans',
      fontSize: '25px',
      offsetX: '10px',
    },
    subtitle: {
      text: 'June 2020',
      align: 'left',
      fontColor: '#8e99a9',
      fontFamily: 'Open Sans',
      fontSize: '16px',
      offsetX: '10px',
      offsetY: '10px'
    },
    plot: {
      tooltip: {
        text: '%npv%',
        padding: '5px 10px',
        fontFamily: 'Open Sans',
        fontSize: '18px'
      },
      valueBox: {
        text: '%t\n%npv%',
        fontFamily: 'Open Sans',
        placement: 'out'
      },
      animation: {
        effect: 'ANIMATION_EXPAND_VERTICAL',
        method: 'ANIMATION_REGULAR_EASE_OUT',
        sequence: 'ANIMATION_BY_PLOT',
        speed: 500
      },
      borderColor: '#2B313B',
      borderWidth: '5px'
    },
    plotarea: {
      margin: '20px 0 0 0'
    },
    source: {
      text: 'Source: gs.statcounter.com',
      fontColor: '#8e99a9',
      fontFamily: 'Open Sans',
      textAlign: 'left'
    },
    series: [{
        text: '서울중부',
        values: [Area[0]],
        backgroundColor: '#50ADF5'
      },
      {
        text: '서울남부',
        values: [Area[1]],
        backgroundColor: '#FF7965'
      },   
      {
        text: '서울동부',
        values: [Area[2]],
        backgroundColor: '#6877e5'
      },
      {
        text: '부산',
        values: [Area[3]],
        backgroundColor: '#FFFFCC'
      },
      {
          text: '대구',
          values: [Area[4]],
          backgroundColor: '#99FFFF'
        },
        {
            text: '인천',
            values: [Area[5]],
            backgroundColor: '#CC99FF'
          },
      {
          text: '울산',
          values: [Area[6]],
          backgroundColor: '#FFCB45'
        },
      {
          text: '경기',
          values: [Area[7]],
          backgroundColor: '#FFCCCC'
        },
        {
            text: '강원',
            values: [Area[8]],
            backgroundColor: '#CCCCCC'
          },
          {
              text: '충북',
              values: [Area[9]],
              backgroundColor: '#AE8B59'
            },
            {
                text: '세종',
                values: [Area[10]],
                backgroundColor: '#66FF00'
              },
              {
                  text: '전북',
                  values: [Area[11]],
                  backgroundColor: '#FFFFCC'
                },
                {
                    text: '경남',
                    values: [Area[12]],
                    backgroundColor: 'white'
                  },   
                {
                    text: '제주',
                    values: [Area[13]],
                    backgroundColor: '#6FB07F'
                  },
                  {
                      text: '광주',
                      values: [Area[14]],
                      backgroundColor: '#FF66FF'
                    }   
          
    ]
  };

  // RENDER CHARTS
  // -----------------------------
  zingchart.render({
    id: 'myChart',
    data: chartConfig,
    height: '100%',
    width: '100%',
  });
  </script>
</body>

</html>