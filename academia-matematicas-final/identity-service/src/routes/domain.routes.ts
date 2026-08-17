import { Router } from 'express';
import controller from '#controllers/domain.controller';
import authMiddleware from '#middlewares/auth.middleware';

const router = Router();
router.post('/auth/login', controller.login);
router.post('/auth/register', controller.register);
router.get('/users', controller.users);
router.patch('/users/:id/password', authMiddleware, controller.resetPassword);

export default router;
