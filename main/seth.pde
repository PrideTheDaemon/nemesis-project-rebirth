// represents the boss
class Seth extends Target implements IFoe {
  static final float SETH_STARTING_X = Parameters.WIDTH / 2;
  static final float SETH_STARTING_Y = 0;
  static final float SETH_ENDING_Y = Parameters.HEIGHT / 10;
  static final int SETH_RADIUS = 10;
  static final float SETH_SWIFTNESS = 0.25;
  static final String SETH_SPRITE = "../data/spritesethailes.png";
  static final color SETH_HITBOX_COLOR = #ffffff;
  static final int SETH_LIFES = 5;
  final static float SETH_SHOT_INTERVAL = Parameters.FRAMERATE * 1;
  
  Seth() {
    super(SETH_STARTING_X, SETH_STARTING_Y, SETH_RADIUS, loadImage(SETH_SPRITE), SETH_HITBOX_COLOR, 
      SETH_LIFES, SETH_SHOT_INTERVAL, SETH_SWIFTNESS);
  }
  
  void update() {
    this.lastShot++;
    
    // if seth hasn’t reached his place on the screen
    if(this.ypos <= Seth.SETH_ENDING_Y) {
      this.ypos = this.ypos + this.swiftness;
    }
  }  
}
