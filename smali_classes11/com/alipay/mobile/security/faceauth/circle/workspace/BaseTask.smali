.class public Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;
.super Ljava/lang/Object;
.source "BaseTask.java"

# interfaces
.implements Lcom/alipay/mobile/security/bio/task/SubTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$RecordExtContext;
    }
.end annotation


# instance fields
.field protected A:Ljava/lang/String;

.field protected B:I

.field protected C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

.field protected D:Landroid/widget/ImageView;

.field protected E:Landroid/widget/TextView;

.field protected b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

.field protected c:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

.field protected d:Landroid/os/Handler;

.field protected e:Lcom/alipay/mobile/security/faceauth/FaceService;

.field protected f:Landroid/content/Context;

.field protected g:I

.field protected h:I

.field protected i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

.field protected j:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

.field protected k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

.field protected l:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

.field protected m:Landroid/widget/TextView;

.field protected n:Landroid/os/Handler;

.field protected o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

.field protected p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

.field protected q:Z

.field protected r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

.field protected s:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

.field protected t:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

.field protected u:Ljava/lang/String;

.field protected v:I

.field protected w:I

.field protected x:I

.field protected y:J

.field protected z:J


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;Landroid/os/Handler;Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;)V
    .locals 2
    .param p1, "bioServiceManager"    # Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .param p2, "faceCircle"    # Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;
    .param p3, "workspaceHandler"    # Landroid/os/Handler;
    .param p4, "faceRemoteConfig"    # Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->d:Landroid/os/Handler;

    .line 49
    const-string/jumbo v0, "#44FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->g:I

    .line 50
    const/16 v0, 0xa

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->h:I

    .line 59
    new-instance v0, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    invoke-direct {v0}, Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->q:Z

    .line 68
    const-string/jumbo v0, "{\"actcnt\":0,\"vidcnt\":%1$d,\"EyeLeftOcclussion\":%2$d,\"EyeRightOcclussion\":%3$d}"

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->u:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->v:I

    .line 109
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->c:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 110
    iput-object p2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    .line 111
    iput-object p3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->n:Landroid/os/Handler;

    .line 112
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->d:Landroid/os/Handler;

    .line 113
    const-class v0, Lcom/alipay/mobile/security/faceauth/FaceService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/FaceService;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->e:Lcom/alipay/mobile/security/faceauth/FaceService;

    .line 114
    new-instance v0, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    invoke-interface {p2}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getWaveView()Lcom/alipay/biometrics/ui/widget/WaveView;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;-><init>(Lcom/alipay/biometrics/ui/widget/WaveView;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->i:Lcom/alipay/mobile/security/faceauth/circle/ui/component/WaveHelper;

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getInnerRoundProgressBar()Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->j:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getOuterRoundProgressBar()Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->k:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getOuterRoundProgressBarBak()Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->l:Lcom/alipay/biometrics/ui/widget/RoundProgressBar;

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getBottomImage()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->D:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getBottomTip()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->E:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTip()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->m:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->c:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->f:Landroid/content/Context;

    .line 122
    iput-object p4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getUpload()Lcom/alipay/mobile/security/bio/config/bean/Upload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/config/bean/Upload;->getMinquality()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->B:I

    .line 124
    const-class v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    iput-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->C:Lcom/alipay/mobile/security/faceauth/extservice/RecordExtService;

    .line 126
    return-void
.end method

.method private static a(FFFF)D
    .locals 4
    .param p0, "actual"    # F
    .param p1, "expect"    # F
    .param p2, "max"    # F
    .param p3, "min"    # F

    .prologue
    .line 198
    cmpl-float v2, p1, p2

    if-gez v2, :cond_0

    cmpg-float v2, p1, p3

    if-gtz v2, :cond_1

    .line 199
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "expect value error"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_1
    cmpl-float v2, p0, p2

    if-lez v2, :cond_3

    .line 205
    move p0, p2

    .line 211
    :cond_2
    :goto_0
    cmpl-float v2, p0, p1

    if-ltz v2, :cond_4

    .line 212
    sub-float v2, p0, p1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    float-to-double v0, v2

    .line 217
    .local v0, "result":D
    :goto_1
    return-wide v0

    .line 206
    .end local v0    # "result":D
    :cond_3
    cmpg-float v2, p0, p3

    if-gez v2, :cond_2

    .line 207
    move p0, p3

    goto :goto_0

    .line 214
    :cond_4
    sub-float v2, p0, p1

    sub-float v3, p1, p3

    div-float/2addr v2, v3

    float-to-double v0, v2

    .restart local v0    # "result":D
    goto :goto_1
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .param p0, "bkg"    # Landroid/graphics/Bitmap;

    .prologue
    const/high16 v6, 0x40c00000    # 6.0f

    .line 357
    const/4 v2, 0x0

    .line 359
    .local v2, "overlay":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    float-to-int v4, v4

    .line 360
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    float-to-int v5, v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 359
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 361
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 363
    .local v0, "canvas":Landroid/graphics/Canvas;
    const v4, 0x3e2aaaab

    const v5, 0x3e2aaaab

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 364
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 365
    .local v3, "paint":Landroid/graphics/Paint;
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFlags(I)V

    .line 366
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, p0, v4, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 368
    const/4 v4, 0x3

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/security/bio/utils/FastBlur;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 375
    .end local v0    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "paint":Landroid/graphics/Paint;
    :goto_0
    return-object v2

    .line 372
    :catch_0
    move-exception v1

    .line 373
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/security/bio/utils/BioLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected final a(FLjava/util/List;Ljava/util/List;Ljava/util/List;)F
    .locals 14
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 222
    .local p2, "group":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local p3, "normalgroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    .local p4, "originalGroup":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    const/4 v3, 0x0

    .line 226
    .local v3, "differ":F
    if-eqz p2, :cond_0

    .line 230
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1

    .line 231
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    :goto_0
    return v3

    .line 234
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1268
    const/4 v5, 0x0

    .line 1270
    if-eqz p2, :cond_3

    .line 1271
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v5

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 1272
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v5, v6

    move v6, v5

    .line 1273
    goto :goto_1

    .line 1274
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v6, v5

    .line 1283
    .local v2, "average":F
    :goto_2
    const/4 v5, 0x0

    .line 1285
    if-eqz p2, :cond_6

    .line 1287
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v6, v5

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    .line 1288
    float-to-double v8, v6

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v2

    float-to-double v10, v5

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    double-to-float v5, v8

    move v6, v5

    .line 1289
    goto :goto_3

    .line 1279
    .end local v2    # "average":F
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 1291
    .restart local v2    # "average":F
    :cond_4
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    int-to-float v5, v5

    div-float v5, v6, v5

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v4, v6

    .line 242
    .local v4, "variace":F
    :goto_4
    div-float v3, v4, v2

    .line 244
    if-eqz p4, :cond_5

    .line 245
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_5

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Group: original "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 248
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->clear()V

    .line 252
    :cond_5
    if-eqz p3, :cond_0

    .line 253
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x64

    if-lt v5, v6, :cond_0

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Group: normal"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 256
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->clear()V

    goto/16 :goto_0

    .line 1296
    .end local v4    # "variace":F
    :cond_6
    const/4 v4, 0x0

    goto :goto_4
.end method

.method protected final a(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V
    .locals 2
    .param p1, "faceFrame"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceFrameType()Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;->MINE:Lcom/alipay/mobile/security/faceauth/api/FaceFrameType;

    if-ne v0, v1, :cond_1

    .line 143
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->v:I

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->isNoVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->v:I

    goto :goto_0
.end method

.method public action(Lcom/alipay/mobile/security/bio/task/ActionFrame;)Lcom/alipay/mobile/security/bio/task/ActionType;
    .locals 1
    .param p1, "frame"    # Lcom/alipay/mobile/security/bio/task/ActionFrame;

    .prologue
    .line 138
    sget-object v0, Lcom/alipay/mobile/security/bio/task/ActionType;->RUN:Lcom/alipay/mobile/security/bio/task/ActionType;

    return-object v0
.end method

.method protected final b(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)F
    .locals 12
    .param p1, "faceFrame"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v8, 0x3ecccccd    # 0.4f

    const/4 v0, 0x0

    .line 158
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v1

    if-nez v1, :cond_1

    .line 161
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getPitchAngle()F

    move-result v2

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getYawAngle()F

    move-result v3

    .line 1168
    const v4, 0x3f333333    # 0.7f

    const v5, 0x3e99999a    # 0.3f

    invoke-static {v1, v8, v4, v5}, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->a(FFFF)D

    move-result-wide v4

    .line 1170
    const v1, 0x3f19999a    # 0.6f

    const v6, -0x40e66666    # -0.6f

    invoke-static {v3, v0, v1, v6}, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->a(FFFF)D

    move-result-wide v6

    .line 1172
    const v1, -0x41333333    # -0.4f

    invoke-static {v2, v0, v8, v1}, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->a(FFFF)D

    move-result-wide v0

    .line 1175
    iget-object v2, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v2}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getAlgorithm()Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getDisWeight()I

    move-result v2

    .line 1176
    iget-object v3, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v3}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getAlgorithm()Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getYawWeight()I

    move-result v3

    .line 1177
    iget-object v8, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->o:Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;

    invoke-virtual {v8}, Lcom/alipay/mobile/security/faceauth/circle/protocol/FaceRemoteConfig;->getAlgorithm()Lcom/alipay/mobile/security/bio/config/bean/Algorithm;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alipay/mobile/security/bio/config/bean/Algorithm;->getPitchWeight()I

    move-result v8

    .line 1179
    add-int v9, v2, v3

    add-int/2addr v9, v8

    .line 1181
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    int-to-double v10, v2

    mul-double/2addr v4, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    int-to-double v2, v3

    mul-double/2addr v2, v6

    add-double/2addr v2, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    int-to-double v4, v8

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    int-to-double v2, v9

    div-double/2addr v0, v2

    .line 1183
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    .line 161
    double-to-float v0, v0

    goto :goto_0
.end method

.method protected final c(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V
    .locals 6
    .param p1, "faceFrame"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getYuvData()[B

    move-result-object v3

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getYuvWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getYuvHeight()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/alipay/mobile/security/bio/utils/BitmapHelper;->getYUVBitmap([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 308
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getYuvAngle()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v0, v3}, Lcom/alipay/mobile/security/bio/utils/RotateBitmapHelper;->getRotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 313
    .local v1, "rotation90":Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BitmapHelper;->recycle(Landroid/graphics/Bitmap;)V

    .line 314
    if-eqz v1, :cond_0

    .line 318
    const/high16 v3, 0x43340000    # 180.0f

    invoke-static {v1, v3}, Lcom/alipay/mobile/security/bio/utils/RotateBitmapHelper;->getVerticalRotateBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 320
    .local v2, "rotationV":Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BitmapHelper;->recycle(Landroid/graphics/Bitmap;)V

    .line 321
    if-eqz v2, :cond_0

    .line 1334
    invoke-static {v2}, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1335
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1336
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->d:Landroid/os/Handler;

    if-eqz v4, :cond_0

    .line 1337
    iget-object v4, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->d:Landroid/os/Handler;

    new-instance v5, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$1;

    invoke-direct {v5, p0, v3}, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask$1;-><init>(Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "rotation90":Landroid/graphics/Bitmap;
    .end local v2    # "rotationV":Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method protected final d(Lcom/alipay/mobile/security/faceauth/api/FaceFrame;)V
    .locals 4
    .param p1, "faceFrame"    # Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 386
    if-eqz p1, :cond_0

    .line 389
    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFacePos()Landroid/graphics/RectF;

    move-result-object v0

    .line 391
    .local v0, "rectF":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    iget v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v2

    add-float/2addr v1, v2

    cmpl-float v1, v1, v3

    if-gtz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    if-nez v1, :cond_1

    .line 396
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    .line 406
    .end local v0    # "rectF":Landroid/graphics/RectF;
    :cond_0
    :goto_0
    return-void

    .line 400
    .restart local v0    # "rectF":Landroid/graphics/RectF;
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v1

    invoke-virtual {p1}, Lcom/alipay/mobile/security/faceauth/api/FaceFrame;->getFaceQuality()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 401
    iput-object p1, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    goto :goto_0
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method public done()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->b:Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;

    invoke-interface {v0}, Lcom/alipay/mobile/security/faceauth/circle/ui/component/FaceCircle;->getTitleBar()Lcom/alipay/biometrics/ui/widget/TitleBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/biometrics/ui/widget/TitleBar;->setVisibility(I)V

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getActionFrame()Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->t:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    return-object v0
.end method

.method public getBisBehavTask()Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->p:Lcom/alipay/bis/common/service/facade/gw/model/common/BisJson/BisBehavTask;

    return-object v0
.end method

.method public getPoseFrame()Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->s:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    return-object v0
.end method

.method public getQualityFrame()Lcom/alipay/mobile/security/faceauth/api/FaceFrame;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->r:Lcom/alipay/mobile/security/faceauth/api/FaceFrame;

    return-object v0
.end method

.method public getVidcnt()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->v:I

    return v0
.end method

.method public init()I
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->y:J

    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public isHasBeHaviorInfo()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/alipay/mobile/security/faceauth/circle/workspace/BaseTask;->q:Z

    return v0
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method
