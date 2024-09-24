// 自定义样式
export class CustomStyleParms {
  bg: ResourceColor;
  border: ResourceColor;
  fontColor: ResourceColor;

  constructor(bg: ResourceColor, border: ResourceColor, fontColor: ResourceColor) {
    this.bg = bg;
    this.border = border;
    this.fontColor = fontColor;
  }
}
