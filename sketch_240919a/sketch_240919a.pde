int x=0, y=0, oldx, oldy; 

 

// 초기화 함수

void setup() {
  size(500, 500);   // 창 크기 지정
}

 

// 무한 반복 함수

void draw() {  
  oldx = x;          // 원 예전 x 좌표 저장
  oldy = y;          // 원 예전 y 좌표 저장
  x = mouseX;    // 마우스 x 좌표 얻음 
  y = mouseY;    // 마우스 y 좌표 얻음

 

  // 마우스 포인터 좌표 범위 검사하여 벗어나면 창 내부 좌표로 설정
  if(x < 25) 
    x = 25;
  else if(x > 500-25)
    x = 500-25;
  if(y < 25) 
    y = 25;
  else if(y > 500-25)
    y = 500-25;   

 

  // 예전 좌표와 비교하여 다른 경우에만 그린다. 
  if(oldx != x || oldy != y) {    
    background(0);        // 배경 지우기
    ellipse(x, y, 50, 50); // 원 그리기
  }   
}

 