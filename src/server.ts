import express from "express";
import CommentRouter from "./routes/CommentRoutes";
import PostRouter from "./routes/PostRoutes";
import UserRouter from "./routes/UserRoutes";

const app = express(); 

app.use(express.json());
app.use("/api", UserRouter);
app.use("/api", CommentRouter);
app.use("/api", PostRouter);

app.listen(3000, function () {
    console.log("Servidor rodando na porta 3000");
  });