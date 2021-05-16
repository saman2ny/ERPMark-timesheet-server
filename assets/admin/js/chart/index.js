$(function() {
    "use strict";
    initSparkline();
    initC3Chart();    
});

function initSparkline() {
    $(".sparkline").each(function() {
        var $this = $(this);
        $this.sparkline('html', $this.data());
    });
}
function initC3Chart() {
    setTimeout(function(){ 
        
//        $(document).ready(function(){   
//            var chart = c3.generate({
//                bindto: '#chart-area-spline-sracked', // id of chart wrapper
//                data: {
//                    
//                    columns: [
//                        // each columns data
//                        ['data1', 21, 5, 3, 3, 19, 17, 23, 12, 25, 37, 25, 37, 5],
//                        ['data2', 7, 6, 4, 4, 9, 16, 15, 23, 14, 55, 14, 55, 6],
//                        ['data3', 13, 7, 5, 5, 9, 31, 8, 27, 42, 18, 42, 18, 7],
//                        ['data4', 6, 8, 6, 6, 9, 3, 8, 3, 42, 3, 42, 3, 8],
//                        ['data5', 13, 9, 7, 7, 9, 3, 8, 27, 3, 3, 3, 3, 9],
//                        ['data6', 13, 6, 4, 8, 9, 31, 8, 3, 42, 3, 42, 3, 6],
//                        ['data7', 13, 5, 3, 9, 9, 31, 8, 3, 42, 3, 42, 3, 5],
//                        ['data8', 13, 4, 2, 9, 9, 31, 8, 3, 42, 3, 42, 3, 4],
//                        ['data9', 13, 3, 1, 8, 9, 31, 8, 3, 42, 3, 42, 3, 3],
//                        ['data10', 13, 4, 2, 7, 9, 31, 8, 3, 42, 3, 42, 3, 4],
//                        
//                        ['data11', 13, 5, 3, 6, 9, 31, 8, 3, 42, 3, 42, 3, 5],
//                        ['data12', 13, 9, 7, 0, 9, 31, 8, 3, 42, 3, 42, 3, 9],
//                        ['data13', 13, 20, 18, 0, 9, 31, 8, 3, 42, 3, 42, 3, 20],
//                        ['data14', 13, 14, 12, 5, 9, 31, 8, 3, 42, 3, 42, 3, 14],
//                        ['data15', 13, 23, 21, 0, 9, 31, 8, 3, 42, 3, 42, 3, 23],
//                        ['data16', 13, 12, 10, 20, 9, 31, 8, 3, 42, 3, 42, 3, 12],
//                        ['data17', 13, 8, 6, 7, 9, 31, 8, 3, 42, 3, 42, 3, 8],
//                        ['data18', 13, 9, 7, 6, 9, 31, 8, 3, 42, 3, 42, 3, 9],
////                        ['data19', 13, 7, 5, 5, 9, 31, 8, 3, 42, 3, 42, 3, 7],
////                        ['data20', 13, 0, 5, 4, 9, 31, 8, 3, 42, 3, 42, 3, 0],
//                    ],
//                    type: 'area-spline', // default type of chart
//                    groups: [
//                        [ 'data1', 'data2', 'data3', 'data4', 'data5', 'data6','data7', 'data8', 'data9', 'data10', 'data11', 'data12','data13', 'data14', 'data15', 'data16', 'data17', 'data18'  
////                         , 'data19', 'data20'
//                        ]
//                    ],
//                    colors: {
//                        'data1': Aero.colors["gray"],
//                        'data2': Aero.colors["red"],
//                        'data3': Aero.colors["teal"],
//                        'data4': Aero.colors["lime"],
//                        'data5': Aero.colors["red"],
//                        'data6': Aero.colors["green"],    
//                        
//                        'data7': Aero.colors["beige"],
//                        'data8': Aero.colors["apricot"],
//                        'data9': Aero.colors["magenta"],
//                        'data10': Aero.colors["purple"],
//                        'data11': Aero.colors["blue"],
//                        'data12': Aero.colors["cyan"],          
//                        
//                        'data13': Aero.colors["orange"],
//                        'data14': Aero.colors["black"],
//                        'data15': Aero.colors["navy"],
//                        'data16': Aero.colors["olive"],
//                        'data17': Aero.colors["brown"],
//                        'data18': Aero.colors["maroon"],       
//                        
////                        'data19': Aero.colors["pink"],
////                        'data20': Aero.colors["yellow"],
//                    },
//                    names: {
//                        // name of each serie
//                        'data1': 'BDM 1',
//                        'data2': 'BDM 2',
//                        'data3': 'BDM 3',
//                        'data4': 'BDM 4',
//                        'data5': 'BDM 5',
//                        'data6': 'BDM 6',
//                        'data7': 'BDM 7',
//                        'data8': 'BDM 8',
//                        'data9': 'BDM 9',
//                        'data10': 'BDM 10',
//                        'data11': 'BDM 11',
//                        'data12': 'BDM 12',
//                        'data13': 'BDM 13',
//                        'data14': 'BDM 14',
//                        'data15': 'BDM 15',
//                        'data16': 'BDM 16',
//                        'data17': 'BDM 17',
//                        'data18': 'BDM 18',
////                        'data19': 'BDM 19',
////                        'data20': 'BDM 20',
//                    }
//                },
//                axis: {
//                    x: {
//                        type: 'category',
//                        categories: ['Mar-19', 'Apr-19', 'May-19', 'Jun-19', 'July-19', 'Aug-19', 'Sept-19', 'Oct-19', 'Nov-19', 'Dec-19', 'Jan-20', 'Feb-20', 'Mar-20', 'Apr-20']
//
//                    },
//                    
//                },
//                legend: {
//                    padding: 10,
//                    show: true, //hide legend
//                },
//                padding: {
//                    bottom: 10,
//                    top: 0
//                },
//
//            });
// 
//        }); 
//        
       
        
        
        
        
//                $(document).ready(function(){
//            var chart = c3.generate({
//                bindto: '#calls-yearly-chart-bar', // id of chart wrapper
//                data: {
//                    
//                    columns: [
//                        // each columns data
//                        ['data1', 21, 100, 98, 80, 19, 17, 23, 12, 25, 37, 25, 37, 100],
//                        ['data2', 7, 75, 73, 56, 9, 16, 15, 23, 14, 55, 14, 55, 75],
//                        ['data3', 13, 65, 63, 45, 9, 31, 8, 27, 42, 18, 42, 18, 65],
//                        ['data4', 6, 25, 23, 6, 9, 3, 8, 3, 42, 3, 42, 3, 25],
//                        ['data5', 13, 25, 23, 5, 9, 3, 8, 27, 3, 3, 3, 3, 25],
//                        ['data6', 13, 60, 58, 41, 9, 31, 8, 3, 42, 3, 42, 3, 60],
//                        ['data7', 13, 75, 73, 55, 9, 31, 8, 3, 42, 3, 42, 3, 75],
//                        ['data8', 13, 80, 78, 61, 9, 31, 8, 3, 42, 3, 42, 3, 80],
//                        ['data9', 13, 70, 68, 50, 9, 31, 8, 3, 42, 3, 42, 3, 70],
//                        ['data10', 13, 75, 73, 56, 9, 31, 8, 3, 42, 3, 42, 3, 75],
//                        
//                        ['data11', 13, 80, 78, 60, 9, 31, 8, 3, 42, 3, 42, 3, 80],
//                        ['data12', 13, 95, 93, 76, 9, 31, 8, 3, 42, 3, 42, 3, 95],
//                        ['data13', 13, 45, 43, 0, 9, 31, 8, 3, 42, 3, 42, 3, 25],
//                        ['data14', 13, 40, 38, 21, 9, 31, 8, 3, 42, 3, 42, 3, 40],
//                        ['data15', 13, 33, 35, 15, 9, 31, 8, 3, 42, 3, 42, 3, 33],
//                        ['data16', 13, 75, 73, 56, 9, 31, 8, 3, 42, 3, 42, 3, 75],
//                        ['data17', 13, 70, 68, 50, 9, 31, 8, 3, 42, 3, 42, 3, 70],
//                        ['data18', 13, 70, 68, 51, 9, 31, 8, 3, 42, 3, 42, 3, 51],
//                        ['data19', 13, 60, 58, 40, 9, 31, 8, 3, 42, 3, 42, 3, 60],
//                        ['data20', 13, 80, 58, 61, 9, 31, 8, 3, 42, 3, 42, 3, 80],
//                    ],
//                    type: 'area-spline', // default type of chart
//                    groups: [
//                        [ 'data1', 'data2', 'data3', 'data4', 'data5', 'data6','data7', 'data8', 'data9', 'data10', 'data11', 'data12','data13', 'data14', 'data15', 'data16', 'data17', 'data18', 'data19', 'data20']
//                    ],
//                    colors: {
//                        'data1': Aero.colors["gray"],
//                        'data2': Aero.colors["red"],
//                        'data3': Aero.colors["teal"],
//                        'data4': Aero.colors["lime"],
//                        'data5': Aero.colors["red"],
//                        'data6': Aero.colors["green"],    
//                        
//                        'data7': Aero.colors["beige"],
//                        'data8': Aero.colors["apricot"],
//                        'data9': Aero.colors["magenta"],
//                        'data10': Aero.colors["purple"],
//                        'data11': Aero.colors["blue"],
//                        'data12': Aero.colors["cyan"],          
//                        
//                        'data13': Aero.colors["orange"],
//                        'data14': Aero.colors["black"],
//                        'data15': Aero.colors["navy"],
//                        'data16': Aero.colors["olive"],
//                        'data17': Aero.colors["brown"],
//                        'data18': Aero.colors["maroon"],       
//                        
//                        'data19': Aero.colors["pink"],
//                        'data20': Aero.colors["yellow"],
//                    },
//                    names: {
//                        // name of each serie
//                        'data1': 'BDM 1',
//                        'data2': 'BDM 2',
//                        'data3': 'BDM 3',
//                        'data4': 'BDM 4',
//                        'data5': 'BDM 5',
//                        'data6': 'BDM 6',
//                        'data7': 'BDM 7',
//                        'data8': 'BDM 8',
//                        'data9': 'BDM 9',
//                        'data10': 'BDM 10',
//                        'data11': 'BDM 11',
//                        'data12': 'BDM 12',
//                        'data13': 'BDM 13',
//                        'data14': 'BDM 14',
//                        'data15': 'BDM 15',
//                        'data16': 'BDM 16',
//                        'data17': 'BDM 17',
//                        'data18': 'BDM 18',
//                        'data19': 'BDM 19',
//                        'data20': 'BDM 20',
//                    }
//                },
//                axis: {
//                    x: {
//                        type: 'category',
//                        categories: ['Mar-19', 'Apr-19', 'May-19', 'Jun-19', 'July-19', 'Aug-19', 'Sept-19', 'Oct-19', 'Nov-19', 'Dec-19', 'Jan-20', 'Feb-20', 'Mar-20', 'Apr-20']
//
//                    },
//                    
//                },
//                legend: {
//                    padding: 10,
//                    show: true, //hide legend
//                },
//                padding: {
//                    bottom: 10,
//                    top: 0
//                },
//
//            });
// 
//        }); 
//        
        
                
        
//        
//        
//                $(document).ready(function(){
//            var chart = c3.generate({
//                bindto: '#product-yearly', // id of chart wrapper
//                data: {
//                    
//                    columns: [
//                        // each columns data
//                        ['data1', 21, 6, 5, 2, 19, 17, 23, 12, 25, 37, 25, 37, 6],
//                        ['data2', 7, 5, 4, 3, 9, 16, 15, 23, 14, 55, 14, 55, 5],
//                        ['data3', 13, 0, 3, 4, 9, 31, 8, 27, 42, 18, 42, 18, 0],
//                        ['data4', 6, 4, 4, 5, 9, 3, 8, 3, 42, 3, 42, 3, 4],
//                        ['data5', 13, 3, 3, 3, 9, 3, 8, 27, 3, 3, 3, 3, 3],
//                        ['data6', 13, 2, 2, 9, 9, 31, 8, 3, 42, 3, 42, 3, 2],
//                        ['data7', 13, 2, 0, 2, 9, 31, 8, 3, 42, 3, 42, 3, 2],
//                        ['data8', 13, 10, 9, 12, 9, 31, 8, 3, 42, 3, 42, 3, 10],
//    
//                    ],
//                    type: 'area-spline', // default type of chart
//                    groups: [
//                         [ 'data1', 'data2', 'data3', 'data4', 'data5', 'data6','data7', 'data8']
//                    ],
//                    colors: {
//                        'data1': Aero.colors["gray"],
//                        'data2': Aero.colors["red"],
//                        'data3': Aero.colors["teal"],
//                        'data4': Aero.colors["lime"],
//                        'data5': Aero.colors["red"],
//                        'data6': Aero.colors["green"],    
//                        
//                        'data7': Aero.colors["beige"],
//                        'data8': Aero.colors["apricot"],
//
//                    },
//                    names: {
//                        // name of each serie
//                        'data1': 'Product 1',
//                        'data2': 'Product 2',
//                        'data3': 'Product 3',
//                        'data4': 'Product 4',
//                        'data5': 'Product 5',
//                        'data6': 'Product 6',
//                        'data7': 'Product 7',
//                        'data8': 'Product 8',
//
//                    }
//                },
//                axis: {
//                    x: {
//                        type: 'category',
//                        categories: ['Mar-19', 'Apr-19', 'May-19', 'Jun-19', 'July-19', 'Aug-19', 'Sept-19', 'Oct-19', 'Nov-19', 'Dec-19', 'Jan-20', 'Feb-20', 'Mar-20', 'Apr-20']
//
//                    },
//                    
//                },
//                legend: {
//                    padding: 10,
//                    show: true, //hide legend
//                },
//                padding: {
//                    bottom: 10,
//                    top: 0
//                },
//
//            });
// 
//        }); 
//                
        
        
//                $(document).ready(function(){
//            var chart = c3.generate({
//                bindto: '#branch-yearly', // id of chart wrapper
//                data: {
//                    
//                    columns: [
//                        // each columns data
//                        ['data1', 21, 4, 2, 3, 19, 17, 23, 12, 25, 37, 25, 37, 4],
//                        ['data2', 7, 3, 2, 3, 9, 16, 15, 23, 14, 55, 14, 55, 3],
//                        ['data3', 13, 2, 2, 1, 9, 31, 8, 27, 42, 18, 42, 18, 2],
//                        ['data4', 6, 3, 2, 2, 9, 3, 8, 3, 42, 3, 42, 3, 3],
//                        ['data5', 13, 1, 4, 2, 9, 3, 8, 27, 3, 3, 3, 3, 1],
//                    ],
//                    type: 'area-spline', // default type of chart
//                    groups: [
//                        [ 'data1', 'data2', 'data3', 'data4', 'data5']
//                    ],
//                    colors: {
//                        'data1': Aero.colors["gray"],
//                        'data2': Aero.colors["teal"],
//                        'data3': Aero.colors["lime"],
//                        'data4': Aero.colors["red"],
//                        'data5': Aero.colors["green"],
//
//                    },
//                    names: {
//                        // name of each serie
//                        'data1': 'Chennai',
//                        'data2': 'Mumbai',
//                        'data3': 'Delhi',
//                        'data4': 'Cochin',
//                        'data5': 'Madurai',
//
//                    }
//                },
//                axis: {
//                    x: {
//                        type: 'category',
//                        categories: ['Mar-19', 'Apr-19', 'May-19', 'Jun-19', 'July-19', 'Aug-19', 'Sept-19', 'Oct-19', 'Nov-19', 'Dec-19', 'Jan-20', 'Feb-20', 'Mar-20', 'Apr-20']
//
//                    },
//                    
//                },
//                legend: {
//                    padding: 10,
//                    show: true, //hide legend
//                },
//                padding: {
//                    bottom: 10,
//                    top: 0
//                },
//
//            });
// 
//        }); 
//        
        
        
        
        
        $(document).ready(function(){
            var chart = c3.generate({
                bindto: '#chart-pie', // id of chart wrapper
                data: {
                    columns: [
                        // each columns data
                        ['data1', 55],
                        ['data2', 25],
                        ['data3', 20],
                    ],
                    type: 'pie', // default type of chart
                    colors: {
                        'data1': Aero.colors["lime"],
                        'data2': Aero.colors["teal"],
                        'data3': Aero.colors["gray"],
                    },
                    names: {
                        // name of each serie
                        'data1': 'Branch 1',
                        'data2': 'Branch 2',
                        'data3': 'Branch 3',
                    }
                },
                axis: {
                },
                legend: {
                    show: true, //hide legend
                },
                padding: {
                    bottom: 0,
                    top: 0
                },
            });
        });
        $(document).ready(function(){
            var chart = c3.generate({
                bindto: '#chart-area-step', // id of chart wrapper
                data: {
                    columns: [
                        // each columns data
                        ['data1', 11, 8, 15, 7, 11, 13],
                        ['data2', 7, 7, 5, 7, 9, 12],
                        ['data3', 1, 4, 7, 10, 1, 4],
                        ['data4', 2, 5, 8, 11, 2, 5],
                        ['data5', 3, 6, 9, 12, 3, 6]
                    ],
                    type: 'area-step', // default type of chart
                    colors: {
                        'data1': Aero.colors["pink"],
                        'data2': Aero.colors["orange"],
                        'data3': Aero.colors["cyan"],
                        'data4': Aero.colors["red"],
                        'data5': Aero.colors["yellow"]
                    },
                    names: {
                        // name of each serie
                        'data1': 'Product 1',
                        'data2': 'Product 2',
                        'data3': 'Product 3',
                        'data4': 'Product 4',
                        'data5': 'Product 5'
                    }
                },
                axis: {
                    x: {
                        type: 'category',
                        // name of each category
                        categories: ['1', '2', '3', '4', '5', '6']
                    },
                },
                legend: {
                    show: true, //hide legend
                },
                padding: {
                    bottom: 0,
                    top: 0
                },
            });
        });
}, 500);
}
setTimeout(function(){
    "use strict";
    var mapData = {
        "US": 298,
        "SA": 200,
        "AU": 760,
        "IN": 2000000,
        "GB": 120,        
    };	
    if( $('#world-map-markers').length > 0 ){
        $('#world-map-markers').vectorMap({
            map: 'world_mill_en',
            backgroundColor: 'transparent',
            borderColor: '#fff',
            borderOpacity: 0.25,
            borderWidth: 0,
            color: '#e6e6e6',
            regionStyle : {
                initial : {
                fill : '#f4f4f4'
                }
            },

            markerStyle: {
            initial: {
                        r: 5,
                        'fill': '#fff',
                        'fill-opacity':1,
                        'stroke': '#000',
                        'stroke-width' : 1,
                        'stroke-opacity': 0.4
                    },
                },
        
            markers : [{
                latLng : [21.00, 78.00],
                name : 'INDIA : 350'
            
            },
            {
                latLng : [-33.00, 151.00],
                name : 'Australia : 250'
                
            },
            {
                latLng : [36.77, -119.41],
                name : 'USA : 250'
            
            },
            {
                latLng : [55.37, -3.41],
                name : 'UK   : 250'
            
            },
            {
                latLng : [25.20, 55.27],
                name : 'UAE : 250'
            
            }],

            series: {
                regions: [{
                    values: {
                        "US": '#49c5b6',
                        "SA": '#667add',
                        "AU": '#50d38a',
                        "IN": '#60bafd',
                        "GB": '#ff758e',
                    },
                    attribute: 'fill'
                }]
            },
            hoverOpacity: null,
            normalizeFunction: 'linear',
            zoomOnScroll: false,
            scaleColors: ['#000000', '#000000'],
            selectedColor: '#000000',
            selectedRegions: [],
            enableZoom: false,
            hoverColor: '#fff',
        });
    }
}, 800);