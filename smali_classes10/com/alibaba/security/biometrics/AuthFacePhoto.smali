.class public Lcom/alibaba/security/biometrics/AuthFacePhoto;
.super Lhyp;


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:F

.field public j:J

.field public k:I

.field public l:I

.field protected m:I

.field protected n:J

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:I

.field protected t:Z

.field protected u:Lcom/alibaba/security/biometrics/face/FaceDetectResult;

.field protected v:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    const v2, 0x3e4ccccd    # 0.2f

    .line 0
    invoke-direct {p0}, Lhyp;-><init>()V

    iput v2, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->a:F

    iput v2, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->b:F

    iput v3, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->c:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->d:F

    const/16 v0, 0x28

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->e:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->f:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->g:I

    const/16 v0, 0x37

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->h:I

    sget v0, Lhys;->m:F

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->i:F

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->j:J

    iput v6, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->k:I

    iput v5, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->l:I

    iput v4, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->m:I

    iput v3, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->o:F

    iput v3, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->p:F

    iput v3, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->q:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->r:F

    const/16 v0, 0x100

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->s:I

    iput-object p1, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->v:Landroid/content/Context;

    iput v2, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->a:F

    iput v2, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->b:F

    iput v2, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->c:F

    iput v2, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->d:F

    const/16 v0, 0x28

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->e:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->f:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->g:I

    const/16 v0, 0x37

    iput v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->h:I

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->j:J

    iput v6, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->k:I

    iput v5, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->l:I

    .line 1000
    iput v4, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->m:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->n:J

    new-instance v0, Lcom/alibaba/security/biometrics/face/FaceDetectResult;

    invoke-direct {v0}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;-><init>()V

    iput-object v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->u:Lcom/alibaba/security/biometrics/face/FaceDetectResult;

    iget-object v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->u:Lcom/alibaba/security/biometrics/face/FaceDetectResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->setFaceQuality(F)V

    iget-object v0, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->u:Lcom/alibaba/security/biometrics/face/FaceDetectResult;

    invoke-virtual {v0, v4}, Lcom/alibaba/security/biometrics/face/FaceDetectResult;->setFacesDetected(I)V

    iput-boolean v4, p0, Lcom/alibaba/security/biometrics/AuthFacePhoto;->t:Z

    .line 0
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/security/biometrics/face/FaceDetectResult;Lhzi;)V
    .locals 0

    return-void
.end method
