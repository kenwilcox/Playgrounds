// Playground - noun: a place where people can play

import UIKit

// Trying to convert extents to CLLocations

/*
extent = df.extent
xmin = extent.XMin
xmax = extent.XMax
ymin = extent.YMin
ymax = extent.YMax

x = xmax - ((xmax - xmin)/2)
y = ymax - ((ymax - ymin)/2)
return x,y

"width": 400,
"height": 400,
"extent": {
"xmin": 2240621.0220194845,
"ymin": 581868.31817437825,
"xmax": 2478660.6215481004,
"ymax": 819907.91770299408,
"spatialReference": {
"wkid": 102670,
"latestWkid": 2243
}
},
"scale": 685554.0466424136

spatialReferences_ = {
'4326': WGS84,
'4269': NAD83,
'102113': WEB_MERCATOR,
'102100': WEB_MERCATOR_AUX

function fromEnvelopeToLatLngBounds_(extent) {
var sr = spatialReferences_[extent.spatialReference.wkid || extent.spatialReference.wkt];
sr = sr || WGS84;
var sw = sr.inverse([extent.xmin, extent.ymin]);
var ne = sr.inverse([extent.xmax, extent.ymax]);
return new G.LatLngBounds(new G.LatLng(sw[1], sw[0]), new G.LatLng(ne[1], ne[0]));
}

this.a_ = 6378137
this.lamda0_ = 0
RAD_DEG = 0.017453292519943295
phi = 0.7567422486271896
E = -13039876.757108327
lamda = -2.044464826815154
coords = [-13039876.757108327, 5366643.803001799]

SphereMercator.prototype.inverse = function(coords) {
var E = coords[0];
var N = coords[1];
var phi = Math.PI / 2 - 2 * Math.atan(Math.exp(-N / this.a_));
var lamda = E / this.a_ + this.lamda0_;
return [lamda / RAD_DEG, phi / RAD_DEG];
};

sw = [-117.1392059394531, 43.358137025577584]
ne = [-116.17790222851562, 43.85532635264545]
*/

let xmin = 2240621.0220194845
let ymin = 581868.31817437825
let xmax = 2478660.6215481004
let ymax = 819907.91770299408

let x = xmax - ((xmax - xmin)/2)
let y = ymax - ((ymax - ymin)/2)