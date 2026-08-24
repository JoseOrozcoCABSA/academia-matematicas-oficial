import { Router } from 'express';
import controller from '#controllers/domain.controller';
import { uploadMedia } from '#controllers/media.controller';
import uploadMiddleware from '#middlewares/upload.middleware';

const router = Router();
router.get('/catalog', controller.catalog);
router.get('/lessons', controller.lessons);
router.get('/practice-topics', controller.practiceTopics);
router.get('/lessons/:slug', controller.lesson);
router.post('/media/upload', uploadMiddleware, uploadMedia);

export default router;
