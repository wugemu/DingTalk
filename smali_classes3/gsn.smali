.class public final Lgsn;
.super Lgso;
.source "AlipayFaceDetector.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Z

.field f:Ljava/lang/Integer;

.field g:Ljava/lang/Float;

.field h:Landroid/graphics/RectF;

.field i:Ljava/lang/Float;

.field j:Ljava/lang/Float;

.field k:Ljava/lang/Float;

.field l:Ljava/lang/Float;

.field m:Ljava/lang/Float;

.field n:Ljava/lang/Float;

.field o:Ljava/lang/Float;

.field p:F

.field q:Z

.field r:J

.field private final t:Ljava/lang/String;

.field private u:Lcom/alipay/mobile/security/bio/face/api/APFDService;

.field private v:Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;


# direct methods
.method public constructor <init>(Lgso$a;)V
    .locals 4
    .param p1, "listener"    # Lgso$a;

    .prologue
    const/4 v3, 0x0

    const v2, 0x3ca3d70a    # 0.02f

    const/4 v1, -0x1

    .line 76
    invoke-direct {p0, p1}, Lgso;-><init>(Lgso$a;)V

    .line 31
    const-string/jumbo v0, "AlipayFaceDetector"

    iput-object v0, p0, Lgsn;->t:Ljava/lang/String;

    .line 45
    iput v1, p0, Lgsn;->a:I

    .line 46
    iput v1, p0, Lgsn;->b:I

    .line 47
    iput v1, p0, Lgsn;->c:I

    .line 48
    iput v1, p0, Lgsn;->d:I

    .line 49
    iput-boolean v3, p0, Lgsn;->e:Z

    .line 51
    const/16 v0, 0x5dc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgsn;->f:Ljava/lang/Integer;

    .line 56
    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lgsn;->j:Ljava/lang/Float;

    .line 57
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lgsn;->k:Ljava/lang/Float;

    .line 58
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lgsn;->l:Ljava/lang/Float;

    .line 59
    const v0, 0x3966afcd    # 2.2E-4f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lgsn;->m:Ljava/lang/Float;

    .line 60
    const v0, 0x3e23d70a    # 0.16f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lgsn;->n:Ljava/lang/Float;

    .line 61
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lgsn;->o:Ljava/lang/Float;

    .line 64
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lgsn;->p:F

    .line 70
    iput-boolean v3, p0, Lgsn;->q:Z

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgsn;->r:J

    .line 99
    new-instance v0, Lgsn$1;

    invoke-direct {v0, p0}, Lgsn$1;-><init>(Lgsn;)V

    iput-object v0, p0, Lgsn;->v:Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;

    .line 77
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgsn;->q:Z

    .line 291
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgsn;->r:J

    .line 292
    return-void
.end method

.method public final a(I)V
    .locals 2
    .param p1, "level"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 314
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lgsn;->f:Ljava/lang/Integer;

    .line 315
    const/4 v0, 0x0

    iput v0, p0, Lgsn;->p:F

    .line 316
    iput-object v1, p0, Lgsn;->j:Ljava/lang/Float;

    .line 317
    iput-object v1, p0, Lgsn;->k:Ljava/lang/Float;

    .line 318
    iput-object v1, p0, Lgsn;->l:Ljava/lang/Float;

    .line 319
    iput-object v1, p0, Lgsn;->m:Ljava/lang/Float;

    .line 320
    iput-object v1, p0, Lgsn;->n:Ljava/lang/Float;

    .line 322
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 280
    if-nez p1, :cond_0

    .line 281
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    const-string/jumbo v1, "context can\'t be null"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    new-instance v0, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/face/api/APFDServiceImpl;-><init>()V

    iput-object v0, p0, Lgsn;->u:Lcom/alipay/mobile/security/bio/face/api/APFDService;

    .line 284
    iget-object v0, p0, Lgsn;->u:Lcom/alipay/mobile/security/bio/face/api/APFDService;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/security/bio/face/api/APFDService;->initService(Landroid/content/Context;)I

    .line 285
    iget-object v0, p0, Lgsn;->u:Lcom/alipay/mobile/security/bio/face/api/APFDService;

    iget-object v1, p0, Lgsn;->v:Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/security/bio/face/api/APFDService;->setDelegate(Lcom/alipay/mobile/security/bio/face/api/APFDServiceDelegate;)V

    .line 286
    return-void
.end method

.method public final a(Landroid/graphics/RectF;)V
    .locals 0
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    .line 430
    iput-object p1, p0, Lgsn;->h:Landroid/graphics/RectF;

    .line 431
    return-void
.end method

.method public final a(Ljava/lang/Float;)V
    .locals 0
    .param p1, "minFaceSize"    # Ljava/lang/Float;

    .prologue
    .line 438
    iput-object p1, p0, Lgsn;->g:Ljava/lang/Float;

    .line 439
    return-void
.end method

.method public final a([BIIIIZ)V
    .locals 4
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "rotate"    # I
    .param p5, "format"    # I
    .param p6, "mirror"    # Z

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 81
    iget-boolean v0, p0, Lgsn;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lgsn;->u:Lcom/alipay/mobile/security/bio/face/api/APFDService;

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgsn;->q:Z

    .line 84
    iput p4, p0, Lgsn;->a:I

    .line 85
    iput p2, p0, Lgsn;->b:I

    .line 86
    iput p3, p0, Lgsn;->c:I

    .line 87
    iput p5, p0, Lgsn;->d:I

    .line 88
    iput-boolean p6, p0, Lgsn;->e:Z

    .line 90
    iget-wide v0, p0, Lgsn;->r:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lgsn;->r:J

    .line 94
    :cond_0
    iget-object v0, p0, Lgsn;->u:Lcom/alipay/mobile/security/bio/face/api/APFDService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/security/bio/face/api/APFDService;->detectFace([BIII)V

    .line 96
    :cond_1
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lgsn;->u:Lcom/alipay/mobile/security/bio/face/api/APFDService;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lgsn;->u:Lcom/alipay/mobile/security/bio/face/api/APFDService;

    invoke-interface {v0}, Lcom/alipay/mobile/security/bio/face/api/APFDService;->closeService()I

    .line 300
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/Float;)V
    .locals 0
    .param p1, "maxFaceSize"    # Ljava/lang/Float;

    .prologue
    .line 446
    iput-object p1, p0, Lgsn;->i:Ljava/lang/Float;

    .line 447
    return-void
.end method
