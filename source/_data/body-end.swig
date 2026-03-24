<!-- 杀戮尖塔主题动画元素 -->

<!-- 能量球 -->
<div class="sts-energy-orb orb-1"></div>
<div class="sts-energy-orb-green orb-2"></div>
<div class="sts-energy-orb-red orb-3"></div>

<!-- 漂浮符文 -->
<div class="floating-rune rune-1">ᚠ</div>
<div class="floating-rune rune-2">ᚢ</div>
<div class="floating-rune rune-3">ᚦ</div>
<div class="floating-rune rune-4">ᚨ</div>

<!-- 血条 -->
<div class="sts-health-bar">
  <div class="sts-health-fill"></div>
  <div class="sts-health-text">80/100</div>
</div>

<!-- 金币 -->
<div class="sts-gold-display">
  <div class="sts-gold-icon"></div>
  <div class="sts-gold-text">999</div>
</div>

<!-- 楼层 -->
<div class="sts-floor">
  <div class="sts-floor-text">楼层</div>
  <div class="sts-floor-number">42</div>
</div>

<!-- 鼠标跟随效果 -->
<script>
(function() {
  // 创建粒子效果
  function createParticle(x, y) {
    const particle = document.createElement('div');
    particle.style.cssText = `
      position: fixed;
      width: 6px;
      height: 6px;
      background: radial-gradient(circle, #c9a227 0%, transparent 70%);
      border-radius: 50%;
      pointer-events: none;
      z-index: 9998;
      left: ${x}px;
      top: ${y}px;
      animation: particleFade 1s ease-out forwards;
    `;
    document.body.appendChild(particle);
    
    setTimeout(() => particle.remove(), 1000);
  }
  
  // 添加粒子动画
  const style = document.createElement('style');
  style.textContent = `
    @keyframes particleFade {
      0% {
        transform: translate(0, 0) scale(1);
        opacity: 1;
      }
      100% {
        transform: translate(${Math.random() * 40 - 20}px, ${Math.random() * 40 - 20}px) scale(0);
        opacity: 0;
      }
    }
  `;
  document.head.appendChild(style);
  
  // 鼠标移动事件
  let lastTime = 0;
  document.addEventListener('mousemove', function(e) {
    const now = Date.now();
    if (now - lastTime > 50) { // 限制粒子生成频率
      createParticle(e.clientX, e.clientY);
      lastTime = now;
    }
  });
  
  // 点击爆炸效果
  document.addEventListener('click', function(e) {
    for (let i = 0; i < 8; i++) {
      setTimeout(() => {
        createParticle(
          e.clientX + Math.random() * 30 - 15,
          e.clientY + Math.random() * 30 - 15
        );
      }, i * 30);
    }
  });
  
  // 卡牌悬停音效提示（视觉反馈）
  document.querySelectorAll('.post-block').forEach(card => {
    card.addEventListener('mouseenter', function() {
      this.style.transform = 'translateY(-5px) scale(1.01)';
    });
    card.addEventListener('mouseleave', function() {
      this.style.transform = 'translateY(0) scale(1)';
    });
  });
  
  // 随机闪烁效果
  setInterval(() => {
    const orbs = document.querySelectorAll('.sts-energy-orb, .sts-energy-orb-green, .sts-energy-orb-red');
    const randomOrb = orbs[Math.floor(Math.random() * orbs.length)];
    if (randomOrb) {
      randomOrb.style.filter = 'brightness(1.5)';
      setTimeout(() => {
        randomOrb.style.filter = 'brightness(1)';
      }, 200);
    }
  }, 2000);
})();
</script>
