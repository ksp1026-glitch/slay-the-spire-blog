<!-- 杀戮尖塔主题自定义 head -->

<!-- 引入像素风格字体 -->
<link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&display=swap" rel="stylesheet">

<!-- 自定义样式 -->
<style>
/* 杀戮尖塔能量球动画 */
.sts-energy-orb {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  background: radial-gradient(circle at 30% 30%, #7dd3fc, #0ea5e9, #0369a1);
  box-shadow: 
    0 0 20px rgba(14, 165, 233, 0.6),
    inset -5px -5px 10px rgba(0, 0, 0, 0.3);
  position: fixed;
  z-index: 9999;
  animation: energyPulse 2s ease-in-out infinite;
}

@keyframes energyPulse {
  0%, 100% {
    transform: scale(1);
    box-shadow: 0 0 20px rgba(14, 165, 233, 0.6);
  }
  50% {
    transform: scale(1.1);
    box-shadow: 0 0 30px rgba(14, 165, 233, 0.8), 0 0 50px rgba(14, 165, 233, 0.4);
  }
}

/* 红色能量球 */
.sts-energy-orb-red {
  background: radial-gradient(circle at 30% 30%, #fca5a5, #dc2626, #991b1b);
  box-shadow: 
    0 0 20px rgba(220, 38, 38, 0.6),
    inset -5px -5px 10px rgba(0, 0, 0, 0.3);
}

.sts-energy-orb-red {
  animation: energyPulseRed 2s ease-in-out infinite;
}

@keyframes energyPulseRed {
  0%, 100% {
    transform: scale(1);
    box-shadow: 0 0 20px rgba(220, 38, 38, 0.6);
  }
  50% {
    transform: scale(1.1);
    box-shadow: 0 0 30px rgba(220, 38, 38, 0.8), 0 0 50px rgba(220, 38, 38, 0.4);
  }
}

/* 绿色能量球 */
.sts-energy-orb-green {
  background: radial-gradient(circle at 30% 30%, #86efac, #22c55e, #15803d);
  box-shadow: 
    0 0 20px rgba(34, 197, 94, 0.6),
    inset -5px -5px 10px rgba(0, 0, 0, 0.3);
  animation: energyPulseGreen 2s ease-in-out infinite;
}

@keyframes energyPulseGreen {
  0%, 100% {
    transform: scale(1);
    box-shadow: 0 0 20px rgba(34, 197, 94, 0.6);
  }
  50% {
    transform: scale(1.1);
    box-shadow: 0 0 30px rgba(34, 197, 94, 0.8), 0 0 50px rgba(34, 197, 94, 0.4);
  }
}

/* 能量球位置 */
.orb-1 { top: 100px; right: 30px; animation-delay: 0s; }
.orb-2 { top: 160px; right: 30px; animation-delay: 0.3s; }
.orb-3 { top: 220px; right: 30px; animation-delay: 0.6s; }

/* 漂浮符文动画 */
.floating-rune {
  position: fixed;
  font-size: 24px;
  color: rgba(201, 162, 39, 0.3);
  pointer-events: none;
  z-index: 1;
  animation: floatRune 8s ease-in-out infinite;
}

@keyframes floatRune {
  0%, 100% {
    transform: translateY(0) rotate(0deg);
    opacity: 0.3;
  }
  50% {
    transform: translateY(-20px) rotate(10deg);
    opacity: 0.6;
  }
}

.rune-1 { top: 20%; left: 5%; animation-delay: 0s; }
.rune-2 { top: 40%; right: 8%; animation-delay: 2s; }
.rune-3 { top: 60%; left: 10%; animation-delay: 4s; }
.rune-4 { top: 80%; right: 5%; animation-delay: 6s; }

/* 卡牌翻转效果 */
.card-flip {
  perspective: 1000px;
}

.card-flip-inner {
  position: relative;
  width: 100%;
  height: 100%;
  transition: transform 0.6s;
  transform-style: preserve-3d;
}

.card-flip:hover .card-flip-inner {
  transform: rotateY(10deg);
}

/* 血条样式 */
.sts-health-bar {
  position: fixed;
  bottom: 20px;
  left: 20px;
  width: 200px;
  height: 24px;
  background: #1a1a2e;
  border: 2px solid #8b7355;
  border-radius: 12px;
  overflow: hidden;
  z-index: 9999;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
}

.sts-health-fill {
  height: 100%;
  background: linear-gradient(90deg, #dc2626 0%, #ef4444 50%, #dc2626 100%);
  width: 80%;
  transition: width 0.5s ease;
  position: relative;
}

.sts-health-fill::after {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 40%;
  background: linear-gradient(180deg, rgba(255,255,255,0.3) 0%, transparent 100%);
}

.sts-health-text {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  color: #fff;
  font-size: 12px;
  font-weight: bold;
  text-shadow: 0 1px 2px rgba(0,0,0,0.8);
}

/* 金币显示 */
.sts-gold-display {
  position: fixed;
  bottom: 20px;
  right: 20px;
  display: flex;
  align-items: center;
  gap: 8px;
  background: rgba(26, 26, 46, 0.9);
  border: 2px solid #c9a227;
  border-radius: 20px;
  padding: 8px 16px;
  z-index: 9999;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
}

.sts-gold-icon {
  width: 24px;
  height: 24px;
  background: radial-gradient(circle at 30% 30%, #f4d03f, #c9a227);
  border-radius: 50%;
  box-shadow: 0 0 10px rgba(201, 162, 39, 0.6);
  animation: goldShine 2s ease-in-out infinite;
}

@keyframes goldShine {
  0%, 100% { box-shadow: 0 0 10px rgba(201, 162, 39, 0.6); }
  50% { box-shadow: 0 0 20px rgba(201, 162, 39, 0.9), 0 0 30px rgba(201, 162, 39, 0.4); }
}

.sts-gold-text {
  color: #c9a227;
  font-weight: bold;
  font-size: 16px;
}

/* 楼层显示 */
.sts-floor {
  position: fixed;
  top: 100px;
  left: 20px;
  background: rgba(26, 26, 46, 0.9);
  border: 2px solid #4a3b69;
  border-radius: 8px;
  padding: 10px 20px;
  z-index: 9999;
  box-shadow: 0 4px 15px rgba(0, 0, 0, 0.5);
}

.sts-floor-text {
  color: #9ca3af;
  font-size: 12px;
}

.sts-floor-number {
  color: #c9a227;
  font-size: 24px;
  font-weight: bold;
  text-align: center;
}
</style>
