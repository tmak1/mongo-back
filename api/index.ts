import express from "express";
import healthRouter from "./health";
import questionRouter from "./questions";
import highscoreRouter from "./highscore";

const router = express.Router();
router.use("/health", healthRouter);
router.use("/questions", questionRouter);
router.use("/highscore", highscoreRouter);

export default router;
