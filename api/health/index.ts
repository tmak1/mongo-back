import express from "express";

const router = express.Router();

router.get("/", async (_req: express.Request, res: express.Response) => {
  res.status(200).send({ health: "healthy!" });
});

export default router;
