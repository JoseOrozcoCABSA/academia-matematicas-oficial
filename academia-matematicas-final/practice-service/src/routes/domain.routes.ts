import { Router } from 'express';
import controller from '#controllers/domain.controller';

const router = Router();
router.get('/games/:slug', controller.game);
router.get('/exercises/:sectionId', controller.exercises);
router.post('/attempts', controller.attempt);
router.put('/progress', controller.progress);
router.get('/dashboard/:userId', controller.dashboard);

export default router;
