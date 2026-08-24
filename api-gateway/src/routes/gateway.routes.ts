import { Router } from 'express';
import controller from '#controllers/gateway.controller';

const router = Router();

router.use('/learning', controller.forward('learning'));
router.use('/practice', controller.forward('practice'));
router.use('/ai', controller.forward('ai'));
router.use('/identity', controller.forward('identity'));

export default router;
