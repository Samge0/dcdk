export enum PracticeStatus {
  Running, //答题状态
  Paused, //暂停状态
  Stopped //停止状态
}

// 基础的样式
export class CustomStyleBaseParms {
  bg: ResourceColor;
  fontColor: ResourceColor;

  constructor(bg: ResourceColor, fontColor: ResourceColor) {
    this.bg = bg;
    this.fontColor = fontColor;
  }
}

// 包含边框的样式
export class CustomBorderStyleParms extends CustomStyleBaseParms {
  border: ResourceColor;

  constructor(bg: ResourceColor, fontColor: ResourceColor, border: ResourceColor) {
    super(bg, fontColor)
    this.border = border;
  }
}
