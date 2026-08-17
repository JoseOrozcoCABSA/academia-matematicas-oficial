import multer from 'multer';

const storage = multer.diskStorage({
  destination: 'src/storage/temp',
  filename: (_request, file, callback) => {
    const safeName = file.originalname.replace(/[^a-zA-Z0-9._-]/g, '_');
    callback(null, `${Date.now()}-${safeName}`);
  },
});

export default multer({
  storage,
  limits: { fileSize: 25 * 1024 * 1024 },
});
