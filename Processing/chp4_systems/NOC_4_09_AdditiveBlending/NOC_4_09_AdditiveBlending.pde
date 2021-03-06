// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

// Smoke Particle System

// A basic smoke effect using a particle system
// Each particle is rendered as an alpha masked image

ParticleSystem ps;

PImage img;

void setup() {
  size(640, 360, P2D);

  // Create an alpha masked image to be applied as the particle's texture
  img = loadImage("texture.png");

  ps = new ParticleSystem(0, new PVector(width/2, 50));
  }

void draw() {
  
  blendMode(ADD);
  
  background(0);

  ps.run();
  for (int i = 0; i < 10; i++) {
    ps.addParticle();
  }
}

