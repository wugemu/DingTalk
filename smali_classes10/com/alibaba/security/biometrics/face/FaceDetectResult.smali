.class public Lcom/alibaba/security/biometrics/face/FaceDetectResult;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ERROR_FACE_DETECT_BACK_LIGHT:I = 0x6d

.field public static final ERROR_FACE_DETECT_FACE_MOVE:I = 0x70

.field public static final ERROR_FACE_DETECT_FACE_TOO_BRIGHT:I = 0x6c

.field public static final ERROR_FACE_DETECT_MAX_NUM:I = 0x14

.field public static final ERROR_FACE_DETECT_MOTION:I = 0x69

.field public static final ERROR_FACE_DETECT_NOT_CENTER:I = 0x67

.field public static final ERROR_FACE_DETECT_NO_ERROR:I = 0x0

.field public static final ERROR_FACE_DETECT_PHONE_MOTION:I = 0x6f

.field public static final ERROR_FACE_DETECT_PHONE_SLOPY:I = 0x6e

.field public static final ERROR_FACE_DETECT_TOO_BLUR:I = 0x68

.field public static final ERROR_FACE_DETECT_TOO_BRIGHT:I = 0x6b

.field public static final ERROR_FACE_DETECT_TOO_CLOSE:I = 0x65

.field public static final ERROR_FACE_DETECT_TOO_DARK:I = 0x6a

.field public static final ERROR_FACE_DETECT_TOO_FAR:I = 0x66

.field public static final KEY_FACEDETECT_RESULT:Ljava/lang/String; = "KEY_FACEDETECT_RESULT"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field protected bestImageData:[B

.field protected brightness:F

.field protected errors:[I

.field protected facePosition:Landroid/graphics/RectF;

.field protected faceQuality:F

.field protected faceSize:Landroid/graphics/Rect;

.field protected facesDetected:I

.field protected gaussianBlur:F

.field protected imageHeight:I

.field protected imageWidth:I

.field protected motionBlur:F

.field protected success:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->facesDetected:I

    iput v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->brightness:F

    iput v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->gaussianBlur:F

    iput v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->motionBlur:F

    iput v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->faceQuality:F

    iput-boolean v1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->success:Z

    return-void
.end method


# virtual methods
.method public facesDetected()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->facesDetected:I

    return v0
.end method

.method public getBestImageData()[B
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->bestImageData:[B

    return-object v0
.end method

.method public getBrightness()F
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->brightness:F

    return v0
.end method

.method public getErrors()[I
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->errors:[I

    return-object v0
.end method

.method public getFacePosition()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->facePosition:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getFaceQuality()F
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->faceQuality:F

    return v0
.end method

.method public getFaceSize()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->faceSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getFacesDetected()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->facesDetected:I

    return v0
.end method

.method public getGaussianBlur()F
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->gaussianBlur:F

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->imageWidth:I

    return v0
.end method

.method public getMotionBlur()F
    .locals 1

    iget v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->motionBlur:F

    return v0
.end method

.method public hasFace()Z
    .locals 1

    invoke-virtual {p0}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->facesDetected()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->success:Z

    return v0
.end method

.method public setBestImageData([B)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->bestImageData:[B

    return-void
.end method

.method public setBrightness(F)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->brightness:F

    return-void
.end method

.method public setErrors([I)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->errors:[I

    return-void
.end method

.method public setFacePosition(Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->facePosition:Landroid/graphics/RectF;

    return-void
.end method

.method public setFaceQuality(F)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->faceQuality:F

    return-void
.end method

.method public setFaceSize(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->faceSize:Landroid/graphics/Rect;

    return-void
.end method

.method public setFacesDetected(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->facesDetected:I

    return-void
.end method

.method public setGaussianBlur(F)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->gaussianBlur:F

    return-void
.end method

.method public setImageHeight(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->imageHeight:I

    return-void
.end method

.method public setImageWidth(I)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->imageWidth:I

    return-void
.end method

.method public setMotionBlur(F)V
    .locals 0

    iput p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->motionBlur:F

    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->success:Z

    return-void
.end method
