/*
 * 👋 Hello! This is an ml5.js example made and shared with ❤️.
 * Learn more about the ml5.js project: https://ml5js.org/
 * ml5.js license and Code of Conduct: https://github.com/ml5js/ml5-next-gen/blob/main/LICENSE.md
 *
 * This example demonstrates face tracking on live video through ml5.faceMesh.
 */

let mouthOpen = 0;
let keyIdx = 0;
let faceMesh;
let video;
let faces = [];
let options = { maxFaces: 1, refineLandmarks: false, flipHorizontal: false };

function calcMouseOpen(face) {
  let upper = face.keypoints[13];
  let lower = face.keypoints[14];
  let dist = dist(upper.x, uppper.y, upper.z, lower.x, lower.y, lower.z);
  return distance;
}

function calcWidth(face) {
  let left = face.keypoints[21];
  let right = face.keypoints[25];
  let distance = dist(left.x, left.y, left.z, right.x, right.y, right.z);
  return distance;
}

function keyPressed() {
  if (keyCode === RIGHT_ARROW) {
    keyIdx++;
  } else if (keyCode === LEFT_ARROW) {
    keyIdx--;
  }

  if (keyIdx < 0) {
    keyIdx = 0;
  }

  console.log('idx', keyIdx);
}

function preload() {
  // Load the faceMesh model
  faceMesh = ml5.faceMesh(options);
}

function setup() {
  createCanvas(640, 480);
  // Create the webcam video and hide it
  video = createCapture(VIDEO);
  video.size(640, 480);
  video.hide();
  // Start detecting faces from the webcam video
  faceMesh.detectStart(video, gotFaces);
}

function draw() {
  // Draw the webcam video
  image(video, 0, 0, width, height);

  // Draw all the tracked face points
  for (let i = 0; i < faces.length; i++) {
    let face = faces[i];
    for (let j = 0; j < face.keypoints.length; j++) {
      let keypoint = face.keypoints[j];
      if (keyIdx === j) {
        fill(255, 0, 0);
      } else {
        fill(0, 255, 0);
      }
      noStroke();
      circle(keypoint.x, keypoint.y, 5);
    }
    let faceWidth = calcWidth(face);
    console.log('거리가 준 값', faceWidth);
    let mouthDist = calcMouseOpen(face);
    console.log(mouthDist);
    let normalMouth = mouthDist;
    console.log('정규화된 입', faceWidth);
    let fweight = map(mouthDist, 0, 100, 100, 900);
    document.documentElement.style.setProperty('-fweight', fweight);
  }
}

// Callback function for when faceMesh outputs data
function gotFaces(results) {
  // Save the output to the faces variable
  faces = results;
}
