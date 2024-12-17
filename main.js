import { app, BrowserWindow } from "electron";

console.log(app);

app.whenReady().then(() => {
  createWindow();
});

const createWindow = () => {
  const win = new BrowserWindow({
    width: 800,
    height: 600,
  });

  win.loadFile("app/index.html");
};
