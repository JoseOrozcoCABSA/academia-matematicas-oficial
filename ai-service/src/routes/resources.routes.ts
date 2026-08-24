import { Router } from 'express';
import controller from '#controllers/resources.controller';

const router = Router();
router.get('/resources', controller.catalog);
router.get('/data/:resource/record', controller.findOne);
router.get('/data/:resource/:id', controller.findById);
router.get('/data/:resource', controller.list);
router.post('/data/:resource', controller.create);
router.patch('/data/:resource/:id', controller.updateById);
router.put('/data/:resource/:id', controller.updateById);
router.patch('/data/:resource', controller.update);
router.put('/data/:resource', controller.update);
router.delete('/data/:resource/:id', controller.removeById);
router.delete('/data/:resource', controller.remove);

export default router;
