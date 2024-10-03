import { Router } from "express";  
import CommentController from "../controllers/CommentController";

const CommentRouter = Router()

CommentRouter.get("/comments", CommentController.listComments)
CommentRouter.post("/comments/create", CommentController.createComment)
CommentRouter.put("/comments/update/:id", CommentController.editComment)
CommentRouter.delete("/comments/delete/:id", CommentController.deleteComment)

export default CommentRouter