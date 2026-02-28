rofi -show drun -theme-str '
  window { 
    fullscreen: true; 
    padding: 50px; 
    background-color: #CC1a1b26; 
  }
  listview { 
    columns: 5; 
    lines: 3; 
    spacing: 30px; 
    fixed-columns: true; 
  }
  element { 
    orientation: vertical;
    padding: 20px;
  }
  element-icon {
    size: 100px;
    cursor: pointer;
  }
  element-text {
    horizontal-align: 0.5;
    cursor: pointer;
  }
'

