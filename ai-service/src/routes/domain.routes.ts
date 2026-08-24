import { Router } from 'express';
import controller from '#controllers/domain.controller';

const router = Router();
router.get('/models', controller.models);
router.get('/models/status', controller.modelStatus);
router.get('/prompts', controller.prompts);
router.post('/tutor', controller.tutor);
router.post('/generate-exercises', controller.generate);

export default router;
