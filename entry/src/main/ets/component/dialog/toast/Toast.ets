import promptAction from '@ohos.promptAction';

export function showToast(message: string) {
  promptAction.showToast({
    message: message,
    duration: 2000,
    bottom: 50
  });
}